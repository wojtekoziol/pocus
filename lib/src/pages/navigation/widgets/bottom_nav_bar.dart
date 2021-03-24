import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    final pageController = context.read(pageControllerProvider);
    final currentIndexNotifier = context.read(currentIndexProvider);

    return Container(
      decoration: BoxDecoration(
        color: theme.dividerColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 2),
        child: Container(
          decoration: BoxDecoration(
            color: theme.scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SafeArea(
                child: SizedBox(
                  width: screenSize.width * 0.6 + 32,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          pageController.animateToPage(
                            0,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.decelerate,
                          );
                          currentIndexNotifier.value = 0;
                        },
                        child: Container(
                          color: Colors.transparent,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
                            child: Icon(
                              Icons.timer,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          pageController.animateToPage(
                            1,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.decelerate,
                          );
                          currentIndexNotifier.value = 1;
                        },
                        child: Container(
                          color: Colors.transparent,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
                            child: Icon(
                              Icons.equalizer_rounded,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                width: screenSize.width * 0.6 + 25,
                child: ValueListenableBuilder(
                  valueListenable: currentIndexNotifier,
                  builder: (context, currentIndex, child) {
                    return AnimatedAlign(
                      duration: Duration(milliseconds: 200),
                      alignment: Alignment(
                        currentIndex == 0 ? -1 : 1,
                        0,
                      ),
                      child: child,
                    );
                  },
                  child: Container(
                    height: 8,
                    width: 50,
                    decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
