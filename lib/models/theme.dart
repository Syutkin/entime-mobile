import 'package:flutter/material.dart';

// ToDo: use new enums from dart 2.17
enum AppTheme {
  lightBlue,
  darkBlue,
  lightRed,
  darkRed,
}

AppTheme themeFromString(String? type) {
  if (type == null) {
    return AppTheme.lightBlue;
  }
  switch (type) {
    case 'lightBlue':
      return AppTheme.lightBlue;
    case 'darkBlue':
      return AppTheme.darkBlue;
    case 'lightRed':
      return AppTheme.lightRed;
    case 'darkRed':
      return AppTheme.darkRed;
    default:
      return AppTheme.lightBlue;
  }
}

extension AppThemeStr on AppTheme {
  String get stringify {
    switch (this) {
      case AppTheme.lightBlue:
        return 'lightBlue';
      case AppTheme.darkBlue:
        return 'darkBlue';
      case AppTheme.lightRed:
        return 'lightRed';
      case AppTheme.darkRed:
        return 'darkRed';
    }
  }

  String display(/*BuildContext context*/) {
    switch (this) {
      case AppTheme.lightBlue:
        return 'Синяя светлая тема';
      case AppTheme.darkBlue:
        return 'Синяя тёмная тема';
      case AppTheme.lightRed:
        return 'Красная светлая тема';
      case AppTheme.darkRed:
        return 'Красная тёмная тема';
    }
  }
}

final appThemeData = {
  AppTheme.lightBlue: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      accentColor: Colors.blue,
    ).copyWith(secondary: Colors.blue),
    toggleableActiveColor: Colors.blue,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue))),
    indicatorColor: Colors.blue,
  ),
  AppTheme.darkBlue: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
      accentColor: Colors.blue,
    ).copyWith(secondary: Colors.blue),
    toggleableActiveColor: Colors.blue,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue))),
    indicatorColor: Colors.blue,
  ),
  AppTheme.lightRed: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.red,
      brightness: Brightness.light,
      accentColor: Colors.red,
    ).copyWith(secondary: Colors.red),
    toggleableActiveColor: Colors.red,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red))),
    indicatorColor: Colors.red,
  ),
  AppTheme.darkRed: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.red,
      brightness: Brightness.dark,
      accentColor: Colors.red,
    ).copyWith(secondary: Colors.red),
    toggleableActiveColor: Colors.red,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red))),
    indicatorColor: Colors.red,
  ),
};
