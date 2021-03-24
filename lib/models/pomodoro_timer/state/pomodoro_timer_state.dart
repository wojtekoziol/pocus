import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pomodoro_timer_state.freezed.dart';
part 'pomodoro_timer_state.g.dart';

@freezed
class PomodoroTimerState with _$PomodoroTimerState {
  factory PomodoroTimerState.pomodoro({
    required int secondsLeft,
    required int secondsInitial,
    required int currentInterval,
    required bool isRunning,
  }) = Pomodoro;
  factory PomodoroTimerState.shortBreak({
    required int secondsLeft,
    required int secondsInitial,
    required bool isRunning,
    required int nextInterval,
  }) = ShortBreak;
  factory PomodoroTimerState.longBreak({
    required int secondsLeft,
    required int secondsInitial,
    required bool isRunning,
  }) = LongBreak;

  factory PomodoroTimerState.fromJson(Map<String, dynamic> json) =>
      _$PomodoroTimerStateFromJson(json);
}
