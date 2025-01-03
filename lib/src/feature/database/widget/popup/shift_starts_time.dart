part of '../start_list_page.dart';

Future<void> shiftStartsTime({
  required BuildContext context,
  required ParticipantAtStart item,
}) async => showDialog<void>(
  context: context,
  builder: (context) => ShiftStartsTimePopup(item: item),
);

class ShiftStartsTimePopup extends StatefulWidget {
  const ShiftStartsTimePopup({required this.item, super.key});

  final ParticipantAtStart item;

  @override
  State<ShiftStartsTimePopup> createState() => _ShiftStartsTimePopupState();
}

class _ShiftStartsTimePopupState extends State<ShiftStartsTimePopup> {
  final formKey = GlobalKey<FormState>();
  final minutesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ExpandedAlertDialog(
      title: Text(Localization.current.I18nCore_warning),
      content: Form(
        key: formKey,
        child: Column(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Localization.current.I18nStart_shiftStartsTimeFromNumber(
                widget.item.number,
                widget.item.startTime,
              ),
            ),
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: Localization.current.I18nStart_shiftMinutes,
              ),
              keyboardType: TextInputType.number,
              controller: minutesController,
              validator: validateShift,
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
            final minutes = int.tryParse(minutesController.text);
            if (minutes != null) {
              context.read<DatabaseBloc>().add(
                DatabaseEvent.shiftStartsTime(
                  stageId: widget.item.stageId,
                  minutes: minutes,
                  fromTime: widget.item.startTime,
                ),
              );
            }
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }
}
