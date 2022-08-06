part of 'settings_popups.dart';

Future<int?> setDelayPopup(
    BuildContext context, int delay, String title) async {
  int newDelay = delay;

  final delayController = TextEditingController();
  delayController.text = newDelay.toString();

  final formKey = GlobalKey<FormState>();

  return showDialog<int>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (context) {
        return AlertDialog(
          scrollable: true,
          title: Text(title),
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
                  decoration: InputDecoration(labelText: Localization.current.I18nSettings_delay),
                  controller: delayController,
                  validator: (value) {
                    if (value == null) {
                      return Localization.current.I18nSettings_incorrectDelay;
                    }
                    final int? integer = int.tryParse(value);
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
                  Navigator.of(context).pop(newDelay);
                }
              },
              child: Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
          ],
        );
      });
}
