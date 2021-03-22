import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pomodoro_timer_state.freezed.dart';
part 'pomodoro_timer_state.g.dart';

@freezed
class PomodoroTimerState with _$PomodoroTimerState {
  factory PomodoroTimerState({
    required int secondsLeft,
    required bool isRunning,
    required bool isBreak,
  }) = _PomodoroTimerState;

  factory PomodoroTimerState.fromJson(Map<String, dynamic> json) =>
      _$PomodoroTimerStateFromJson(json);
}
