import 'package:flutter/material.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/navigation/widgets/bottom_nav_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/src/pages/pomodoro_timer/pomodoro_timer_page.dart';
import 'package:pocus/src/pages/stats/stats_page.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pocus'),
        leading: Padding(
          padding: EdgeInsets.all(16),
          child: Placeholder(),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  Icons.settings,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: context.read(currentIndexNotifierProvider),
        builder: (_, index, __) {
          if (index == 1) return StatsPage();

          return PomodoroTimerPage();
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
