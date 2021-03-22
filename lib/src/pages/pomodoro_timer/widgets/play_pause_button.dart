import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';

class PlayPauseButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final playPauseAnimationController =
        useAnimationController(duration: Duration(milliseconds: 200));

    return Consumer(
      builder: (context, watch, _) {
        final pomodoroTimerState = watch(pomodoroTimerNotifierProvider.state);
        final pomodoroTimerNotifier =
            context.read(pomodoroTimerNotifierProvider);

        if (pomodoroTimerState.isRunning) {
          playPauseAnimationController.forward();
        } else {
          playPauseAnimationController.reverse();
        }

        return GestureDetector(
          onTap: () {
            if (pomodoroTimerState.isRunning) {
              pomodoroTimerNotifier.pause();
            } else {
              pomodoroTimerNotifier.start();
            }
          },
          onLongPress: () {
            pomodoroTimerNotifier.reset();
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            size: 48,
            progress: playPauseAnimationController,
          ),
        );
      },
    );
  }
}
