import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/pomodoro_timer/pomodoro_timer_notifier.dart';

final pomodoroTimerNotifierProvider =
    StateNotifierProvider((ref) => PomodoroTimerNotifier());

final pageControllerProvider =
    ScopedProvider<PageController>((ref) => throw UnimplementedError());

final currentIndexProvider = ChangeNotifierProvider((ref) => ValueNotifier(0));
