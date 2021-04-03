import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'prefs_keys.freezed.dart';

@freezed
class PrefsKeys with _$PrefsKeys {
  factory PrefsKeys._() = _PrefsKeys;
  static String pomodoroTimerState = 'pomodorotimerstate';
  static String pomodoroDuration = 'pomodoroduration';
  static String shortBreakDuration = 'shortbreakduration';
  static String longBreakDuration = 'longbreakduration';
  static String intervalsNumber = 'intervalsnumber';
  static String statsMinutesState = 'statsminutesstate';
  static String statsOpensState = 'statsopensstate';
}
