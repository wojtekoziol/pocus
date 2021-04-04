import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/navigation/navigation_page.dart';
import 'package:pocus/utils/hooks/lifecycle_observer.dart';
import 'package:pocus/utils/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useLifecycleObserver(
      onPaused: () {
        context.read(pomodoroTimerNotifierProvider).saveState();
      },
      onResumed: () {
        context.read(pomodoroTimerNotifierProvider).getState();
        context.read(statsOpensNotifierProvider).insert();
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
      if (pomodoroTimerState.secondsLeft % 60 == 0 &&
          pomodoroTimerState.isRunning &&
          pomodoroTimerState.secondsLeft != pomodoroTimerState.secondsInitial) {
        context.read(statsMinutesNotifierProvider).insert();
      }
    }, [useProvider(pomodoroTimerNotifierProvider.state)]);

    return MaterialApp(
      title: 'Pocus',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: NavigationPage(),
    );
  }
}
