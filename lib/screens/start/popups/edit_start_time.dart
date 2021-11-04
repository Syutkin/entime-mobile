import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:entime/blocs/protocol/protocol_bloc.dart';
import 'package:entime/models/models.dart';
import 'package:entime/utils/helper.dart';
import 'package:entime/widgets/widgets.dart';

Future<void> editStartTime(BuildContext context, StartItem item) async {
  var _automaticPhoneTimeController = TextEditingController();
  var _manualCorrectionController = TextEditingController();
  var _manualStartTimeController = TextEditingController();
  var _automaticStartTimeController = TextEditingController();
  var _automaticCorrectionController = TextEditingController();
  _manualCorrectionController.text = (item.manualcorrection ?? '').toString();
  _manualStartTimeController.text = item.manualstarttime ?? '';
  _automaticCorrectionController.text =
      (item.automaticcorrection ?? '').toString();
  _automaticStartTimeController.text = item.automaticstarttime ?? '';
  _automaticPhoneTimeController.text = item.automaticphonetime ?? '';
  final _formKey = GlobalKey<FormState>();

  String? _validateCorrection(String? value) {
    if (value == '' || value == null) {
      return null;
    }
    if (int.tryParse(value) == null) {
      return 'Неверное значение поправки';
    }
    return null;
  }

  String? _validateStartTime(String? value) {
    if (value == '' || value == null) {
      return null;
    }
    if (strTimeToDateTime(value) == null) {
      return 'Неверное значение времени';
    }
    return null;
  }

  bool _updateAllStart() {
    bool update = false;
    if (item.automaticcorrection !=
        int.tryParse(_automaticCorrectionController.text)) {
      item.automaticcorrection =
          int.tryParse(_automaticCorrectionController.text);
      update = true;
    }
    if ((item.automaticstarttime ?? '') != _automaticStartTimeController.text) {
      item.automaticstarttime = _automaticStartTimeController.text;
      update = true;
    }
    if (item.manualcorrection !=
        int.tryParse(_manualCorrectionController.text)) {
      item.manualcorrection = int.tryParse(_manualCorrectionController.text);
      update = true;
    }
    if ((item.manualstarttime ?? '') != _manualStartTimeController.text) {
      item.manualstarttime = _manualStartTimeController.text;
      update = true;
    }
    return update;
  }

  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    // dialog is dismissible with a tap on the barrier
    builder: (BuildContext context) {
      return ExpandedAlertDialog(
        width: MediaQuery.of(context).size.width * 0.9,
        scrollable: true,
        title: Text(item.name == null
            ? 'Участник №${item.number}'
            : '№${item.number}, ${item.name}'),
        content: Form(
          key: _formKey,
          onChanged: () {
            Form.of(primaryFocus!.context!)!.validate();
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              item.nickname != null && item.nickname!.isNotEmpty
                  ? Text(
                      'Никнейм: ${item.nickname}',
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  : const SizedBox(),
              item.city != null && item.city!.isNotEmpty
                  ? Text(
                      'Город: ${item.city}',
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  : const SizedBox(),
              item.team != null && item.team!.isNotEmpty
                  ? Text(
                      'Команда: ${item.team}',
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  : const SizedBox(),
              item.age != null && item.age!.isNotEmpty
                  ? Text(
                      'Возраст: ${item.age}',
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  : const SizedBox(),
              TextFormField(
                controller: _automaticCorrectionController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(MdiIcons.cpu64Bit),
                  labelText: 'Поправка',
                ),
                validator: (value) => _validateCorrection(value),
              ),
              TextFormField(
                controller: _automaticStartTimeController,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: 'Время старта',
                  icon: Icon(MdiIcons.cpu64Bit),
                ),
                validator: (value) => _validateStartTime(value),
              ),
              TextFormField(
                controller: _automaticPhoneTimeController,
//                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: 'Время старта на смартфоне',
                  icon: Icon(MdiIcons.cellphone),
                ),
                readOnly: true,
//                validator: (value) => _validateStartTime(value),
              ),
              TextFormField(
                controller: _manualCorrectionController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(MdiIcons.handBackLeft),
                  labelText: 'Поправка',
                ),
                validator: (value) => _validateCorrection(value),
              ),
              TextFormField(
                controller: _manualStartTimeController,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: 'Время старта',
                  icon: Icon(MdiIcons.handBackLeft),
                ),
                validator: (value) => _validateStartTime(value),
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
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (_updateAllStart()) {
                  BlocProvider.of<ProtocolBloc>(context)
                      .add(ProtocolUpdateItemInfoAtStart(item: item));
                }
                Navigator.of(context).pop();
              }
            },
            child: Text(MaterialLocalizations.of(context).saveButtonLabel),
          ),
        ],
      );
    },
  );
}
