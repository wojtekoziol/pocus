// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$_$_SettingsStateFromJson(Map<String, dynamic> json) {
  return _$_SettingsState(
    pomodoroDuration: json['pomodoroDuration'] as int,
    shortBreakDuration: json['shortBreakDuration'] as int,
    longBreakDuration: json['longBreakDuration'] as int,
    intervalsNumber: json['intervalsNumber'] as int,
  );
}

Map<String, dynamic> _$_$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'pomodoroDuration': instance.pomodoroDuration,
      'shortBreakDuration': instance.shortBreakDuration,
      'longBreakDuration': instance.longBreakDuration,
      'intervalsNumber': instance.intervalsNumber,
    };
