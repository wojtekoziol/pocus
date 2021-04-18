import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/pomodoro_timer/state/pomodoro_timer_state.dart';
import 'package:pocus/providers.dart';

class MotivationalQuote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final pomodoroTimerState = watch(pomodoroTimerNotifierProvider.state);

        return Text(
          pomodoroTimerState.quote,
          style: Theme.of(context).textTheme.headline5,
        );
      },
    );
  }
}
