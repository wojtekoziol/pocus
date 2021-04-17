import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocus/src/pages/boarding/boarding_navigation_page.dart';
import 'package:pocus/src/pages/navigation/widgets/bottom_nav_bar.dart';
import 'package:pocus/src/pages/pomodoro_timer/pomodoro_timer_page.dart';
import 'package:pocus/src/pages/settings/settings_page.dart';
import 'package:pocus/src/pages/stats/stats_page.dart';
import 'package:pocus/utils/notifications.dart';
import 'package:pocus/utils/prefs_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unicons/unicons.dart';

class NavigationPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    useEffect(() {
      SharedPreferences.getInstance().then((prefs) {
        final wasBoardingScreenShown =
            prefs.getBool(PrefsKeys.wasBoardingScreenShown) ?? false;
        if (!wasBoardingScreenShown) {
          showCupertinoModalPopup(
            context: context,
            builder: (context) => BoardingNavigationPage(),
          );
          Notifications.init();
        }
        prefs.setBool(PrefsKeys.wasBoardingScreenShown, true);
      });
    }, []);

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Scaffold(
            body: PomodoroTimerPage(),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: Text('Pocus'),
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.only(left: 16, right: 8),
              child: SvgPicture.asset(
                'assets/images/tomato.svg',
              ),
            ),
            actions: [
              OpenContainer(
                closedColor: Colors.transparent,
                closedElevation: 0,
                closedBuilder: (context, openContainer) {
                  return GestureDetector(
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      openContainer();
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Icon(UniconsLine.setting),
                      ),
                    ),
                  );
                },
                openElevation: 0,
                openBuilder: (context, action) => SettingsPage(),
              ),
            ],
          ),
          body: PageView(
            controller: pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              PomodoroTimerPage(),
              StatsPage(),
            ],
          ),
          bottomNavigationBar: BottomNavBar(
            pageController: pageController,
          ),
        );
      },
    );
  }
}
