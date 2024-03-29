import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/widget/expanded_alert_dialog.dart';
import '../../protocol/protocol.dart';

Future<void> addRacerPopup(BuildContext context) async {
  final now = DateTime.now();
  final duration = Duration(hours: now.hour, minutes: now.minute) +
      const Duration(minutes: 1);
  var time = duration < const Duration(days: 1) ? duration : Duration.zero;
  int number = 0;
  final formKey = GlobalKey<FormState>();
  return showDialog<void>(
    context: context,
    builder: (context) => ExpandedAlertDialog(
      width: MediaQuery.of(context).size.width * 0.9,
      // scrollable: true,
      title: const Text('Добавить участника'),
      content: Form(
        key: formKey,
        onChanged: () {
          Form.of(primaryFocus!.context!)!.validate();
        },
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: const InputDecoration(labelText: 'Номер'),
              validator: (value) {
                if (value == null) {
                  return 'Неверный номер';
                }
                final int? num = int.tryParse(value);
                if (num == null || num < 1) {
                  return 'Неверный номер';
                }
                number = num;
                return null;
              },
            ),

            /// The CupertinoTimerPicker has a fixed size of 320 x 216, in logical pixels, with the exception
            /// of [CupertinoTimerPickerMode.hms], which is 330 x 216. If the parent widget
            /// provides more space than it needs, the picker will position itself according
            /// to its [alignment] property.
            Expanded(
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hm,
                initialTimerDuration: time,
                onTimerDurationChanged: (value) {
                  time = value;
                },
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        TextButton(
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              // Форматирование Duration отсюда:
              // https://stackoverflow.com/questions/54775097/formatting-a-duration-like-hhmmss
              final String starttime =
                  time.toString().split('.').first.padLeft(8, '0');
              BlocProvider.of<ProtocolBloc>(context)
//                    .add(ProtocolAddStartNumber(number: number, time: starttime));
                  .add(
                ProtocolAddStartNumber(
                  startTime: StartTime(starttime, number),
                ),
              );
              Navigator.of(context).pop();
            }
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}
