// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatsState _$_$_StatsStateFromJson(Map<String, dynamic> json) {
  return _$_StatsState(
    stats: (json['stats'] as List<dynamic>).map((e) => e as int).toList(),
    lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  );
}

Map<String, dynamic> _$_$_StatsStateToJson(_$_StatsState instance) =>
    <String, dynamic>{
      'stats': instance.stats,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };
