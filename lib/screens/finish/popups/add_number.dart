import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:entime/blocs/protocol/protocol_bloc.dart';
import 'package:entime/models/models.dart';

Future<void> addNumberPopup(BuildContext context, FinishItem item) async {
  var _numberController = TextEditingController();
  _numberController.text = (item.number ?? '').toString();
  int number;
  final _protocolBloc = BlocProvider.of<ProtocolBloc>(context);
  final _formKey = GlobalKey<FormState>();
  return showDialog<int>(
    context: context,
    barrierDismissible: true,
    // dialog is dismissible with a tap on the barrier
    builder: (BuildContext context) {
      return AlertDialog(
        scrollable: true,
        title: Text('Введите номер финишировавшего участника'),
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
                controller: _numberController,
                validator: (value) {
                  number = int.tryParse(value);
                  if (number == null || number < 1) {
                    return 'Неверный номер';
                  }
                  return null;
                },
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
                _protocolBloc.add(ProtocolSetNumberToFinishTime(
                  id: item.id,
                  number: number,
                  finishTime: item.finishtime,
                ));
                Navigator.of(context).pop();
              }
            },
            child: Text(MaterialLocalizations.of(context).okButtonLabel),
          ),
          BlocListener<ProtocolBloc, ProtocolState>(
            listener: (context, state) async {
              if (state is ProtocolSelectedState && !state.updateFinishNumber) {
                print(
                    'state.updateFinishNumber is ${state.updateFinishNumber}');
                final bool update =
                    await updateFinishTimePopup(context, number);
                if (update != null && update) {
                  _protocolBloc
                      .add(ProtocolClearNumberAtFinish(number: number));
                  _protocolBloc.add(ProtocolSetNumberToFinishTime(
                    id: item.id,
                    number: number,
                    finishTime: item.finishtime,
                  ));
                }
              }
            },
            child: Container(),
          ),
        ],
      );
    },
  );
}

Future<bool> updateFinishTimePopup(BuildContext context, int number) async {
  return showDialog<bool>(
    context: context,
    barrierDismissible: true,
    // dialog is dismissible with a tap on the barrier
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Предупреждение'),
        content: Text(
          'Участнику с номером $number уже присвоено финишное время. Установить новое значение?'),
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
