import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    double height = textTheme.bodyText1.fontSize * 3;
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 3.0, // has the effect of softening the shadow
            spreadRadius: 1.0, // has the effect of extending the shadow
            offset: Offset(
                2.0, // horizontal, move right 10
                2.0, // vertical, move down 10
                ),
          )
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: textTheme.bodyText1.apply(color: colorScheme.onPrimary),
        ),
      ),
    );
  }
}
