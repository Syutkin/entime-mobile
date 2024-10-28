import 'package:flutter/material.dart';

class ExpandedAlertDialog extends StatelessWidget {
  final double? width;
  final double? height;

  final bool scrollable;
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;

  const ExpandedAlertDialog({
    super.key,
    this.height,
    this.width,
    this.scrollable = false,
    this.title,
    this.content,
    this.actions,
  });

  @override
  Widget build(BuildContext context) => AlertDialog(
        scrollable: scrollable,
        title: title,
        content: SizedBox(
          width: width ?? MediaQuery.of(context).size.width * 0.9,
          height: height,
          child: content,
        ),
        actions: actions,
      );
}
