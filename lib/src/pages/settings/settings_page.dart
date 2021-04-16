import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/settings/widgets/default_settings_button.dart';
import 'package:pocus/src/pages/settings/widgets/radio_settings.dart';

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
        leading: GestureDetector(
          onTap: () {
            HapticFeedback.mediumImpact();
            Navigator.of(context).pop();
          },
          child: Container(
            color: Colors.transparent,
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Consumer(
              builder: (context, watch, child) {
                final settingsState = watch(settingsNotifierProvider.state);
                final settings = [25, 30, 45, 60];

                return RadioSettings(
                  onPressed: (index) {
                    context
                        .read(settingsNotifierProvider)
                        .saveSettings(settingsState.copyWith(
                          pomodoroDuration: settings[index],
                        ));
                  },
                  title: 'Pomodoro timer duration',
                  settings: settings,
                  optionUnit: 'min',
                  currentSetting: settingsState.pomodoroDuration,
                );
              },
            ),
            SizedBox(height: 50),
            Consumer(
              builder: (context, watch, child) {
                final settingsState = watch(settingsNotifierProvider.state);
                final settings = [2, 3, 5, 10];

                return RadioSettings(
                  onPressed: (index) {
                    context
                        .read(settingsNotifierProvider)
                        .saveSettings(settingsState.copyWith(
                          shortBreakDuration: settings[index],
                        ));
                  },
                  title: 'Short break duration',
                  settings: settings,
                  optionUnit: 'min',
                  currentSetting: settingsState.shortBreakDuration,
                );
              },
            ),
            SizedBox(height: 50),
            Consumer(
              builder: (context, watch, child) {
                final settingsState = watch(settingsNotifierProvider.state);
                final settings = [10, 15, 20, 30];

                return RadioSettings(
                  onPressed: (index) {
                    context
                        .read(settingsNotifierProvider)
                        .saveSettings(settingsState.copyWith(
                          longBreakDuration: settings[index],
                        ));
                  },
                  title: 'Long break duration',
                  settings: settings,
                  optionUnit: 'min',
                  currentSetting: settingsState.longBreakDuration,
                );
              },
            ),
            SizedBox(height: 50),
            Consumer(
              builder: (context, watch, child) {
                final settingsState = watch(settingsNotifierProvider.state);
                final settings = [2, 3, 4, 5];

                return RadioSettings(
                  onPressed: (index) {
                    context
                        .read(settingsNotifierProvider)
                        .saveSettings(settingsState.copyWith(
                          intervalsNumber: settings[index],
                        ));
                  },
                  title: 'Number of pomodoro intervals',
                  settings: settings,
                  optionUnit: '',
                  currentSetting: settingsState.intervalsNumber,
                );
              },
            ),
            SizedBox(height: 50),
            DefaultSettingsButton(),
          ],
        ),
      ),
    );
  }
}
