import 'package:flutter/material.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/navigation/widgets/bottom_nav_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pocus'),
        leading: Padding(
          padding: EdgeInsets.all(16),
          child: Placeholder(),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Icon(
                Icons.settings,
              ),
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: context.read(currentIndexNotifier).value,
        children: [],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
