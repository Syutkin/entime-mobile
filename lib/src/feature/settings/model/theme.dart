import 'package:flutter/material.dart';

ThemeData appThemeData({
  ColorSeed seedColor = ColorSeed.blue,
  Brightness brightness = Brightness.light,
  double contrastLevel = -1.0,
  DynamicSchemeVariant dynamicSchemeVariant = DynamicSchemeVariant.vibrant,

  /// Set surface color to black for all dark themes
  bool isOLEDBackground = false,
}) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor.color,
      brightness: brightness,
      contrastLevel: contrastLevel,
      dynamicSchemeVariant: dynamicSchemeVariant,
      surface: brightness == Brightness.dark && isOLEDBackground ? Colors.black : null,
    ),
    // For supporting predictive back
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        // Use PredictiveBackPageTransitionsBuilder to get the predictive back route transition!
        TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
      },
    ),
  );
}

enum ColorSeed {
  baseColor('M3 Baseline', Color(0xff6750a4)),
  indigo('Indigo', Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink),
  brightBlue('Bright Blue', Color(0xFF0000FF)),
  brightGreen('Bright Green', Color(0xFF00FF00)),
  brightRed('Bright Red', Color(0xFFFF0000));

  const ColorSeed(this.label, this.color);

  final String label;
  final Color color;
}
