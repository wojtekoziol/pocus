import 'package:flutter/material.dart';

class BoardingInstructionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Placeholder()),
          SizedBox(height: 10),
          Text(
            'Use this button to start and pause the timer',
            style: TextStyle(color: theme.primaryColor),
          ),
          SizedBox(height: 30),
          Expanded(child: Placeholder()),
          SizedBox(height: 10),
          Text(
            'Tap and hold to reset the session',
            style: TextStyle(color: theme.primaryColor),
          ),
          SizedBox(height: 30),
          Expanded(child: Placeholder()),
          SizedBox(height: 10),
          Text(
            'Double tap to skip to the next time slot',
            style: TextStyle(color: theme.primaryColor),
          ),
        ],
      ),
    );
  }
}
