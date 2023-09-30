import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String local = "en";

  changeLanguage(String langCode) {
    local = langCode;
    notifyListeners();
  }
}
