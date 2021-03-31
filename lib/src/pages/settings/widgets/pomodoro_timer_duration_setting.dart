import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pocus/models/prefs/state/prefs_state.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/settings/models/radio_slider_option/radio_slider_option.dart';
import 'package:pocus/src/pages/settings/widgets/radio_slider.dart';

class PomodoroTimerDurationSetting extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final prefsNotifier = context.read(prefsNotifierProvider);
    final prefsState = useProvider(prefsNotifierProvider.state);

    return RadioSlider(
      label: 'Pomodoro timer duration',
      initialIndex: prefsState.pomodoroDuration == 25
          ? 0
          : prefsState.pomodoroDuration == 30
              ? 1
              : 2,
      children: [
        RadioSliderOption(
          onPressed: () {
            prefsNotifier.updatePrefs(PrefsState(
              pomodoroDuration: 25,
              shortBreakDuration: prefsState.shortBreakDuration,
              longBreakDuration: prefsState.longBreakDuration,
              intervalsNumber: prefsState.intervalsNumber,
            ));
          },
          value: '25 min',
        ),
        RadioSliderOption(
          onPressed: () {
            prefsNotifier.updatePrefs(PrefsState(
              pomodoroDuration: 30,
              shortBreakDuration: prefsState.shortBreakDuration,
              longBreakDuration: prefsState.longBreakDuration,
              intervalsNumber: prefsState.intervalsNumber,
            ));
          },
          value: '30 min',
        ),
        RadioSliderOption(
          onPressed: () {
            prefsNotifier.updatePrefs(PrefsState(
              pomodoroDuration: 45,
              shortBreakDuration: prefsState.shortBreakDuration,
              longBreakDuration: prefsState.longBreakDuration,
              intervalsNumber: prefsState.intervalsNumber,
            ));
          },
          value: '45 min',
        ),
      ],
    );
  }
}
