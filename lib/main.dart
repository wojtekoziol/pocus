import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pocus/src/pages/navigation/navigation_page.dart';
import 'package:pocus/utils/hooks/listeners.dart';
import 'package:pocus/utils/app_theme.dart';
import 'package:pocus/utils/translations/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: [
      Locale('en'),
      Locale('pl'),
    ],
    path: 'assets/translations',
    fallbackLocale: Locale('en'),
    assetLoader: CodegenLoader(),
    child: ProviderScope(
      child: MyApp(),
    ),
  ));
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useListeners(context);

    return MaterialApp(
      title: 'Pocus',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      themeMode: ThemeMode.system,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: NavigationPage(),
    );
  }
}
