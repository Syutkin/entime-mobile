part of '../start_list_page.dart';

Future<void> editStartTime(
  BuildContext context,
  ParticipantAtStart item,
) async {
  final automaticStartTimeController = TextEditingController();
  final automaticPhoneTimeController = TextEditingController();
  final manualCorrectionController = TextEditingController();
  final manualStartTimeController = TextEditingController();
  final startTimeController = TextEditingController();
  final automaticCorrectionController = TextEditingController();
  startTimeController.text = item.startTime;
  manualCorrectionController.text = (item.manualCorrection ?? '').toString();
  manualStartTimeController.text = item.manualStartTime ?? '';
  automaticCorrectionController.text =
      (item.automaticCorrection ?? '').toString();
  automaticStartTimeController.text = item.automaticStartTime ?? '';
  automaticPhoneTimeController.text =
      item.timestamp != null
          ? DateFormat(longTimeFormat).format(item.timestamp!)
          : '';
  final formKey = GlobalKey<FormState>();

  String? validateCorrection(String? value) {
    if (value == '' || value == null) {
      return null;
    }
    if (int.tryParse(value) == null) {
      return Localization.current.I18nStart_incorrectCorrection;
    }
    return null;
  }

  String? validateStartTime(String? value) {
    if (value == '' || value == null) {
      return null;
    }
    if (value.toDateTime() == null) {
      return Localization.current.I18nStart_incorrectTime;
    }
    return null;
  }

  return showDialog<void>(
    context: context,
    builder:
        (context) => ExpandedAlertDialog(
          width: MediaQuery.sizeOf(context).width * 0.9,
          scrollable: true,
          title: Text(
            item.name.isEmpty
                ? Localization.current.I18nStart_participantNumber(item.number)
                : Localization.current.I18nStart_participantNumberWithName(
                  item.number,
                  item.name,
                ),
          ),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (item.category != null && item.category!.isNotEmpty)
                  Text(
                    Localization.current.I18nStart_participantCategory(
                      item.category!,
                    ),
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                else
                  const SizedBox(),
                if (item.nickname != null && item.nickname!.isNotEmpty)
                  Text(
                    Localization.current.I18nStart_participantNickname(
                      item.nickname!,
                    ),
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                else
                  const SizedBox(),
                if (item.city != null && item.city!.isNotEmpty)
                  Text(
                    Localization.current.I18nStart_participantCity(item.city!),
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                else
                  const SizedBox(),
                if (item.team != null && item.team!.isNotEmpty)
                  Text(
                    Localization.current.I18nStart_participantTeam(item.team!),
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                else
                  const SizedBox(),
                if (item.birthday != null && item.birthday!.isNotEmpty)
                  Text(
                    Localization.current.I18nStart_participantYear(
                      item.birthday!,
                    ),
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                else
                  const SizedBox(),
                TextFormField(
                  controller: startTimeController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: Localization.current.I18nStart_startTime,
                    icon: Icon(MdiIcons.clock),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateStartTime,
                ),
                TextFormField(
                  controller: automaticCorrectionController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    icon: Icon(MdiIcons.cpu64Bit),
                    labelText: Localization.current.I18nCore_correction,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateCorrection,
                ),
                TextFormField(
                  controller: automaticStartTimeController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: Localization.current.I18nStart_startTime,
                    icon: Icon(MdiIcons.cpu64Bit),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateStartTime,
                ),
                TextFormField(
                  controller: automaticPhoneTimeController,
                  // keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText:
                        Localization.current.I18nStart_startTimeAtSmartphone,
                    icon: Icon(MdiIcons.cellphone),
                  ),
                  readOnly: true,
                  // validator: (value) => validateStartTime(value),
                ),
                TextFormField(
                  controller: manualCorrectionController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    icon: Icon(MdiIcons.handBackLeft),
                    labelText: Localization.current.I18nCore_correction,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateCorrection,
                ),
                TextFormField(
                  controller: manualStartTimeController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: Localization.current.I18nStart_startTime,
                    icon: Icon(MdiIcons.handBackLeft),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateStartTime,
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
                final automaticCorrection = int.tryParse(
                  automaticCorrectionController.text,
                );
                final manualCorrection = int.tryParse(
                  manualCorrectionController.text,
                );
                context.read<DatabaseBloc>().add(
                  DatabaseEvent.updateStartingInfo(
                    startTime: startTimeController.text,
                    automaticStartTime: automaticStartTimeController.text,
                    automaticCorrection: automaticCorrection,
                    manualStartTime: manualStartTimeController.text,
                    manualCorrection: manualCorrection,
                    stageId: item.stageId,
                    participantId: item.participantId,
                  ),
                );
                Navigator.of(context).pop();
              }
            },
          ),
        ),
  );
}
