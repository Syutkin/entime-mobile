import 'package:flutter/material.dart';

import '../../../common/localization/localization.dart';

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

  String str(/*BuildContext context*/) {
    switch (this) {
      case AppTheme.lightBlue:
        return Localization.current.I18nSettings_lightBlue;
      case AppTheme.darkBlue:
        return Localization.current.I18nSettings_darkBlue;
      case AppTheme.lightRed:
        return Localization.current.I18nSettings_lightRed;
      case AppTheme.darkRed:
        return Localization.current.I18nSettings_darkRed;
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
