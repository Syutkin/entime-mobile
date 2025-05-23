part of 'settings_popups.dart';

Future<int?> setDelayPopup(BuildContext context, int delay, String title) async {
  final delayController = TextEditingController()..text = delay.toString();

  final formKey = GlobalKey<FormState>();

  return showDialog<int>(
    context: context,
    builder:
        (context) => AlertDialog(
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
                  decoration: InputDecoration(labelText: Localization.current.I18nSettings_delay),
                  controller: delayController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateDelay,
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
                Navigator.of(context).pop(int.parse(delayController.text));
              }
            },
          ),
        ),
  );
}
