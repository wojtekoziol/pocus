import 'package:flutter/material.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/navigation/widgets/bottom_nav_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.read(currentIndexNotifier).value,
        children: [],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
