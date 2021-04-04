import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'settings_state_for_prefs.freezed.dart';
part 'settings_state_for_prefs.g.dart';

@freezed
class SettingsState with _$SettingsState {
  factory SettingsState({
    required SettingsState state,
    required DateTime savedDate,
  }) = _SettingsState;

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
}
