import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'app_theme.freezed.dart';

@freezed
class AppTheme with _$AppTheme {
  factory AppTheme() = _AppTheme;

  static final light = ThemeData(
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Color(0xFFEA5858),
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 20,
          letterSpacing: 0.15,
          color: Color(0xFFEA5858),
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xFFEA5858),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 72,
        letterSpacing: -1.5,
        color: Colors.black,
      ),
    ),
    primaryColor: Color(0xFFEA5858),
    accentColor: Color(0xFFFFA2A2),
    dividerColor: Color(0xFFE3E3E3),
    fontFamily: 'Montserrat',
  );
}
