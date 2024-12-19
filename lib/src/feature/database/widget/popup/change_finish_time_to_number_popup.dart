import 'package:flutter/material.dart';

import '../../../../common/localization/localization.dart';

Future<bool?> updateFinishTimePopup(BuildContext context, int number) async =>
    showDialog<bool>(
      context: context,
      builder: (context) => UpdateFinishTimePopup(number: number),
    );

class UpdateFinishTimePopup extends StatelessWidget {
  const UpdateFinishTimePopup({
    required this.number,
    super.key,
  });

  final int number;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(Localization.current.I18nProtocol_warning),
      content: Text(Localization.current.I18nProtocol_updateNumber(number)),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    );
  }
}