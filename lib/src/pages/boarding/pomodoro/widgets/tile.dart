import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  Tile({required this.value, required this.backgroundColor});

  final String value;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child: Text(
          value,
          style: theme.textTheme.headline6!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
