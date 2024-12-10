part of 'settings_popups.dart';

Future<int?> setFinishDifferencePopup(
  BuildContext context, {
  required int difference,
  required String title,
}) async {
  var newDifference = difference;

  final delayController = TextEditingController()
    ..text = newDifference.toString();

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
                labelText: Localization.current.I18nSettings_finishDifference,
              ),
              controller: delayController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null) {
                  return Localization
                      .current.I18nSettings_incorrectFinishDifference;
                }
                final integer = int.tryParse(value);
                if (integer == null || integer < 0) {
                  return Localization
                      .current.I18nSettings_incorrectFinishDifference;
                }
                newDifference = integer;
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
              Navigator.of(context).pop(newDifference);
            }
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}
