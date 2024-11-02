import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/localization/localization.dart';
import '../../bloc/database_bloc.dart';
import '../../drift/app_database.dart';

Future<void> addFinishNumberPopup(BuildContext context, Finish item) async {
  final numberController = TextEditingController()
    ..text = (item.number ?? '').toString();
  int number = 0;
  final databaseBloc = context.read<DatabaseBloc>();
  final finishId = item.id;
  final finishTime = item.finishTime;
  Stage? stage = databaseBloc.state.stage;

  final formKey = GlobalKey<FormState>();
  if (stage != null) {
    return showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        scrollable: true,
        title: Text(Localization.current.I18nProtocol_enterFinishNumber),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.number,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: Localization.current.I18nProtocol_number,
                ),
                controller: numberController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null) {
                    return Localization.current.I18nProtocol_incorrectNumber;
                  }
                  final int? num = int.tryParse(value);
                  if (num == null || num < 1) {
                    return Localization.current.I18nProtocol_incorrectNumber;
                  }
                  number = num;
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
              if (formKey.currentState!.validate()) {
                databaseBloc.add(
                  DatabaseEvent.addNumberToFinish(
                    finishId: finishId,
                    number: number,
                    finishTime: finishTime,
                    stage: stage,
                  ),
                );
                Navigator.of(context).pop();
              }
            },
            child: Text(MaterialLocalizations.of(context).okButtonLabel),
          ),
          BlocListener<DatabaseBloc, DatabaseState>(
            listener: (context, state) async {
              if (state.updateFinishNumber != null &&
                  !state.updateFinishNumber!) {
                final bool? update =
                    await updateFinishTimePopup(context, number);
                if (update != null && update) {
                  databaseBloc
                    ..add(DatabaseEvent.clearNumberAtFinish(
                      stage: stage,
                      number: number,
                    ))
                    ..add(
                      DatabaseEvent.addNumberToFinish(
                        finishId: finishId,
                        number: number,
                        finishTime: finishTime,
                        stage: stage,
                      ),
                    );
                }
              }
            },
            child: Container(),
          ),
        ],
      ),
    );
  }
}

Future<bool?> updateFinishTimePopup(BuildContext context, int number) async =>
    showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(Localization.current.I18nProtocol_warning),
        content: Text(Localization.current.I18nProtocol_updateNumber(number)),
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
      ),
    );
