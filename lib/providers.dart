import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/pomodoro_timer/pomodoro_timer_notifier.dart';
import 'package:pocus/models/settings/settings_notifier.dart';
import 'package:pocus/models/stats/stats_minutes_notifier.dart';
import 'package:pocus/models/stats/stats_opens_notifier.dart';

final pomodoroTimerNotifierProvider =
    StateNotifierProvider((ref) => PomodoroTimerNotifier());

final settingsNotifierProvider =
    StateNotifierProvider((ref) => SettingsNotifier()..getSettings());

final statsMinutesNotifierProvider =
    StateNotifierProvider((ref) => StatsMinutesNotifier()..getStats());

final statsOpensNotifierProvider =
    StateNotifierProvider((ref) => StatsOpensNotifier()..getStats());
