import 'package:flutter/material.dart';

class CountdownWidget extends StatelessWidget {
  final double size;
  final String text;
  final double elevation;

  const CountdownWidget({
    Key? key,
    this.size = 75,
    this.text = '',
    this.elevation = 6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final FloatingActionButtonThemeData floatingActionButtonTheme =
        theme.floatingActionButtonTheme;
    final Color foregroundColor = floatingActionButtonTheme.foregroundColor ??
        theme.colorScheme.onSecondary;
    final Color backgroundColor = floatingActionButtonTheme.backgroundColor ??
        theme.colorScheme.secondary;

    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      margin: const EdgeInsets.all(8),
      child: Material(
        elevation: elevation, //default to FloatingButtonElevation
        type: MaterialType.circle,
        color: backgroundColor,
        child: FittedBox(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              text,
              style: floatingActionButtonTheme.extendedTextStyle ??
                  theme.textTheme.labelLarge!.copyWith(color: foregroundColor),
            ),
          ),
        ),
      ),
    );
  }
}
