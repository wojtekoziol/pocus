import 'package:flutter/material.dart';
import 'package:pocus/src/pages/boarding/pomodoro/widgets/tile.dart';

class BoardingPomodoroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: Column(
        children: [
          Text(
            'Full pomodoro session looks somewhat like this:',
            textAlign: TextAlign.center,
            style: theme.textTheme.headline5!.copyWith(fontSize: 21),
          ),
          SizedBox(height: 30),
          Expanded(
            flex: 5,
            child: Tile(
              value: 'Focus',
              backgroundColor: theme.primaryColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 3,
            child: Tile(
              value: 'Short break',
              backgroundColor: theme.accentColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 5,
            child: Tile(
              value: 'Focus',
              backgroundColor: theme.primaryColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 3,
            child: Tile(
              value: 'Short break',
              backgroundColor: theme.accentColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 5,
            child: Tile(
              value: 'Focus',
              backgroundColor: theme.primaryColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 3,
            child: Tile(
              value: 'Short break',
              backgroundColor: theme.accentColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 5,
            child: Tile(
              value: 'Focus',
              backgroundColor: theme.primaryColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 4,
            child: Tile(
              value: 'Long break',
              backgroundColor: theme.accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
