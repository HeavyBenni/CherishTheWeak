import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color color1 = Color.fromRGBO(0, 0, 0, 1);  // Deep Blue
  static const Color color2 = Color.fromARGB(255, 156, 68, 10); // Goldenrod
  static const Color color3 = Color(0xFFDC143C); // Crimson
  static const Color color4 = Color.fromARGB(255, 233, 205, 163); // Sage Green
  static const Color color5 = Colors.white;      // Pearl
  static const Color color6 = Color(0xFF333333); // Charcoal

<<<<<<< Updated upstream
  static final TextStyle bandName = GoogleFonts.metalMania(
    fontSize: 45,
=======
  static final TextStyle bandName = TextStyle(
    fontFamily: 'Metal',
    fontSize: 20,
>>>>>>> Stashed changes
    fontWeight: FontWeight.bold,
    color: color1,
  );

  static final TextStyle headLineLarge = GoogleFonts.bebasNeue(
    fontSize: 30,
    color: color2,
  );

  static const TextStyle text3 = TextStyle(
    fontSize: 16,
    color: color3,
  );

  static const TextStyle text4 = TextStyle(
    fontSize: 14,
    color: color4,
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
