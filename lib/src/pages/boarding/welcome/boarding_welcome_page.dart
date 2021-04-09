import 'package:flutter/material.dart';

class BoardingWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pomodoro technique is focused on boosting your productivity on long tasks.',
            textAlign: TextAlign.center,
            style: theme.textTheme.headline5!.copyWith(fontSize: 21),
          ),
          SizedBox(height: 50),
          Placeholder(),
        ],
      ),
    );
  }
}
