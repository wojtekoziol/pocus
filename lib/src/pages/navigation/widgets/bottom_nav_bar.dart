import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';

class BottomNavBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final widthFactor = MediaQuery.of(context).size.width * 0.6;
    final pageController = context.read(pageControllerProvider);
    final indexNotifier = useValueNotifier(0);

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
                  width: widthFactor + 32,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          HapticFeedback.mediumImpact();
                          pageController.animateToPage(
                            0,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeIn,
                          );
                          indexNotifier.value = 0;
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
                          HapticFeedback.mediumImpact();
                          pageController.animateToPage(
                            1,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeIn,
                          );
                          indexNotifier.value = 1;
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
                width: widthFactor + 25,
                child: ValueListenableBuilder(
                  valueListenable: indexNotifier,
                  builder: (context, index, child) {
                    return AnimatedAlign(
                      duration: Duration(milliseconds: 200),
                      alignment: Alignment(
                        index == 0 ? -1 : 1,
                        0,
                      ),
                      child: child,
                    );
                  },
                  child: Container(
                    height: 7,
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
