// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state_for_prefs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$_$_SettingsStateFromJson(Map<String, dynamic> json) {
  return _$_SettingsState(
    state: SettingsState.fromJson(json['state'] as Map<String, dynamic>),
    savedDate: DateTime.parse(json['savedDate'] as String),
  );
}

Map<String, dynamic> _$_$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'state': instance.state,
      'savedDate': instance.savedDate.toIso8601String(),
    };
