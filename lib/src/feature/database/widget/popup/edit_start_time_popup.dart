part of '../start_list_page.dart';

Future<void> editStartTime(BuildContext context, ParticipantAtStart item) async {
  final databaseBloc = context.read<DatabaseBloc>();

  final automaticStartTimeController = TextEditingController();
  final timestampController = TextEditingController();
  final manualCorrectionController = TextEditingController();
  final manualStartTimeController = TextEditingController();
  final startTimeController = TextEditingController();
  final timestampCorrectionController = TextEditingController();
  final automaticCorrectionController = TextEditingController();
  startTimeController.text = item.startTime;
  manualCorrectionController.text = (item.manualCorrection ?? '').toString();
  manualStartTimeController.text = item.manualStartTime ?? '';
  automaticCorrectionController.text = (item.automaticCorrection ?? '').toString();
  automaticStartTimeController.text = item.automaticStartTime ?? '';
  timestampController.text = item.timestamp != null ? DateFormat(longTimeFormat).format(item.timestamp!) : '';
  timestampCorrectionController.text = (item.timestampCorrection ?? '').toString();
  final formKey = GlobalKey<FormState>();

  return showDialog<void>(
    context: context,
    builder: (context) => ExpandedAlertDialog(
      width: MediaQuery.sizeOf(context).width * 0.9,
      scrollable: true,
      title: Text(
        item.name.isEmpty
            ? Localization.current.I18nStart_participantNumber(item.number)
            : Localization.current.I18nStart_participantNumberWithName(item.number, item.name),
      ),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (item.category != null && item.category!.isNotEmpty)
              Text(
                Localization.current.I18nStart_participantCategory(item.category!),
                style: Theme.of(context).textTheme.titleMedium,
              )
            else
              const SizedBox(),
            if (item.nickname != null && item.nickname!.isNotEmpty)
              Text(
                Localization.current.I18nStart_participantNickname(item.nickname!),
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
                Localization.current.I18nStart_participantYear(item.birthday!),
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
              controller: timestampController,
              // keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: Localization.current.I18nStart_startTimestamp,
                icon: Icon(MdiIcons.cellphone),
              ),
              readOnly: true,
              // validator: (value) => validateStartTime(value),
            ),
            TextFormField(
              controller: timestampCorrectionController,
              // keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(MdiIcons.cellphone),
                labelText: Localization.current.I18nCore_correction,
              ),
              readOnly: true,
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
              controller: manualStartTimeController,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: Localization.current.I18nStart_startTime,
                icon: Icon(MdiIcons.handBackLeft),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: validateStartTime,
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
            final timestampCorrection = int.tryParse(timestampCorrectionController.text);
            final automaticCorrection = int.tryParse(automaticCorrectionController.text);
            final manualCorrection = int.tryParse(manualCorrectionController.text);

            databaseBloc.add(
              DatabaseEvent.updateStartingInfo(
                startTime: startTimeController.text,
                timestampCorrection: timestampCorrection,
                automaticStartTime: automaticStartTimeController.text.isNotEmpty
                    ? automaticStartTimeController.text
                    : null,
                automaticCorrection: automaticCorrection,
                manualStartTime: manualStartTimeController.text.isNotEmpty ? manualStartTimeController.text : null,
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
