import 'package:flutter/material.dart';

class BoardingWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Pomodoro technique is focused on boosting your productivity on long tasks.',
          textAlign: TextAlign.center,
          style: theme.textTheme.headline5,
        ),
        SizedBox(height: 50),
        Placeholder(),
      ],
    );
  }
}
