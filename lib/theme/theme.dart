import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color color1 = Color.fromRGBO(255, 255, 255, 1); // Deep Blue
  static const Color color2 = Color.fromARGB(255, 255, 221, 175); // Goldenrod
  static const Color color3 = Color(0xFFDC143C); // Crimson
  static const Color color4 = Color.fromARGB(255, 233, 205, 163); // Sage Green
  static const Color color5 = Colors.white; // Pearl
  static const Color color6 = Color(0xFF333333); // Charcoal

  static TextStyle bandName = const TextStyle(
    fontFamily: 'Metal',
    fontSize: 45,
    fontWeight: FontWeight.bold,
    color: color2,
  );

  static TextStyle headLineLarge = const TextStyle(
    fontFamily: 'BebasNeue',
    fontSize: 30,
    color: color1,
  );

  static TextStyle text3 = GoogleFonts.medievalSharp(
    fontSize: 40,
    color: color2,
  );

  static const TextStyle text4 = TextStyle(
    fontSize: 32,
    color: color1,
  );

  static const TextStyle text5 = TextStyle(
    fontSize: 12,
    color: color5,
  );

  static const TextStyle text6 = TextStyle(
    fontSize: 10,
    color: color6,
  );

  // Custom Color and Text Titles
  static final ThemeData mainTheme = ThemeData(
    primaryColor: color1,
    primaryColorDark: color2,
    primaryColorLight: color3,
    hintColor: color4,
    shadowColor: color5,
    cardColor: color6,
    textTheme: TextTheme(
      displayLarge: bandName,
      displayMedium: headLineLarge,
      displaySmall: text3,
      headlineLarge: text4,
      headlineMedium: text5,
      headlineSmall: text6,
    ),
  );
}
