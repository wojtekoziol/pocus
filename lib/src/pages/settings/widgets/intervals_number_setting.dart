import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/settings/models/radio_slider_option/radio_slider_option.dart';
import 'package:pocus/src/pages/settings/widgets/radio_slider.dart';

class IntervalsNumberSetting extends HookWidget {
  final _options = [2, 4, 6];

  @override
  Widget build(BuildContext context) {
    final prefsState = context.read(prefsNotifierProvider.state);

    return RadioSlider(
      label: 'Pomodoro intervals number',
      initialIndex: _options.indexOf(prefsState.intervalsNumber),
      children: [
        ..._options.map((option) {
          return RadioSliderOption(
            value: '$option',
            onPressed: () {
              final prefsNotifier = context.read(prefsNotifierProvider);
              prefsNotifier.updatePrefs(prefsState.copyWith(
                intervalsNumber: option,
              ));
            },
          );
        }),
      ],
    );
  }
}
