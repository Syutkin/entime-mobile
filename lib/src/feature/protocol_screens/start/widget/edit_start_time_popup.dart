import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../common/helper/helper.dart';
import '../../../../common/widget/expanded_alert_dialog.dart';
import '../../../protocol/protocol.dart';

Future<void> editStartTime(BuildContext context, StartItem item) async {
  final automaticPhoneTimeController = TextEditingController();
  final manualCorrectionController = TextEditingController();
  final manualStartTimeController = TextEditingController();
  final automaticStartTimeController = TextEditingController();
  final automaticCorrectionController = TextEditingController();
  manualCorrectionController.text = (item.manualcorrection ?? '').toString();
  manualStartTimeController.text = item.manualstarttime ?? '';
  automaticCorrectionController.text =
      (item.automaticcorrection ?? '').toString();
  automaticStartTimeController.text = item.automaticstarttime ?? '';
  automaticPhoneTimeController.text = item.automaticphonetime ?? '';
  final formKey = GlobalKey<FormState>();

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

  StartItem? _updatedStartItem() {
    final automaticCorrection =
        int.tryParse(automaticCorrectionController.text);
    final manualCorrection = int.tryParse(manualCorrectionController.text);
    if (item.automaticcorrection != automaticCorrection ||
        (item.automaticstarttime ?? '') != automaticStartTimeController.text ||
        item.manualcorrection != manualCorrection ||
        (item.manualstarttime ?? '') != manualStartTimeController.text) {
      return item.copyWith(
        automaticcorrection: int.tryParse(automaticCorrectionController.text),
        automaticstarttime: automaticStartTimeController.text,
        manualcorrection: int.tryParse(manualCorrectionController.text),
        manualstarttime: manualStartTimeController.text,
      );
    }
    return null;
  }

  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    // dialog is dismissible with a tap on the barrier
    builder: (context) => ExpandedAlertDialog(
      width: MediaQuery.of(context).size.width * 0.9,
      scrollable: true,
      title: Text(
        item.name == null
            ? 'Участник №${item.number}'
            : '№${item.number}, ${item.name}',
      ),
      content: Form(
        key: formKey,
        onChanged: () {
          Form.of(primaryFocus!.context!)!.validate();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            item.category != null && item.category!.isNotEmpty
                ? Text(
                    'Категория: ${item.category}',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                : const SizedBox(),
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
              controller: automaticCorrectionController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                icon: Icon(MdiIcons.cpu64Bit),
                labelText: 'Поправка',
              ),
              validator: (value) => _validateCorrection(value),
            ),
            TextFormField(
              controller: automaticStartTimeController,
              keyboardType: TextInputType.datetime,
              decoration: const InputDecoration(
                labelText: 'Время старта',
                icon: Icon(MdiIcons.cpu64Bit),
              ),
              validator: (value) => _validateStartTime(value),
            ),
            TextFormField(
              controller: automaticPhoneTimeController,
//                keyboardType: TextInputType.datetime,
              decoration: const InputDecoration(
                labelText: 'Время старта на смартфоне',
                icon: Icon(MdiIcons.cellphone),
              ),
              readOnly: true,
//                validator: (value) => _validateStartTime(value),
            ),
            TextFormField(
              controller: manualCorrectionController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                icon: Icon(MdiIcons.handBackLeft),
                labelText: 'Поправка',
              ),
              validator: (value) => _validateCorrection(value),
            ),
            TextFormField(
              controller: manualStartTimeController,
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
            if (formKey.currentState!.validate()) {
              final newStartItem = _updatedStartItem();
              if (newStartItem != null) {
                context
                    .read<ProtocolBloc>()
                    .add(ProtocolUpdateItemInfoAtStart(item: newStartItem));
              }
              Navigator.of(context).pop();
            }
          },
          child: Text(MaterialLocalizations.of(context).saveButtonLabel),
        ),
      ],
    ),
  );
}
