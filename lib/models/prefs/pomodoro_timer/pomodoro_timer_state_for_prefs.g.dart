// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_timer_state_for_prefs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PomodoroTimerStateForPrefs _$_$_PomodoroTimerStateForPrefsFromJson(
    Map<String, dynamic> json) {
  return _$_PomodoroTimerStateForPrefs(
    stateJsonString: json['stateJsonString'] as String,
    savedDate: DateTime.parse(json['savedDate'] as String),
  );
}

Map<String, dynamic> _$_$_PomodoroTimerStateForPrefsToJson(
        _$_PomodoroTimerStateForPrefs instance) =>
    <String, dynamic>{
      'stateJsonString': instance.stateJsonString,
      'savedDate': instance.savedDate.toIso8601String(),
    };
