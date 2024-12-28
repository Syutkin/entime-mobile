part of 'settings_popups.dart';

Future<int?> setLogLimitPopup(BuildContext context, int limit) async {
  var newLimit = limit;

  final delayController =
      TextEditingController()..text = (newLimit < 0 ? '' : newLimit).toString();

  final formKey = GlobalKey<FormState>();

  return showDialog<int>(
    context: context,
    builder:
        (context) => AlertDialog(
          scrollable: true,
          title: Text(
            Localization.current.I18nSettings_journalLinesNumberPopup,
          ),
          content: Form(
            key: formKey,
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
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value == '' || value == '-') {
                      newLimit = -1;
                      return null;
                    }
                    final val = int.tryParse(value);
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
          actions: cancelOkButtons(
            context: context,
            onCancelPressed: () {
              Navigator.of(context).pop();
            },
            onOkPressed: () {
              if (formKey.currentState!.validate()) {
                if (newLimit < -1) {
                  newLimit = -1;
                }
                Navigator.of(context).pop(newLimit);
              }
            },
          ),
        ),
  );
}
