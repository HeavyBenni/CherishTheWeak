import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final TextStyle headlineTextStyle = GoogleFonts.sedgwickAveDisplay(
    fontSize: 20,
    color: Colors.black,
  );

  static final TextStyle bodyTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.grey[700],
  );

    static final TextStyle logoTextStyle = GoogleFonts.sedgwickAveDisplay(
    fontSize: 36,
    color: Colors.black,
  );

  static const Color primaryColor = Colors.blue;
  static const Color accentColor = Colors.orange;

  static final ThemeData mainTheme = ThemeData(
    primaryColor: primaryColor,
    hintColor: accentColor,
    textTheme: TextTheme(
      displayLarge: headlineTextStyle,
      bodyLarge: bodyTextStyle,
      displayMedium: logoTextStyle
    ),
  );

}
