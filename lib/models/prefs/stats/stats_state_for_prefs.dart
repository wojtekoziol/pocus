import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stats_state_for_prefs.freezed.dart';
part 'stats_state_for_prefs.g.dart';

@freezed
class StatsStateForPrefs with _$StatsStateForPrefs {
  factory StatsStateForPrefs({
    required String stateJsonString,
    required DateTime savedDate,
  }) = _StatsStateForPrefs;

  factory StatsStateForPrefs.fromJson(Map<String, dynamic> json) =>
      _$StatsStateForPrefsFromJson(json);
}
