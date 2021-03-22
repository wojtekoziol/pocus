import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pocus/providers.dart';

class PercentIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer(
      builder: (context, watch, child) {
        watch(pomodoroTimerNotifierProvider.state);

        return CircularPercentIndicator(
          radius: MediaQuery.of(context).size.width * 0.75,
          lineWidth: 15,
          reverse: true,
          animation: true,
          animateFromLastPercent: true,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: theme.primaryColor,
          backgroundColor: theme.accentColor,
          percent: context.read(pomodoroTimerNotifierProvider).percent,
        );
      },
    );
  }
}
