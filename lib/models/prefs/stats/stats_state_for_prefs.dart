import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stats_state_for_prefs.freezed.dart';
part 'stats_state_for_prefs.g.dart';

@freezed
class StatsState with _$StatsState {
  factory StatsState({
    required StatsState state,
    required DateTime savedDate,
  }) = _StatsState;

  factory StatsState.fromJson(Map<String, dynamic> json) =>
      _$StatsStateFromJson(json);
}
