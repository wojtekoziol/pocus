import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Color(0xffEA5858),
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xffEA5858),
          fontSize: 20,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xffEA5858),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 64,
        color: Colors.black,
      ),
      headline5: TextStyle(
        color: Color(0xffEA5858),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Color(0xffEA5858),
    accentColor: Color(0xffffA2A2),
    dividerColor: Color(0xffE3E3E3),
    fontFamily: 'Montserrat',
  );

  static final dark = ThemeData(
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Color(0xffeb5757),
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xffeb5757),
          fontSize: 20,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xffeb5757),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 64,
        color: Colors.grey[300],
      ),
      headline5: TextStyle(
        color: Color(0xffeb5757),
      ),
      bodyText1: TextStyle(
        color: Colors.grey[300],
      ),
      subtitle1: TextStyle(
        color: Colors.grey[300],
      ),
    ),
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Color(0xffeb5757),
    accentColor: Color(0xffe89999),
    dividerColor: Color(0xff242424),
    fontFamily: 'Montserrat',
  );
}
