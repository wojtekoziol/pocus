import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/pomodoro_timer/widgets/percent_indicator.dart';

class PomodoroTimerPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final playPauseAnimationController =
        useAnimationController(duration: Duration(milliseconds: 200));

    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PercentIndicator(),
            Consumer(
              builder: (context, watch, _) {
                final pomodoroTimerState =
                    watch(pomodoroTimerNotifierProvider.state);
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
            ),
          ],
        ),
      ),
    );
  }
}
