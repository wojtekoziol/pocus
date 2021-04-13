import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RadioSlider extends StatelessWidget {
  const RadioSlider({
    required this.onPressed,
    required this.title,
    required this.settings,
    required this.optionUnit,
    required this.currentSetting,
  });

  final Function(int index) onPressed;
  final String title;
  final List<int> settings;
  final String optionUnit;
  final int currentSetting;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            title,
            style: theme.textTheme.subtitle1,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: theme.dividerColor,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...settings.asMap().map(
                (index, setting) {
                  return MapEntry(
                    index,
                    GestureDetector(
                      onTap: () {
                        HapticFeedback.mediumImpact();
                        onPressed(index);
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              curve: Curves.fastOutSlowIn,
                              height: settings.indexOf(currentSetting) == index
                                  ? 40
                                  : 0,
                              width: settings.indexOf(currentSetting) == index
                                  ? 80
                                  : 0,
                              decoration: BoxDecoration(
                                color: theme.primaryColor,
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 80,
                              child: Center(
                                child: Text(
                                  '$setting $optionUnit',
                                  style:
                                      settings.indexOf(currentSetting) == index
                                          ? TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            )
                                          : TextStyle(
                                              color: Colors.black,
                                            ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ).values
            ],
          ),
        ),
      ],
    );
  }
}
