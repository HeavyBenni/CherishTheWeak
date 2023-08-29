import 'package:flutter/material.dart';

class AppTheme {
  static final TextStyle headlineTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final TextStyle bodyTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.grey[700],
  );

  static final Color primaryColor = Colors.blue;
  static final Color accentColor = Colors.orange;

  static final ThemeData MainTheme = ThemeData(
    primaryColor: primaryColor,
    hintColor: accentColor,
    textTheme: TextTheme(
      displayLarge: headlineTextStyle,
      bodyLarge: bodyTextStyle,
    ),
  );
}
