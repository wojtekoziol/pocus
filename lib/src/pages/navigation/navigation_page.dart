import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NavigationPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentIndexNotifier = useState(0);

    return Scaffold(
      body: IndexedStack(
        index: currentIndexNotifier.value,
        children: [],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).dividerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 3),
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
                      currentIndexNotifier.value = 0;
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        Icons.timer,
                        size: 28,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      currentIndexNotifier.value = 1;
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        Icons.equalizer_rounded,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
