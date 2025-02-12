import 'package:flutter/material.dart';

class CountdownWidget extends StatelessWidget {
  const CountdownWidget({super.key, this.size = 75, this.text = '', this.elevation = 6});

  final double size;
  final String text;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final floatingActionButtonTheme = theme.floatingActionButtonTheme;
    final foregroundColor = floatingActionButtonTheme.foregroundColor ?? theme.colorScheme.onPrimaryContainer;
    final backgroundColor = floatingActionButtonTheme.backgroundColor ?? theme.colorScheme.primaryContainer;

    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(shape: BoxShape.circle),
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
              style:
                  floatingActionButtonTheme.extendedTextStyle ??
                  theme.textTheme.labelLarge!.copyWith(color: foregroundColor),
            ),
          ),
        ),
      ),
    );
  }
}
