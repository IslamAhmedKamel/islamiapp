import 'package:flutter/material.dart';

class ProviderSettings extends ChangeNotifier {
  String local = 'en';
  ThemeMode theme = ThemeMode.light;

  changeLanguage(String lanCode) {
    local = lanCode;
    notifyListeners();
  }

  changemode(ThemeMode modeTheme) {
    theme = modeTheme;
    notifyListeners();
  }
}
