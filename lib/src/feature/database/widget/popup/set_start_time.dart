part of '../start_list_page.dart';

class SetStartTimePopup extends StatefulWidget {
  const SetStartTimePopup({required this.item, super.key});

  final ParticipantAtStart item;

  @override
  State<SetStartTimePopup> createState() => _SetStartTimePopupState();
}

class _SetStartTimePopupState extends State<SetStartTimePopup> {
  final formKey = GlobalKey<FormState>();
  final minutesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final startTime = widget.item.startTime.toDateTime() ?? DateTime.now();
    var time = Duration(hours: startTime.hour, minutes: startTime.minute);
    return ExpandedAlertDialog(
      title: Text(Localization.current.I18nStart_startTime), //todo
      content: Form(
        key: formKey,
        child: Column(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(Localization.current.I18nStart_changeStartTimeInfo(widget.item.number, widget.item.startTime)),

            /// The CupertinoTimerPicker has a fixed size of 320 x 216, in logical pixels, with the exception
            /// of [CupertinoTimerPickerMode.hms], which is 330 x 216. If the parent widget
            /// provides more space than it needs, the picker will position itself according
            /// to its [alignment] property.
            Expanded(
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
      actions: cancelOkButtons(
        context: context,
        onCancelPressed: () {
          Navigator.of(context).pop();
        },
        onOkPressed: () {
          if (formKey.currentState!.validate()) {
            // Форматирование Duration отсюда:
            // https://stackoverflow.com/questions/54775097/formatting-a-duration-like-hhmmss
            final startTime = time.toString().split('.').first.padLeft(8, '0');
            context.read<DatabaseBloc>().add(
              DatabaseEvent.setStartTime(
                stageId: widget.item.stageId,
                participantId: widget.item.participantId,
                number: widget.item.number,
                startTime: startTime,
              ),
            );
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }
}
