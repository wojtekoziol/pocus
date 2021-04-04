// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_state_for_prefs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatsStateForPrefs _$_$_StatsStateForPrefsFromJson(
    Map<String, dynamic> json) {
  return _$_StatsStateForPrefs(
    stateJsonString: json['stateJsonString'] as String,
    savedDate: DateTime.parse(json['savedDate'] as String),
  );
}

Map<String, dynamic> _$_$_StatsStateForPrefsToJson(
        _$_StatsStateForPrefs instance) =>
    <String, dynamic>{
      'stateJsonString': instance.stateJsonString,
      'savedDate': instance.savedDate.toIso8601String(),
    };
