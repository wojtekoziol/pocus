import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/pomodoro_timer/state/pomodoro_timer_state.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class Quote extends StatelessWidget {
  final _pomodoroQuoteKeys = [
    LocaleKeys.quote_pomodoro_1,
    LocaleKeys.quote_pomodoro_2,
    LocaleKeys.quote_pomodoro_3,
    LocaleKeys.quote_pomodoro_4,
  ];
  final _breakQuoteKeys = [
    LocaleKeys.quote_break_1,
    LocaleKeys.quote_break_2,
    LocaleKeys.quote_break_3,
    LocaleKeys.quote_break_4,
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final pomodoroTimerState = watch(pomodoroTimerNotifierProvider.state);
        var quote = pomodoroTimerState is Pomodoro
            ? _pomodoroQuoteKeys[pomodoroTimerState.quoteId].tr()
            : _breakQuoteKeys[pomodoroTimerState.quoteId].tr();

        return Text(
          quote,
          style: Theme.of(context).textTheme.headline5,
        );
      },
    );
  }
}
