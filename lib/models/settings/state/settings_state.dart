import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  factory SettingsState({
    required int pomodoroDuration,
    required int shortBreakDuration,
    required int longBreakDuration,
    required int intervalsNumber,
  }) = _SettingsState;
}
