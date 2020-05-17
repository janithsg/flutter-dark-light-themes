import 'package:flutter/material.dart';
import './AppTheme.dart';

enum ThemeType { Light, Dark }

class ThemeModel extends ChangeNotifier {
  ThemeData currentTheme = AppTheme.lightTheme;
  ThemeType _themeType = ThemeType.Light;

  toggleTheme() {
    if (_themeType == ThemeType.Dark) {
      currentTheme = AppTheme.lightTheme;
      _themeType = ThemeType.Light;
      return notifyListeners();
    } else {
      currentTheme = AppTheme.darkTheme;
      _themeType = ThemeType.Dark;
      return notifyListeners();
    }
  }
}
