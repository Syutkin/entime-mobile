part of '../start_list_page.dart';

Future<void> addRacerPopup({
  required BuildContext context,
  required Stage stage,
}) async {
  final now = DateTime.now();
  final duration = Duration(hours: now.hour, minutes: now.minute) +
      const Duration(minutes: 1);
  var time = duration < const Duration(days: 1) ? duration : Duration.zero;
  int number = 0;
  final formKey = GlobalKey<FormState>();
  return showDialog<void>(
    context: context,
    builder: (context) => ExpandedAlertDialog(
      width: MediaQuery.of(context).size.width * 0.9,
      // scrollable: true,
      title: Text(Localization.current.I18nStart_addParticipant),
      content: Form(
        key: formKey,
        onChanged: () {
          final formState = primaryFocus?.context;
          if (formState != null) {
            Form.of(formState)?.validate();
          }
        },
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                labelText: Localization.current.I18nProtocol_number,
              ),
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
              // Форматирование Duration отсюда:
              // https://stackoverflow.com/questions/54775097/formatting-a-duration-like-hhmmss
              final String startTime =
                  time.toString().split('.').first.padLeft(8, '0');
              context.read<DatabaseBloc>().add(
                    DatabaseEvent.addStartNumber(
                      stage: stage,
                      number: number,
                      startTime: startTime,
                    ),
                  );
              Navigator.of(context).pop();
            }
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}
