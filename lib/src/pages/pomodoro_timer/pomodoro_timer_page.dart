import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pocus/providers.dart';

class PomodoroTimerPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final playPauseAnimationController =
        useAnimationController(duration: Duration(milliseconds: 200));

    return Container(
      child: Center(
        child: Consumer(
          builder: (context, watch, __) {
            final pomodoroTimerState =
                watch(pomodoroTimerNotifierProvider.state);
            final pomodoroTimerNotifier =
                context.read(pomodoroTimerNotifierProvider);
            if (pomodoroTimerState.isRunning) {
              playPauseAnimationController.forward();
            } else {
              playPauseAnimationController.reverse();
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: MediaQuery.of(context).size.width * 0.75,
                  lineWidth: 15,
                  reverse: true,
                  animation: true,
                  animateFromLastPercent: true,
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Theme.of(context).primaryColor,
                  backgroundColor: Theme.of(context).accentColor,
                  percent: pomodoroTimerNotifier.percent,
                ),
                GestureDetector(
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
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
