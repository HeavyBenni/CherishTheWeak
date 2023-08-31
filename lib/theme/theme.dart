import 'package:flutter/material.dart';

class AppTheme {
  static final Color color1 = Color(0xFF1976D2);  // Deep Blue
  static final Color color2 = Color(0xFFFFD700); // Goldenrod
  static final Color color3 = Color(0xFFDC143C); // Crimson
  static final Color color4 = Color(0xFF556B2F); // Sage Green
  static final Color color5 = Colors.white;      // Pearl
  static final Color color6 = Color(0xFF333333); // Charcoal

  static final TextStyle text1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: color1,
  );

  static final TextStyle text2 = TextStyle(
    fontSize: 18,
    color: color2,
  );

  static final TextStyle text3 = TextStyle(
    fontSize: 16,
    color: color3,
  );

  static final TextStyle text4 = TextStyle(
    fontSize: 14,
    color: color4,
  );

  static final TextStyle text5 = TextStyle(
    fontSize: 12,
    color: color5,
  );

  static final TextStyle text6 = TextStyle(
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
      displayLarge: text1,
      displayMedium: text2,
      displaySmall: text3,
      headlineLarge: text4,
      headlineMedium: text5,
      headlineSmall: text6,
    ),
  );
}
