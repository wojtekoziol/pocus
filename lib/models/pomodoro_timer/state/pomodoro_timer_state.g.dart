// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_timer_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PomodoroTimerState _$_$_PomodoroTimerStateFromJson(
    Map<String, dynamic> json) {
  return _$_PomodoroTimerState(
    secondsLeft: json['secondsLeft'] as int,
    isRunning: json['isRunning'] as bool,
    isBreak: json['isBreak'] as bool,
  );
}

Map<String, dynamic> _$_$_PomodoroTimerStateToJson(
        _$_PomodoroTimerState instance) =>
    <String, dynamic>{
      'secondsLeft': instance.secondsLeft,
      'isRunning': instance.isRunning,
      'isBreak': instance.isBreak,
    };
