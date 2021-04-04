// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_state_for_prefs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatsState _$_$_StatsStateFromJson(Map<String, dynamic> json) {
  return _$_StatsState(
    state: StatsState.fromJson(json['state'] as Map<String, dynamic>),
    savedDate: DateTime.parse(json['savedDate'] as String),
  );
}

Map<String, dynamic> _$_$_StatsStateToJson(_$_StatsState instance) =>
    <String, dynamic>{
      'state': instance.state,
      'savedDate': instance.savedDate.toIso8601String(),
    };
