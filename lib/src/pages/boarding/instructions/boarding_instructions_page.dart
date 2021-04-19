import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocus/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class BoardingInstructionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(
                'assets/images/boarding/instructions/play-button.svg'),
          ),
          SizedBox(height: 10),
          Text(
            LocaleKeys.boarding_function_1.tr(),
            style: TextStyle(color: theme.primaryColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Expanded(
            child: SvgPicture.asset(
                'assets/images/boarding/instructions/play-button-tap.svg'),
          ),
          SizedBox(height: 10),
          Text(
            LocaleKeys.boarding_function_2.tr(),
            style: TextStyle(color: theme.primaryColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Expanded(
            child: SvgPicture.asset(
                'assets/images/boarding/instructions/play-button-double-tap.svg'),
          ),
          SizedBox(height: 10),
          Text(
            LocaleKeys.boarding_function_3.tr(),
            style: TextStyle(color: theme.primaryColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
