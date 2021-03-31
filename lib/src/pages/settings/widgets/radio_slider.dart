import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pocus/src/pages/settings/models/radio_slider_option/radio_slider_option.dart';

class RadioSlider extends HookWidget {
  RadioSlider({
    required this.label,
    required this.children,
    required this.initialIndex,
  })   : assert(children.length == 3),
        assert(initialIndex >= 0),
        assert(initialIndex < children.length);

  final String label;
  final List<RadioSliderOption> children;
  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    final currentIndexNotifier = useValueNotifier(initialIndex);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            label,
            style: theme.textTheme.subtitle1,
          ),
        ),
        SizedBox(height: 10),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: theme.dividerColor,
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            SizedBox(
              height: 50,
              child: ValueListenableBuilder(
                valueListenable: currentIndexNotifier,
                builder: (context, int index, child) {
                  return AnimatedAlign(
                    alignment: Alignment(index - 1, 0),
                    duration: Duration(milliseconds: 200),
                    child: Container(
                      height: 50,
                      width: screenSize.width * 0.75 / children.length,
                      decoration: BoxDecoration(
                        color: theme.primaryColor,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: Text(
                          children[index].value,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < children.length; i++)
                    GestureDetector(
                      onTap: () {
                        children[i].onPressed();
                        currentIndexNotifier.value = i;
                      },
                      child: Container(
                        height: 50,
                        color: Colors.transparent,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: ValueListenableBuilder(
                            valueListenable: currentIndexNotifier,
                            builder: (context, index, child) {
                              return Text(
                                children[i].value,
                                style: TextStyle(
                                  color: index == i
                                      ? Colors.transparent
                                      : Colors.black,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
