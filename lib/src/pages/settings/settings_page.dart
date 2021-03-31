import 'package:flutter/material.dart';
import 'package:pocus/src/pages/settings/widgets/intervals_number_setting.dart';
import 'package:pocus/src/pages/settings/widgets/long_break_duration_setting.dart';
import 'package:pocus/src/pages/settings/widgets/pomodoro_timer_duration_setting.dart';
import 'package:pocus/src/pages/settings/widgets/short_break_duration_setting.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        brightness: Brightness.dark,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            PomodoroTimerDurationSetting(),
            SizedBox(height: 50),
            ShortBreakDurationSetting(),
            SizedBox(height: 50),
            LongBreakDurationSetting(),
            SizedBox(height: 50),
            IntervalsNumberSetting(),
          ],
        ),
      ),
    );
  }
}
