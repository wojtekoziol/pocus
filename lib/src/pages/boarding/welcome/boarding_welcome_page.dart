import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocus/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

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
              LocaleKeys.boarding_title_1.tr(),
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
