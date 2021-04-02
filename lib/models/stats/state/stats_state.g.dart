// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatsState _$_$_StatsStateFromJson(Map<String, dynamic> json) {
  return _$_StatsState(
    monday: json['monday'] as int,
    tuesday: json['tuesday'] as int,
    wednesday: json['wednesday'] as int,
    thursday: json['thursday'] as int,
    friday: json['friday'] as int,
    saturday: json['saturday'] as int,
    sunday: json['sunday'] as int,
    lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  );
}

Map<String, dynamic> _$_$_StatsStateToJson(_$_StatsState instance) =>
    <String, dynamic>{
      'monday': instance.monday,
      'tuesday': instance.tuesday,
      'wednesday': instance.wednesday,
      'thursday': instance.thursday,
      'friday': instance.friday,
      'saturday': instance.saturday,
      'sunday': instance.sunday,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };
