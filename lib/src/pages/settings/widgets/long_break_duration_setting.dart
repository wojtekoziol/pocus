import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/settings/models/radio_slider_option/radio_slider_option.dart';
import 'package:pocus/src/pages/settings/widgets/radio_slider.dart';

class LongBreakDurationSetting extends HookWidget {
  final _options = [10, 15, 20];

  @override
  Widget build(BuildContext context) {
    final prefsState = context.read(prefsNotifierProvider.state);

    return RadioSlider(
      label: 'Long break duration',
      initialIndex: _options.indexOf(prefsState.longBreakDuration),
      children: [
        ..._options.map((option) {
          return RadioSliderOption(
            value: '$option min',
            onPressed: () {
              final prefsNotifier = context.read(prefsNotifierProvider);
              prefsNotifier.updatePrefs(prefsState.copyWith(
                longBreakDuration: option,
              ));
            },
          );
        }),
      ],
    );
  }
}
