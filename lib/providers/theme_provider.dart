import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  String _fontFamily = 'Roboto';
  double _fontSize = 16.0;

  ThemeMode get themeMode => _themeMode;
  String get fontFamily => _fontFamily;
  double get fontSize => _fontSize;

  void toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void changeFont(String font) {
    _fontFamily = font;
    notifyListeners();
  }

  void changeFontSize(double size) {
    _fontSize = size;
    notifyListeners();
  }
}
