import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:entime/blocs/blocs.dart';

Future<void> addRacerPopup(BuildContext context) async {
  var time =
      Duration(hours: DateTime.now().hour, minutes: DateTime.now().minute) +
          Duration(minutes: 1);
  int number;
  final _formKey = GlobalKey<FormState>();
  return showDialog<List>(
    context: context,
    barrierDismissible: true,
    // dialog is dismissible with a tap on the barrier
    builder: (BuildContext context) {
      return AlertDialog(
        //scrollable: true,
        title: Text('Добавить участника'),
        content: Form(
          key: _formKey,
          onChanged: () {
            Form.of(primaryFocus.context).validate();
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.number,
                autofocus: true,
                decoration: InputDecoration(labelText: 'Номер'),
                validator: (value) {
                  number = int.tryParse(value);
                  if (number == null || number < 1) {
                    return 'Неверный номер';
                  }
                  return null;
                },
              ),
              Flexible(
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
              if (_formKey.currentState.validate()) {
                // Форматирование Duration отсюда:
                // https://stackoverflow.com/questions/54775097/formatting-a-duration-like-hhmmss
                String starttime =
                    time.toString().split('.').first.padLeft(8, '0');
                BlocProvider.of<ProtocolBloc>(context)
//                    .add(ProtocolAddStartNumber(number: number, time: starttime));
                    .add(ProtocolAddStartNumber(
                        StartTime(starttime, number)));
                Navigator.of(context).pop();
              }
            },
            child: Text(MaterialLocalizations.of(context).okButtonLabel),
          ),
        ],
      );
    },
  );
}
