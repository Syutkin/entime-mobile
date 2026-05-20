part of '../popups.dart';

Future<int?> bluetoothNumberPopup({
  required String text,
  required String labelText,
  required BuildContext context,
  int? initialValue,
}) async {
  int? number;
  final controller = TextEditingController(text: initialValue?.toString() ?? '');
  final formKey = GlobalKey<FormState>();
  return showDialog<int>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(text),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: controller,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(labelText: labelText),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                final text = value?.trim() ?? '';
                if (text.isEmpty) {
                  return Localization.current.I18nModuleSettings_deviceNumberEmpty;
                }
                final parsed = int.tryParse(text);
                if (parsed == null) {
                  return Localization.current.I18nModuleSettings_deviceNumberInvalid;
                }
                if (parsed < 1 || parsed > 255) {
                  return Localization.current.I18nModuleSettings_deviceNumberRange;
                }
                number = parsed;
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
            Navigator.of(context).pop(number);
          }
        },
      ),
    ),
  );
}
