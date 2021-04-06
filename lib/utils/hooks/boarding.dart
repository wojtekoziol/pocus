import 'package:flutter/material.dart';
import 'package:pocus/src/pages/boarding/boarding_navigation_page.dart';
import 'package:pocus/utils/prefs_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<void> useBoarding(BuildContext context) async {
  await SharedPreferences.getInstance().then((prefs) {
    final wasBoardingScreenShown =
        prefs.getBool(PrefsKeys.wasBoardingScreenShown) ?? false;
    if (!wasBoardingScreenShown) {
      showCupertinoModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        expand: true,
        builder: (context) => BoardingNavigationPage(),
      );
    }
  });
}
