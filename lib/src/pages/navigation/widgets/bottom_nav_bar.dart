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
                      for (int i = 0; i < _icons.length; i++)
                        GestureDetector(
                          onTap: () {
                            HapticFeedback.mediumImpact();
                            pageController.animateToPage(
                              currentIndexNotifier.value = i,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                            indicatorWidthAnimationController.forward();
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
                              child: Icon(
                                _icons[i],
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
                width: navBarWidthFactor + 25,
                child: AnimatedAlign(
                  duration: Duration(milliseconds: 200),
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
