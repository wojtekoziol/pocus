import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pocus/models/pomodoro_timer/state/pomodoro_timer_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pomodoro_timer_state_for_prefs.freezed.dart';
part 'pomodoro_timer_state_for_prefs.g.dart';

@freezed
class PomodoroTimerStateForPrefs with _$PomodoroTimerStateForPrefs {
  factory PomodoroTimerStateForPrefs({
    required PomodoroTimerState state,
    required DateTime savedDate,
  }) = _PomodoroTimerStateForPrefs;

  factory PomodoroTimerStateForPrefs.fromJson(Map<String, dynamic> json) =>
      _$PomodoroTimerStateForPrefsFromJson(json);
}
