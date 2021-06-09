import 'package:flutter/material.dart';

enum AppTheme {
  LightBlue,
  DarkBlue,
  LightRed,
  DarkRed,
}

AppTheme themeFromString(String type) {
  if (type == null) return AppTheme.LightBlue;
  switch (type) {
    case 'LightBlue':
      return AppTheme.LightBlue;
    case 'DarkBlue':
      return AppTheme.DarkBlue;
    case 'LightRed':
      return AppTheme.LightRed;
    case 'DarkRed':
      return AppTheme.DarkRed;
    default:
      return AppTheme.LightBlue;
  }
}

extension AppThemeStr on AppTheme {
  String get stringify {
    switch (this) {
      case AppTheme.LightBlue:
        return 'LightBlue';
      case AppTheme.DarkBlue:
        return 'DarkBlue';
      case AppTheme.LightRed:
        return 'LightRed';
      case AppTheme.DarkRed:
        return 'DarkRed';
    }
    return null;
  }

  String display(/*BuildContext context*/) {
    switch (this) {
      case AppTheme.LightBlue:
        return 'Синяя светлая тема';
      case AppTheme.DarkBlue:
        return 'Синяя тёмная тема';
      case AppTheme.LightRed:
        return 'Красная светлая тема';
      case AppTheme.DarkRed:
        return 'Красная тёмная тема';
    }
    return null;
  }
}

final appThemeData = {
  AppTheme.LightBlue: ThemeData.light(),
  AppTheme.DarkBlue: ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
//    primaryColor: Colors.red,
//    primaryColorBrightness: Brightness.dark,
    toggleableActiveColor: Colors.blue,
    accentColor: Colors.blue,
    accentColorBrightness: Brightness.dark,
  ),
  AppTheme.LightRed: ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.red,
//    primaryColor: Colors.red,
//    primaryColorBrightness: Brightness.dark,
    accentColor: Colors.red,
    accentColorBrightness: Brightness.dark,
//    scaffoldBackgroundColor: Colors.black,
//    bottomSheetTheme: BottomSheetThemeData(
//      backgroundColor: Colors.black,
//    ),
  ),
  AppTheme.DarkRed: ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.red,
//    primaryColor: Colors.red,
//    primaryColorBrightness: Brightness.dark,
    buttonColor: Colors.red,
    accentColor: Colors.red,
    accentColorBrightness: Brightness.dark,
    toggleableActiveColor: Colors.red,
//    scaffoldBackgroundColor: Colors.black,
//    bottomSheetTheme: BottomSheetThemeData(
//      backgroundColor: Colors.black,
//    ),
  ),
};

