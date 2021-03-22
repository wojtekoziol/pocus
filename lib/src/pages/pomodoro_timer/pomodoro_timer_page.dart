import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';

class PomodoroTimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Consumer(
          builder: (_, watch, __) {
            final pomodoroTimerState = watch(pomodoroTimerNotifier.state);

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('secondsLeft: ${pomodoroTimerState.secondsLeft}'),
                Text('isRunning: ${pomodoroTimerState.isRunning}'),
                Text('isBreak: ${pomodoroTimerState.isBreak}'),
              ],
            );
          },
        ),
      ),
    );
  }
}
