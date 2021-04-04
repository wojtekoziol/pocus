import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/navigation/navigation_page.dart';
import 'package:pocus/utils/hooks/lifecycle_observer.dart';
import 'package:pocus/utils/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(ProviderScope(
    child: MyApp(),
  ));
  ;
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useLifecycleObserver(
      onPaused: () {
        if (context.read(pomodoroTimerNotifierProvider.state).isRunning) {
          context.read(pomodoroTimerNotifierProvider).saveState();
        }
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
      pomodoroTimerState.maybeWhen(
        pomodoro: (secondsLeft, secondsInitial, currentInterval, isRunning) {
          if (secondsLeft % 60 == 0 &&
              isRunning &&
              secondsLeft != secondsInitial) {
            context.read(statsMinutesNotifierProvider).insert();
          }
        },
        orElse: () {},
      );
    }, [useProvider(pomodoroTimerNotifierProvider.state)]);

    return MaterialApp(
      title: 'Pocus',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: NavigationPage(),
    );
  }
}
