import 'package:flutter/material.dart';

enum AppTheme {
  LightBlue,
  DarkBlue,
  LightRed,
  DarkRed,
}

AppTheme themeFromString(String? type) {
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
  }
}

final appThemeData = {
  AppTheme.LightBlue: ThemeData.light(),
  AppTheme.DarkBlue: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
      accentColor: Colors.blue,
    ).copyWith(secondary: Colors.blue),
    toggleableActiveColor: Colors.blue,
    indicatorColor: Colors.blue,
  ),
  AppTheme.LightRed: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.red,
      brightness: Brightness.light,
      accentColor: Colors.red,
    ).copyWith(secondary: Colors.red),
    toggleableActiveColor: Colors.red,
    indicatorColor: Colors.red,
  ),
  AppTheme.DarkRed: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.red,
      brightness: Brightness.dark,
      accentColor: Colors.red,
    ).copyWith(secondary: Colors.red),
    toggleableActiveColor: Colors.red,
    indicatorColor: Colors.red,
  ),
};
