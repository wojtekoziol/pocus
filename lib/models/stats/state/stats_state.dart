import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stats_state.freezed.dart';
part 'stats_state.g.dart';

@freezed
class StatsState with _$StatsState {
  factory StatsState({
    required List<int> stats,
  }) = _StatsState;

  factory StatsState.fromJson(Map<String, dynamic> json) =>
      _$StatsStateFromJson(json);
}
