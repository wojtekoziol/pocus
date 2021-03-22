import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/pomodoro_timer/state/pomodoro_timer_state.dart';

class PomodoroTimerNotifier extends StateNotifier<PomodoroTimerState> {
  PomodoroTimerNotifier()
      : super(PomodoroTimerState(
          secondsLeft: 25 * 60,
          isRunning: false,
          isBreak: false,
        ));

  Timer? _timer;

  int _defaultPomodoroDuration = 25;
  int _defaultShortBreakDuration = 5;

  double get percent {
    if (!state.isRunning) return 0;

    if (state.isBreak) {
      return state.secondsLeft / (_defaultShortBreakDuration * 60);
    }

    return state.secondsLeft / (_defaultPomodoroDuration * 60);
  }

  void start() {
    if (state.secondsLeft == 0 && state.isBreak) {
      state = state.copyWith(
        secondsLeft: _defaultShortBreakDuration * 60,
        isRunning: true,
      );
    } else if (state.secondsLeft == 0 && !state.isBreak) {
      state = state.copyWith(
        secondsLeft: _defaultPomodoroDuration * 60,
        isRunning: true,
      );
    } else {
      state = state.copyWith(
        isRunning: true,
      );
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (state.secondsLeft - 1 < 0) {
        timer.cancel();
        state = PomodoroTimerState(
          secondsLeft: 0,
          isRunning: false,
          isBreak: !state.isBreak,
        );
        return;
      }
      state = state.copyWith(
        secondsLeft: state.secondsLeft - 1,
      );
    });
  }

  void pause() {
    _timer?.cancel();
    state = state.copyWith(
      isRunning: false,
    );
  }

  void reset() {
    _timer?.cancel();
    state = PomodoroTimerState(
      secondsLeft: _defaultPomodoroDuration * 60,
      isRunning: false,
      isBreak: false,
    );
  }

  void updateFields({
    required int defaultPomodoroDuration,
    required int defaultShortBreakDuration,
  }) {
    _defaultPomodoroDuration = defaultPomodoroDuration;
    _defaultShortBreakDuration = defaultShortBreakDuration;
    if (!state.isRunning) {
      state = PomodoroTimerState(
        secondsLeft: _defaultPomodoroDuration * 60,
        isRunning: false,
        isBreak: false,
      );
    }
  }
}
