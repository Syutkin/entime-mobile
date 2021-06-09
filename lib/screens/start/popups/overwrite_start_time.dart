import 'package:flutter/material.dart';

//Future<bool> overwriteStartTime(
//    BuildContext context, ProtocolSelectedState state) async {
Future<bool> overwriteStartTime({BuildContext context, String text}) async {
  return showDialog<bool>(
    context: context,
    barrierDismissible: true,
    // dialog is dismissible with a tap on the barrier
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Предупреждение'),
        content: Text(text),
//        content: Text('Участнику под номером '
//            '${state.previousStart.number} '
//            'уже установлена стартовая поправка '
//            '${state.previousStart.automaticcorrection}. '
//            'Обновить её на ${state.automaticStart.correction}?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text(MaterialLocalizations.of(context).okButtonLabel),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
          ),
        ],
      );
    },
  );
}
