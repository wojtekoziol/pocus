import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoardingWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Expanded(
            child: Text(
              'Pomodoro technique is focused on boosting your productivity on long tasks.',
              textAlign: TextAlign.center,
              style: theme.textTheme.headline5!.copyWith(fontSize: 21),
            ),
          ),
          Expanded(
            flex: 5,
            child: SvgPicture.asset(
                'assets/images/boarding/welcome/illustration.svg'),
          ),
        ],
      ),
    );
  }
}
