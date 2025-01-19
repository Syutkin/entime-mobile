import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/localization/localization.dart';
import '../../../../common/widget/cancel_ok_buttons.dart';
import '../../bloc/database_bloc.dart';
import '../../drift/app_database.dart';

Future<void> addFinishNumberPopup(BuildContext context, Finish item) async {
  final numberController = TextEditingController()
    ..text = (item.number ?? '').toString();
  var number = 0;
  final databaseBloc = context.read<DatabaseBloc>();
  final finishId = item.id;
  final finishTime = item.finishTime;
  final stage = databaseBloc.state.stage;

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
                  final num = int.tryParse(value);
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
        actions: cancelOkButtons(
          context: context,
          onCancelPressed: () {
            Navigator.of(context).pop();
          },
          onOkPressed: () {
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
        ),
      ),
    );
  }
}
