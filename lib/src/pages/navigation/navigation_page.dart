import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/navigation/widgets/bottom_nav_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/src/pages/pomodoro_timer/pomodoro_timer_page.dart';
import 'package:pocus/src/pages/settings/settings_page.dart';
import 'package:pocus/src/pages/stats/stats_page.dart';
import 'package:unicons/unicons.dart';

class NavigationPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Pocus'),
        leading: Padding(
          padding: EdgeInsets.all(16),
          child: Placeholder(),
        ),
        actions: [
          OpenContainer(
            closedColor: Colors.transparent,
            closedElevation: 0,
            closedBuilder: (context, action) {
              return Container(
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Icon(UniconsLine.setting),
                ),
              );
            },
            openElevation: 0,
            openBuilder: (context, action) => SettingsPage(),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          PomodoroTimerPage(),
          StatsPage(),
        ],
      ),
      bottomNavigationBar: ProviderScope(
        overrides: [
          pageControllerProvider.overrideWithValue(pageController),
        ],
        child: BottomNavBar(),
      ),
    );
  }
}
