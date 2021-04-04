import 'package:flutter/material.dart';

class StatsNumberIndicator extends StatelessWidget {
  StatsNumberIndicator({
    required this.title,
    required this.value,
    required this.backgroundColor,
    required this.textColor,
  });

  final String title;
  final int value;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: theme.textTheme.caption!.copyWith(
              color: textColor,
            ),
          ),
          SizedBox(height: 4),
          Text(
            '$value',
            style: theme.textTheme.headline4!.copyWith(
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
