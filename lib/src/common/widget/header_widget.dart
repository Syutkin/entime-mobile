import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final height = textTheme.bodyLarge!.fontSize! * 3;
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            blurRadius: 3, // has the effect of softening the shadow
            spreadRadius: 1, // has the effect of extending the shadow
            offset: const Offset(
              2, // horizontal, move right 10
              2, // vertical, move down 10
            ),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: textTheme.bodyLarge!.apply(color: colorScheme.onPrimary),
        ),
      ),
    );
  }
}
