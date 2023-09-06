import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color whiteColor = Color.fromRGBO(255, 255, 255, 1); // Deep Blue
  static const Color beigeColor = Color.fromARGB(255, 255, 221, 175); // Goldenrod
  static const Color redColor = Color(0xFFDC143C); // Crimson
  static const Color blackColor = Color.fromARGB(255, 0, 0, 0); // Charcoal

  static TextStyle bandName = const TextStyle(
    fontFamily: 'Metal',
    fontSize: 45,
    fontWeight: FontWeight.bold,
    color: beigeColor,
  );

  static TextStyle headLineLarge = const TextStyle(
    fontFamily: 'BebasNeue',
    fontSize: 30,
    color: whiteColor,
  );

  static TextStyle text3 = GoogleFonts.medievalSharp(
    fontSize: 40,
    color: beigeColor,
  );

  static const TextStyle tourName = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: whiteColor,
  );

  static const TextStyle tourInfo = TextStyle(
    fontSize: 14,
    color: whiteColor,
  );

  static const TextStyle text6 = TextStyle(
    fontSize: 10,
    color: blackColor,
  );

  // Custom Color and Text Titles
  static final ThemeData mainTheme = ThemeData(
    primaryColor: whiteColor,
    primaryColorDark: beigeColor,
    primaryColorLight: redColor,
    cardColor: blackColor,
    textTheme: TextTheme(
      displayLarge: bandName,
      displayMedium: headLineLarge,
      displaySmall: text3,
      headlineLarge: tourName,
      headlineMedium: tourInfo,
      headlineSmall: text6,
    ),
  );
}
