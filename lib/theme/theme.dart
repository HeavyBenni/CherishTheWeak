import 'package:flutter/material.dart';


class CustomTheme {
  static ThemeData get lightTheme { //1
    return ThemeData( //2
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat', //3
      buttonTheme: ButtonThemeData( // 4
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.red,
      )
    );
  }
}