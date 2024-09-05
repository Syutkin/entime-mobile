import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/localization/localization.dart';
import '../../../protocol/protocol.dart';

Future<void> addFinishNumberPopup(BuildContext context, FinishItem item) async {
  final numberController = TextEditingController()
    ..text = (item.number ?? '').toString();
  int number = 0;
  final protocolBloc = BlocProvider.of<ProtocolBloc>(context);
  final formKey = GlobalKey<FormState>();
  return showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      scrollable: true,
      title: Text(Localization.current.I18nProtocol_enterFinishNumber),
      content: Form(
        key: formKey,
        onChanged: () {
          Form.of(primaryFocus!.context!).validate();
        },
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
              protocolBloc.add(
                ProtocolSetNumberToFinishTime(
                  id: item.id,
                  number: number,
                  finishTime: item.finishtime,
                ),
              );
              Navigator.of(context).pop();
            }
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
        BlocListener<ProtocolBloc, ProtocolState>(
          listener: (context, state) async {
            if (state is ProtocolSelectedState &&
                state.updateFinishNumber != null &&
                !state.updateFinishNumber!) {
              final bool? update = await updateFinishTimePopup(context, number);
              if (update != null && update) {
                protocolBloc
                  ..add(ProtocolClearNumberAtFinish(number: number))
                  ..add(
                    ProtocolSetNumberToFinishTime(
                      id: item.id,
                      number: number,
                      finishTime: item.finishtime,
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
