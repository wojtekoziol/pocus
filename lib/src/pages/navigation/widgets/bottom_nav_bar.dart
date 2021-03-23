import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).dividerColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 2),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    final pageController = context.read(pageControllerProvider);
                    pageController.animateToPage(
                      0,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.decelerate,
                    );
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        Icons.timer,
                        size: 28,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    final pageController = context.read(pageControllerProvider);
                    pageController.animateToPage(
                      1,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.decelerate,
                    );
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(16),
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
      ),
    );
  }
}
