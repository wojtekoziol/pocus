import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pocus/src/pages/boarding/pomodoro/boarding_pomodoro_page.dart';
import 'package:pocus/src/pages/boarding/welcome/boarding_welcome_page.dart';

class BoardingNavigationPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final pageController = usePageController();
    final scaleAnimationController =
        useAnimationController(duration: Duration(milliseconds: 50));

    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          BoardingWelcomePage(),
          BoardingPomodoroPage(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ScaleTransition(
                scale: Tween<double>(begin: 1, end: 0.9)
                    .animate(scaleAnimationController),
                child: GestureDetector(
                  onTapDown: (details) {
                    HapticFeedback.mediumImpact();
                    scaleAnimationController.forward();
                  },
                  onTapUp: (details) {
                    scaleAnimationController.reverse();
                    pageController.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    );
                  },
                  onTapCancel: () {
                    scaleAnimationController.reverse();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 28),
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
