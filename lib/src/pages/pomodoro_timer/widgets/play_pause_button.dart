import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/pomodoro_timer/widgets/custom_snackbar.dart';

class PlayPauseButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final animationController =
        useAnimationController(duration: Duration(milliseconds: 200));

    return Consumer(
      builder: (context, watch, child) {
        final pomodoroTimerState = watch(pomodoroTimerNotifierProvider.state);
        final pomodoroTimerNotifier =
            context.read(pomodoroTimerNotifierProvider);

        pomodoroTimerState.isRunning
            ? animationController.forward()
            : animationController.reverse();

        return GestureDetector(
          onTapDown: (details) {
            HapticFeedback.mediumImpact();
          },
          onTap: () {
            pomodoroTimerState.isRunning
                ? pomodoroTimerNotifier.pause()
                : pomodoroTimerNotifier.start();
          },
          onLongPress: () {
            HapticFeedback.mediumImpact();
            showFlash(
              context: context,
              duration: Duration(seconds: 3),
              builder: (context, controller) {
                return CustomSnackBar(
                  controller: controller,
                  message: 'Timer reset!',
                );
              },
            );
            pomodoroTimerNotifier.reset();
          },
          onDoubleTap: () {
            HapticFeedback.mediumImpact();
            pomodoroTimerNotifier.skip();
            showFlash(
              context: context,
              duration: Duration(seconds: 3),
              builder: (context, controller) {
                return CustomSnackBar(
                  controller: controller,
                  message: 'Timer skipped!',
                );
              },
            );
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            size: 48,
            progress: animationController,
          ),
        );
      },
    );
  }
}
