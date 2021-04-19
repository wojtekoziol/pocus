import 'package:flutter/material.dart';
import 'package:pocus/src/pages/boarding/pomodoro/widgets/tile.dart';
import 'package:pocus/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class BoardingPomodoroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text(
            LocaleKeys.boarding_title_2.tr(),
            textAlign: TextAlign.center,
            style: theme.textTheme.headline5!.copyWith(fontSize: 21),
          ),
          SizedBox(height: 30),
          Expanded(
            flex: 5,
            child: Tile(
              value: LocaleKeys.boarding_tile_focus.tr(),
              backgroundColor: theme.primaryColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 3,
            child: Tile(
              value: LocaleKeys.boarding_tile_short_break.tr(),
              backgroundColor: theme.accentColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 5,
            child: Tile(
              value: LocaleKeys.boarding_tile_focus.tr(),
              backgroundColor: theme.primaryColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 3,
            child: Tile(
              value: LocaleKeys.boarding_tile_short_break.tr(),
              backgroundColor: theme.accentColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 5,
            child: Tile(
              value: LocaleKeys.boarding_tile_focus.tr(),
              backgroundColor: theme.primaryColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 3,
            child: Tile(
              value: LocaleKeys.boarding_tile_short_break.tr(),
              backgroundColor: theme.accentColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 5,
            child: Tile(
              value: LocaleKeys.boarding_tile_focus.tr(),
              backgroundColor: theme.primaryColor,
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 4,
            child: Tile(
              value: LocaleKeys.boarding_tile_long_break.tr(),
              backgroundColor: theme.accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
