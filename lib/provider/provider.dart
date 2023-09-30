import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String local = "en";

  ThemeMode currenttheme = ThemeMode.light;

  changeLanguage(String langCode) {
    local = langCode;
    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) {
    if (currenttheme == newTheme) return;
    currenttheme = newTheme;
    notifyListeners();
  }

  bool isDark() {
    return currenttheme == ThemeMode.dark;
  }

  String Background() {
    return isDark() ? "assets/images/dark_bg.png" : "assets/images/bg3.png";
  }

  String Backsplash() {
    return isDark()
        ? "assets/images/splash_dark.png"
        : "assets/images/splashscreen.png";
  }

  String headsabha() {
    return isDark() ? " assets/images/head.png" : "assets/images/head.png";
  }

  String boadysabha() {
    return isDark()
        ? "assets/images/body_sebha_dark.png"
        : "assets/images/body.png";
  }
}
