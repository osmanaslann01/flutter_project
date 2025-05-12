import 'package:flutter/material.dart';

class AppSettings {
  static List<String> fontList = ['Roboto', 'Lobster', 'Pacifico'];
  static List<double> fontSizes = [12.0, 14.0, 16.0, 18.0, 20.0];

  static TextTheme getTextTheme(String fontFamily, double fontSize) {
    return ThemeData.light().textTheme.apply(
      fontFamily: fontFamily,
      bodyColor: Colors.black,
    ).copyWith(
      bodyLarge: TextStyle(fontSize: fontSize),
      bodyMedium: TextStyle(fontSize: fontSize),
      bodySmall: TextStyle(fontSize: fontSize),
    );
  }
}
