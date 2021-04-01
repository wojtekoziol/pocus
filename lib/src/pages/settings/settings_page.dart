import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/settings/models/radio_slider_option/radio_slider_option.dart';
import 'package:pocus/src/pages/settings/widgets/default_settings_button.dart';
import 'package:pocus/src/pages/settings/widgets/radio_slider.dart';

class SettingsPage extends HookWidget {
  final _pomodoroTimerOptions = [25, 30, 45];
  final _shortBreakOptions = [2, 5, 10];
  final _longBreakOptions = [10, 15, 20];
  final _intervalsNumberOptions = [2, 4, 6];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final prefsNotifier = context.read(prefsNotifierProvider);
    final prefsState = context.read(prefsNotifierProvider.state);

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
            RadioSlider(
              label: 'Pomodoro timer duration',
              initialIndex:
                  _pomodoroTimerOptions.indexOf(prefsState.pomodoroDuration),
              children: [
                ..._pomodoroTimerOptions.map((option) {
                  return RadioSliderOption(
                    value: '$option min',
                    onPressed: () {
                      prefsNotifier.updatePrefs(prefsState.copyWith(
                        pomodoroDuration: option,
                      ));
                    },
                  );
                }),
              ],
            ),
            SizedBox(height: 50),
            RadioSlider(
              label: 'Short break duration',
              initialIndex:
                  _shortBreakOptions.indexOf(prefsState.shortBreakDuration),
              children: [
                ..._shortBreakOptions.map((option) {
                  return RadioSliderOption(
                    value: '$option min',
                    onPressed: () {
                      prefsNotifier.updatePrefs(prefsState.copyWith(
                        shortBreakDuration: option,
                      ));
                    },
                  );
                }),
              ],
            ),
            SizedBox(height: 50),
            RadioSlider(
              label: 'Long break duration',
              initialIndex:
                  _longBreakOptions.indexOf(prefsState.longBreakDuration),
              children: [
                ..._longBreakOptions.map((option) {
                  return RadioSliderOption(
                    value: '$option min',
                    onPressed: () {
                      prefsNotifier.updatePrefs(prefsState.copyWith(
                        longBreakDuration: option,
                      ));
                    },
                  );
                }),
              ],
            ),
            SizedBox(height: 50),
            RadioSlider(
              label: 'Pomodoro intervals number',
              initialIndex:
                  _intervalsNumberOptions.indexOf(prefsState.intervalsNumber),
              children: [
                ..._intervalsNumberOptions.map((option) {
                  return RadioSliderOption(
                    value: '$option',
                    onPressed: () {
                      prefsNotifier.updatePrefs(prefsState.copyWith(
                        intervalsNumber: option,
                      ));
                    },
                  );
                }),
              ],
            ),
            SizedBox(height: 50),
            DefaultSettingsButton(),
          ],
        ),
      ),
    );
  }
}
