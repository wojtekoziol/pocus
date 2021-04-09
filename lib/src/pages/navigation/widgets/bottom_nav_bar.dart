import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomNavBar extends HookWidget {
  BottomNavBar({required this.pageController});

  final PageController pageController;
  final _icons = [
    Icons.timer,
    Icons.equalizer_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final navBarWidthFactor = MediaQuery.of(context).size.width * 0.6;
    final currentIndexNotifier = useValueNotifier(0);
    final indicatorWidthAnimationController = useAnimationController(
      duration: Duration(milliseconds: 200),
    );
    final indicatorWidth = useAnimation(
      Tween<double>(begin: 50, end: 75)
          .animate(indicatorWidthAnimationController),
    );

    useEffect(() {
      if (indicatorWidthAnimationController.status ==
          AnimationStatus.completed) {
        indicatorWidthAnimationController.reverse();
      }
    }, [indicatorWidthAnimationController.status]);

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
                  width: navBarWidthFactor + 32,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ..._icons.asMap().map(
                        (index, icon) {
                          return MapEntry(
                            index,
                            GestureDetector(
                              onTap: () {
                                HapticFeedback.mediumImpact();
                                pageController.animateToPage(
                                  currentIndexNotifier.value = index,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.fastOutSlowIn,
                                );
                                if (pageController.page != index) {
                                  indicatorWidthAnimationController.forward();
                                }
                              },
                              child: Container(
                                color: Colors.transparent,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
                                  child: Icon(
                                    icon,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ).values,
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                width: navBarWidthFactor + 25,
                child: AnimatedAlign(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.fastOutSlowIn,
                  alignment: Alignment(
                    currentIndexNotifier.value == 0 ? -1 : 1,
                    0,
                  ),
                  child: Container(
                    height: 7,
                    width: indicatorWidth,
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
