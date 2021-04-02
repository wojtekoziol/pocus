import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stats_state.freezed.dart';
part 'stats_state.g.dart';

@freezed
class StatsState with _$StatsState {
  factory StatsState({
    required int monday,
    required int tuesday,
    required int wednesday,
    required int thursday,
    required int friday,
    required int saturday,
    required int sunday,
    required DateTime lastUpdated,
  }) = _StatsState;

  factory StatsState.fromJson(Map<String, dynamic> json) =>
      _$StatsStateFromJson(json);
}
