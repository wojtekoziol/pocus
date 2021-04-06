import 'package:flutter/material.dart';

abstract class AppTheme {
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
        color: Color(0xFFff002c),
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFFff002c),
          fontSize: 20,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xFFff002c),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 64,
        color: Colors.grey[300],
      ),
      headline5: TextStyle(
        color: Color(0xFFff002c),
      ),
      bodyText1: TextStyle(
        color: Colors.grey[300],
      ),
      subtitle1: TextStyle(
        color: Colors.grey[300],
      ),
    ),
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Color(0xFFff002c),
    accentColor: Color(0xFFff6682),
    dividerColor: Color(0xFF242424),
    fontFamily: 'Montserrat',
  );
}
