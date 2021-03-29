import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/navigation/navigation_page.dart';
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
    useEffect(() {
      final pomodoroTimerNotifier = context.read(pomodoroTimerNotifierProvider);
      final prefsState = context.read(prefsNotifierProvider.state);
      pomodoroTimerNotifier.updateFields(prefs: prefsState);
    }, [useProvider(prefsNotifierProvider.state)]);

    return MaterialApp(
      title: 'Pocus',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: NavigationPage(),
    );
  }
}
