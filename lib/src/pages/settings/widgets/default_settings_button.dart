import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/settings/state/settings_state.dart';
import 'package:pocus/providers.dart';

class DefaultSettingsButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scaleAnimationController =
        useAnimationController(duration: Duration(milliseconds: 50));
    final settingsNotifier = context.read(settingsNotifierProvider);

    return ScaleTransition(
      scale: Tween<double>(
        begin: 1,
        end: 0.9,
      ).animate(scaleAnimationController),
      child: GestureDetector(
        onTapDown: (details) {
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
          Navigator.of(context).pop();
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
                'Restore to default',
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
