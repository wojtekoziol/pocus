import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  CustomSnackBar({
    required this.controller,
    required this.message,
  });

  final FlashController controller;
  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Flash.bar(
      controller: controller,
      backgroundColor: theme.primaryColor,
      position: FlashPosition.top,
      margin: EdgeInsets.symmetric(horizontal: 8),
      borderRadius: BorderRadius.circular(32),
      forwardAnimationCurve: Curves.fastOutSlowIn,
      reverseAnimationCurve: Curves.fastOutSlowIn,
      child: FlashBar(
        message: Center(
          child: Text(
            message,
            style: theme.textTheme.subtitle1!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
