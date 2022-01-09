import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  setTheme() {
    _darkTheme = !_darkTheme;
    notifyListeners();
  }
}
