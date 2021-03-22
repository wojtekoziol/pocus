import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_theme.freezed.dart';

@freezed
class AppTheme with _$AppTheme {
  factory AppTheme() = _AppTheme;

  static final light = ThemeData(
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      elevation: 0,
      backgroundColor: Colors.transparent,
      textTheme: GoogleFonts.montserratTextTheme().copyWith(
        headline6: GoogleFonts.montserratTextTheme().headline6!.copyWith(
              color: Color(0xFFEA5858),
              fontWeight: FontWeight.w500,
              fontSize: 20,
              letterSpacing: 0.15,
            ),
      ),
      iconTheme: IconThemeData(
        color: Color(0xFFEA5858),
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xFFEA5858),
    ),
    primaryColor: Color(0xFFEA5858),
    accentColor: Color(0xFFFFA2A2),
    dividerColor: Color(0xFFE3E3E3),
    fontFamily: GoogleFonts.montserrat().fontFamily,
    textTheme: GoogleFonts.montserratTextTheme(),
  );
}
