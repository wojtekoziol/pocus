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

  int _pomodoroDuration = 25;
  int _shortBreakDuration = 5;

  double get percent {
    if (!state.isRunning) return 0;

    if (state.isBreak) return state.secondsLeft / (_shortBreakDuration * 60);

    return state.secondsLeft / (_pomodoroDuration * 60);
  }

  void start() {
    state = state.copyWith(
      isRunning: true,
    );
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (state.secondsLeft == 0) {
        skip();
        return;
      }
      state = state.copyWith(
        secondsLeft: state.secondsLeft - 1,
      );
    });
  }

  void skip() {
    _timer?.cancel();
    state = PomodoroTimerState(
      secondsLeft:
          (!state.isBreak ? _shortBreakDuration : _pomodoroDuration) * 60,
      isRunning: false,
      isBreak: !state.isBreak,
    );
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
      secondsLeft: _pomodoroDuration * 60,
      isRunning: false,
      isBreak: false,
    );
  }

  void updateFields({
    required int pomodoroDuration,
    required int shortBreakDuration,
  }) {
    final isInInitialState = state.secondsLeft ==
        (state.isBreak ? _shortBreakDuration : _pomodoroDuration) * 60;
    if (isInInitialState && !state.isRunning) {
      state = state.copyWith(
        secondsLeft:
            (state.isBreak ? shortBreakDuration : pomodoroDuration) * 60,
      );
    }
    _pomodoroDuration = pomodoroDuration;
    _shortBreakDuration = shortBreakDuration;
  }
}
