import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pocus/providers.dart';

class PercentIndicator extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    final animationController =
        useAnimationController(duration: Duration(milliseconds: 300));

    return Consumer(
      builder: (context, watch, child) {
        final pomodoroTimerState = watch(pomodoroTimerNotifierProvider.state);

        pomodoroTimerState.isRunning
            ? animationController.forward()
            : animationController.reverse();

        return ScaleTransition(
          scale: CurvedAnimation(
            parent:
                Tween<double>(begin: 1, end: 0.6).animate(animationController),
            curve: Curves.fastOutSlowIn,
          ),
          child: CircularPercentIndicator(
            radius: screenSize.width * 0.7,
            lineWidth: 12,
            reverse: true,
            animation: true,
            animateFromLastPercent: true,
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: theme.primaryColor,
            backgroundColor: theme.accentColor,
            percent: pomodoroTimerState.isRunning
                ? pomodoroTimerState.secondsLeft /
                    pomodoroTimerState.secondsInitial
                : 0,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${(pomodoroTimerState.secondsLeft / 60).round()}',
                  style: theme.textTheme.headline1,
                ),
                Text(
                  'minutes',
                  style: theme.textTheme.bodyText1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
