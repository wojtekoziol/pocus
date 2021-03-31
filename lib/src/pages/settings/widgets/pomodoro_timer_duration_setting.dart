import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/settings/models/radio_slider_option/radio_slider_option.dart';
import 'package:pocus/src/pages/settings/widgets/radio_slider.dart';

class PomodoroTimerDurationSetting extends HookWidget {
  final _options = [25, 30, 45];

  @override
  Widget build(BuildContext context) {
    final prefsState = context.read(prefsNotifierProvider.state);

    return RadioSlider(
      label: 'Pomodoro timer duration',
      initialIndex: _options.indexOf(prefsState.pomodoroDuration),
      children: [
        ..._options.map((option) {
          return RadioSliderOption(
            value: '$option min',
            onPressed: () {
              final prefsNotifier = context.read(prefsNotifierProvider);
              prefsNotifier.updatePrefs(prefsState.copyWith(
                pomodoroDuration: option,
              ));
            },
          );
        }),
      ],
    );
  }
}
