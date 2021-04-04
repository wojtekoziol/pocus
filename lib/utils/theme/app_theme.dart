import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'app_theme.freezed.dart';

@freezed
class AppTheme with _$AppTheme {
  factory AppTheme._() = _AppTheme;

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
          fontWeight: FontWeight.bold,
          color: Color(0xFFEA5858),
          fontSize: 20,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xFFEA5858),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 64,
        color: Colors.black,
      ),
      headline5: TextStyle(
        color: Color(0xFFEA5858),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Color(0xFFEA5858),
    accentColor: Color(0xFFFFA2A2),
    dividerColor: Color(0xFFE3E3E3),
    fontFamily: 'Montserrat',
  );

  static final dark = ThemeData(
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Color(0xFFbf3434),
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFFbf3434),
          fontSize: 20,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xFFbf3434),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 64,
        color: Colors.grey[300],
      ),
      headline5: TextStyle(
        color: Color(0xFFbf3434),
      ),
      bodyText1: TextStyle(
        color: Colors.grey[300],
      ),
    ),
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Color(0xFFbf3434),
    accentColor: Color(0xFFcc5252),
    dividerColor: Color(0xFF242424),
    fontFamily: 'Montserrat',
  );
}
