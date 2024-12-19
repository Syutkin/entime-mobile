part of 'settings_popups.dart';

Future<int?> setDelayPopup(
  BuildContext context,
  int delay,
  String title,
) async {
  var newDelay = delay;

  final delayController = TextEditingController()..text = newDelay.toString();

  final formKey = GlobalKey<FormState>();

  return showDialog<int>(
    context: context,
    builder: (context) => AlertDialog(
      scrollable: true,
      title: Text(title),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                labelText: Localization.current.I18nSettings_delay,
              ),
              controller: delayController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null) {
                  return Localization.current.I18nSettings_incorrectDelay;
                }
                final integer = int.tryParse(value);
                if (integer == null || integer < 0) {
                  return Localization.current.I18nSettings_incorrectDelay;
                }
                newDelay = integer;
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
            Navigator.of(context).pop(newDelay);
          }
        },
      ),
    ),
  );
}
