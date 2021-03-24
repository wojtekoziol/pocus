// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_timer_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Pomodoro _$_$PomodoroFromJson(Map<String, dynamic> json) {
  return _$Pomodoro(
    secondsLeft: json['secondsLeft'] as int,
    secondsInitial: json['secondsInitial'] as int,
    currentInterval: json['currentInterval'] as int,
    isRunning: json['isRunning'] as bool,
  );
}

Map<String, dynamic> _$_$PomodoroToJson(_$Pomodoro instance) =>
    <String, dynamic>{
      'secondsLeft': instance.secondsLeft,
      'secondsInitial': instance.secondsInitial,
      'currentInterval': instance.currentInterval,
      'isRunning': instance.isRunning,
    };

_$ShortBreak _$_$ShortBreakFromJson(Map<String, dynamic> json) {
  return _$ShortBreak(
    secondsLeft: json['secondsLeft'] as int,
    secondsInitial: json['secondsInitial'] as int,
    isRunning: json['isRunning'] as bool,
    nextInterval: json['nextInterval'] as int,
  );
}

Map<String, dynamic> _$_$ShortBreakToJson(_$ShortBreak instance) =>
    <String, dynamic>{
      'secondsLeft': instance.secondsLeft,
      'secondsInitial': instance.secondsInitial,
      'isRunning': instance.isRunning,
      'nextInterval': instance.nextInterval,
    };

_$LongBreak _$_$LongBreakFromJson(Map<String, dynamic> json) {
  return _$LongBreak(
    secondsLeft: json['secondsLeft'] as int,
    secondsInitial: json['secondsInitial'] as int,
    isRunning: json['isRunning'] as bool,
  );
}

Map<String, dynamic> _$_$LongBreakToJson(_$LongBreak instance) =>
    <String, dynamic>{
      'secondsLeft': instance.secondsLeft,
      'secondsInitial': instance.secondsInitial,
      'isRunning': instance.isRunning,
    };
