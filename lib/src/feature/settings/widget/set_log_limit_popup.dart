part of 'settings_popups.dart';

Future<int?> setLogLimitPopup(BuildContext context, int limit) async {
  int newLimit = limit;

  final delayController = TextEditingController()
    ..text = (newLimit < 0 ? '' : newLimit).toString();

  final formKey = GlobalKey<FormState>();

  return showDialog<int>(
    context: context,
    builder: (context) => AlertDialog(
      scrollable: true,
      title: Text(Localization.current.I18nSettings_journalLinesNumberPopup),
      content: Form(
        key: formKey,
        onChanged: () {
          Form.of(primaryFocus!.context!)!.validate();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                labelText: Localization.current.I18nSettings_numberOfLines,
              ),
              controller: delayController,
              validator: (value) {
                if (value == null || value == '' || value == '-') {
                  newLimit = -1;
                  return null;
                }
                final int? val = int.tryParse(value);
                if (val == null) {
                  return Localization.current.I18nSettings_enterNumber;
                }
                newLimit = val;
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
              if (newLimit < -1) {
                newLimit = -1;
              }
              Navigator.of(context).pop(newLimit);
            }
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}
