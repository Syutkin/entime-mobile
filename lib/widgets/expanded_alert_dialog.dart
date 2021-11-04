import 'package:flutter/material.dart';

class ExpandedAlertDialog extends StatelessWidget {
  final double? width;
  final double? height;

  final bool scrollable;
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;

  const ExpandedAlertDialog({
    Key? key,
    this.height,
    this.width,
    this.scrollable = false,
    this.title,
    this.content,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: scrollable,
      title: title,
      content: SizedBox(
        width: width,
        height: height,
        child: content,
      ),
      actions: actions,
    );
  }
}
