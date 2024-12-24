import 'package:flutter/material.dart';

List<Widget> cancelOkButtons({
  required BuildContext context,
  required VoidCallback? onCancelPressed,
  required VoidCallback? onOkPressed,
}) {
  return <Widget>[
    TextButton(
      onPressed: onCancelPressed?.call,
      child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
    ),
    TextButton(
      onPressed: onOkPressed?.call,
      child: Text(MaterialLocalizations.of(context).okButtonLabel),
    ),
  ];
}
