import 'package:flutter/material.dart';
import 'package:pocus/src/pages/pomodoro_timer/widgets/quote.dart';
import 'package:pocus/src/pages/pomodoro_timer/widgets/percent_indicator.dart';
import 'package:pocus/src/pages/pomodoro_timer/widgets/play_pause_button.dart';

class PomodoroTimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Quote(),
            PercentIndicator(),
            PlayPauseButton(),
          ],
        ),
      ),
    );
  }
}
