import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/pomodoro_timer/state/pomodoro_timer_state.dart';
import 'package:pocus/models/settings/state/settings_state.dart';

class PomodoroTimerNotifier extends StateNotifier<PomodoroTimerState> {
  PomodoroTimerNotifier()
      : super(PomodoroTimerState.pomodoro(
          secondsLeft: 25 * 60,
          secondsInitial: 25 * 60,
          currentInterval: 1,
          isRunning: false,
        ));

  Timer? _timer;

  int _pomodoroDuration = 25;
  int _shortBreakDuration = 5;
  int _longBreakDuration = 15;
  int _intervalsNumber = 4;

  void start() {
    state = state.copyWith(isRunning: true);
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (state.secondsLeft - 1 < 0) {
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
    _timer?.cancel();
    state.when(
      pomodoro: (secondsLeft, secondsInitial, currentInterval, isRunning) {
        if (currentInterval >= _intervalsNumber) {
          state = PomodoroTimerState.longBreak(
            secondsLeft: _longBreakDuration * 60,
            secondsInitial: _longBreakDuration * 60,
            isRunning: false,
          );
          return;
        }
        state = PomodoroTimerState.shortBreak(
          secondsLeft: _shortBreakDuration * 60,
          secondsInitial: _shortBreakDuration * 60,
          isRunning: false,
          nextInterval: currentInterval + 1,
        );
      },
      shortBreak: (secondsLeft, secondsInitial, isRunning, nextInterval) {
        state = PomodoroTimerState.pomodoro(
          secondsLeft: _pomodoroDuration * 60,
          secondsInitial: _pomodoroDuration * 60,
          currentInterval: nextInterval,
          isRunning: false,
        );
      },
      longBreak: (secondsLeft, secondsInitial, isRunning) {
        state = PomodoroTimerState.pomodoro(
          secondsLeft: _pomodoroDuration * 60,
          secondsInitial: _pomodoroDuration * 60,
          currentInterval: 1,
          isRunning: false,
        );
      },
    );
  }

  void pause() {
    _timer?.cancel();
    state = state.copyWith(isRunning: false);
  }

  void reset() {
    _timer?.cancel();
    state = PomodoroTimerState.pomodoro(
      secondsLeft: _pomodoroDuration * 60,
      secondsInitial: _pomodoroDuration * 60,
      currentInterval: 1,
      isRunning: false,
    );
  }

  void updateFields({required SettingsState settings}) {
    _pomodoroDuration = settings.pomodoroDuration;
    _shortBreakDuration = settings.shortBreakDuration;
    _longBreakDuration = settings.longBreakDuration;
    _intervalsNumber = settings.intervalsNumber;

    if (!state.isRunning && state.secondsLeft == state.secondsInitial) {
      WidgetsBinding.instance!.addPostFrameCallback(
        (timeStamp) {
          state.when(pomodoro:
              (secondsLeft, secondsInitial, currentInterval, isRunning) {
            state = state.copyWith(
              secondsLeft: _pomodoroDuration * 60,
              secondsInitial: _pomodoroDuration * 60,
            );
          }, shortBreak:
              (secondsLeft, secondsInitial, isRunning, nextInterval) {
            state = state.copyWith(
              secondsLeft: _shortBreakDuration * 60,
              secondsInitial: _shortBreakDuration * 60,
            );
          }, longBreak: (secondsLeft, secondsInitial, isRunning) {
            state = state.copyWith(
              secondsLeft: _longBreakDuration * 60,
              secondsInitial: _longBreakDuration * 60,
            );
          });
        },
      );
    }
  }
}
