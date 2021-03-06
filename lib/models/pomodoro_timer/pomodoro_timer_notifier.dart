import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/pomodoro_timer/state/pomodoro_timer_state.dart';
import 'package:pocus/models/prefs/pomodoro_timer/pomodoro_timer_state_for_prefs.dart';
import 'package:pocus/models/settings/state/settings_state.dart';
import 'package:pocus/utils/notifications.dart';
import 'package:pocus/utils/player/player.dart';
import 'package:pocus/utils/player/track_type.dart';
import 'package:pocus/utils/prefs_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pocus/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class PomodoroTimerNotifier extends StateNotifier<PomodoroTimerState> {
  PomodoroTimerNotifier()
      : super(PomodoroTimerState.pomodoro(
          secondsLeft: 25 * 60,
          secondsInitial: 25 * 60,
          currentInterval: 1,
          isRunning: false,
          quoteId: 1,
        ));

  int _pomodoroDuration = 25;
  int _shortBreakDuration = 5;
  int _longBreakDuration = 15;
  int _intervalsNumber = 4;

  void start({bool notification = true}) {
    if (notification) {
      Notifications.schedule(
        duration: Duration(seconds: state.secondsLeft),
        title: state is Pomodoro
            ? tr(LocaleKeys.notification_title_break)
            : tr(LocaleKeys.notification_title_pomodoro),
        body: tr(LocaleKeys.notification_body),
      );
    }
    state = state.copyWith(isRunning: true);
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (!state.isRunning) {
          timer.cancel();
          return;
        }
        if (state.secondsLeft - 1 < 0) {
          Player.play(state is Pomodoro
              ? TrackType.breakTrack
              : TrackType.pomodoroTrack);
          skip();
          return;
        }
        state = state.copyWith(
          secondsLeft: state.secondsLeft - 1,
        );
      },
    );
  }

  void skip() {
    Notifications.cancelAll();
    state.when(
      pomodoro:
          (secondsLeft, secondsInitial, currentInterval, isRunning, quote) {
        if (currentInterval >= _intervalsNumber) {
          state = PomodoroTimerState.longBreak(
            secondsLeft: _longBreakDuration * 60,
            secondsInitial: _longBreakDuration * 60,
            isRunning: false,
            quoteId: Random().nextInt(3) + 1,
          );
          return;
        }
        state = PomodoroTimerState.shortBreak(
          secondsLeft: _shortBreakDuration * 60,
          secondsInitial: _shortBreakDuration * 60,
          isRunning: false,
          nextInterval: currentInterval + 1,
          quoteId: Random().nextInt(3) + 1,
        );
      },
      shortBreak:
          (secondsLeft, secondsInitial, isRunning, nextInterval, quote) {
        state = PomodoroTimerState.pomodoro(
          secondsLeft: _pomodoroDuration * 60,
          secondsInitial: _pomodoroDuration * 60,
          currentInterval: nextInterval,
          isRunning: false,
          quoteId: Random().nextInt(3) + 1,
        );
      },
      longBreak: (secondsLeft, secondsInitial, isRunning, quote) {
        state = PomodoroTimerState.pomodoro(
          secondsLeft: _pomodoroDuration * 60,
          secondsInitial: _pomodoroDuration * 60,
          currentInterval: 1,
          isRunning: false,
          quoteId: Random().nextInt(3) + 1,
        );
      },
    );
  }

  void pause() {
    Notifications.cancelAll();
    state = state.copyWith(isRunning: false);
  }

  void reset() {
    Notifications.cancelAll();
    state = PomodoroTimerState.pomodoro(
      secondsLeft: _pomodoroDuration * 60,
      secondsInitial: _pomodoroDuration * 60,
      currentInterval: 1,
      isRunning: false,
      quoteId: Random().nextInt(3) + 1,
    );
  }

  void updateFields({required SettingsState settings}) {
    _pomodoroDuration = settings.pomodoroDuration;
    _shortBreakDuration = settings.shortBreakDuration;
    _longBreakDuration = settings.longBreakDuration;
    _intervalsNumber = settings.intervalsNumber;

    if (!state.isRunning && state.secondsLeft == state.secondsInitial) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        state.when(pomodoro:
            (secondsLeft, secondsInitial, currentInterval, isRunning, quoteId) {
          state = state.copyWith(
            secondsLeft: _pomodoroDuration * 60,
            secondsInitial: _pomodoroDuration * 60,
          );
        }, shortBreak:
            (secondsLeft, secondsInitial, isRunning, nextInterval, quoteId) {
          state = state.copyWith(
            secondsLeft: _shortBreakDuration * 60,
            secondsInitial: _shortBreakDuration * 60,
          );
        }, longBreak: (secondsLeft, secondsInitial, isRunning, quoteId) {
          state = state.copyWith(
            secondsLeft: _longBreakDuration * 60,
            secondsInitial: _longBreakDuration * 60,
          );
        });
      });
    }
  }

  Future<void> saveState() async {
    await SharedPreferences.getInstance().then((prefs) {
      prefs.setString(
        PrefsKeys.pomodoroTimerState,
        jsonEncode(PomodoroTimerStateForPrefs(
                stateJsonString: jsonEncode(state.toJson()),
                savedDate: DateTime.now())
            .toJson()),
      );
    });
  }

  Future<int> getState() async {
    await SharedPreferences.getInstance().then((prefs) {
      final pomodoroTimeStateForPrefsString =
          prefs.getString(PrefsKeys.pomodoroTimerState);
      prefs.remove(PrefsKeys.pomodoroTimerState);

      if (pomodoroTimeStateForPrefsString == null) return 0;

      final pomodoroTimerStateForPrefs = PomodoroTimerStateForPrefs.fromJson(
          jsonDecode(pomodoroTimeStateForPrefsString));

      final pomodoroTimerState = PomodoroTimerState.fromJson(
          jsonDecode(pomodoroTimerStateForPrefs.stateJsonString));

      final difference =
          DateTime.now().difference(pomodoroTimerStateForPrefs.savedDate);
      final secondsLeft = difference.inSeconds > pomodoroTimerState.secondsLeft
          ? 0
          : pomodoroTimerState.secondsLeft - difference.inSeconds;

      state = pomodoroTimerState.copyWith(
        secondsLeft: secondsLeft,
      );
      start(notification: false);

      return difference.inMinutes;
    });
    return 0;
  }
}
