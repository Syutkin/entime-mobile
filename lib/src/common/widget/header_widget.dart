import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({required this.text, Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final double height = textTheme.bodyLarge!.fontSize! * 3;
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 3, // has the effect of softening the shadow
            spreadRadius: 1, // has the effect of extending the shadow
            offset: const Offset(
              2, // horizontal, move right 10
              2, // vertical, move down 10
            ),
          )
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
