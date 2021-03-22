import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/src/pages/navigation/navigation_page.dart';
import 'package:pocus/utils/theme/app_theme.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocus',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: NavigationPage(),
    );
  }
}
