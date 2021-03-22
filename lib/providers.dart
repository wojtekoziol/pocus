import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/pomodoro_timer/pomodoro_timer_notifier.dart';

final pomodoroTimerNotifier =
    StateNotifierProvider((ref) => PomodoroTimerNotifier());
