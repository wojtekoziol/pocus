import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pocus/models/pomodoro_timer/state/pomodoro_timer_state.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/utils/hooks/lifecycle_observer.dart';

void useListeners(BuildContext context) {
  useLifecycleObserver(
    onPaused: () {
      if (context.read(pomodoroTimerNotifierProvider.state).isRunning) {
        context.read(pomodoroTimerNotifierProvider).saveState();
      }
    },
    onResumed: () async {
      final minutesFocused =
          await context.read(pomodoroTimerNotifierProvider).getState();
      await context.read(statsMinutesNotifierProvider).insert(minutesFocused);
      await context.read(statsOpensNotifierProvider).insert();
    },
  );

  useEffect(() {
    final pomodoroTimerNotifier = context.read(pomodoroTimerNotifierProvider);
    final settingsState = context.read(settingsNotifierProvider.state);
    pomodoroTimerNotifier.updateFields(settings: settingsState);
  }, [useProvider(settingsNotifierProvider.state)]);

  useEffect(() {
    final pomodoroTimerState =
        context.read(pomodoroTimerNotifierProvider.state);
    if (pomodoroTimerState is Pomodoro &&
        pomodoroTimerState.secondsLeft % 60 == 0 &&
        pomodoroTimerState.isRunning &&
        pomodoroTimerState.secondsLeft != pomodoroTimerState.secondsInitial) {
      context.read(statsMinutesNotifierProvider).insert(1);
    }
  }, [useProvider(pomodoroTimerNotifierProvider.state)]);
}
