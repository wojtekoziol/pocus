import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/settings/state/settings_state.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class DefaultSettingsButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final settingsNotifier = context.read(settingsNotifierProvider);
    final scaleAnimationController =
        useAnimationController(duration: Duration(milliseconds: 50));

    return ScaleTransition(
      scale: Tween<double>(
        begin: 1,
        end: 0.9,
      ).animate(scaleAnimationController),
      child: GestureDetector(
        onTapDown: (details) {
          HapticFeedback.mediumImpact();
          scaleAnimationController.forward();
        },
        onTapUp: (details) {
          settingsNotifier.saveSettings(SettingsState(
            pomodoroDuration: 25,
            shortBreakDuration: 5,
            longBreakDuration: 15,
            intervalsNumber: 4,
          ));
          scaleAnimationController.reverse();
        },
        onTapCancel: () {
          scaleAnimationController.reverse();
        },
        child: FractionallySizedBox(
          widthFactor: 0.6,
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Center(
              child: Text(
                LocaleKeys.settings_restore_default.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
