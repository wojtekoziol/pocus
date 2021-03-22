import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        iconTheme: IconThemeData(
          color: Color(0xFFEA5858),
        ),
        primaryColor: Color(0xFFEA5858),
        accentColor: Color(0xFFFFA2A2),
        dividerColor: Color(0xFFE3E3E3),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
    );
  }
}
