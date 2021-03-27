import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'prefs_state.freezed.dart';

@freezed
class PrefsState with _$PrefsState {
  factory PrefsState({
    required int pomodoroDuration,
    required int shortBreakDuration,
    required int longBreakDuration,
    required int intervalsNumber,
  }) = _PrefsState;
}
