part of '../popups.dart';

Future<String?> ntpServerPopup({
  required BuildContext context,
  required String text,
  required String labelText,
  String? initialValue,
  bool allowEmpty = false,
}) async {
  String? value;
  final controller = TextEditingController(text: initialValue ?? '');
  final formKey = GlobalKey<FormState>();

  return showDialog<String>(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text(text),
          content: Form(
            key: formKey,
            child: TextFormField(
              controller: controller,
              autofocus: true,
              decoration: InputDecoration(labelText: labelText),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (input) {
                final trimmed = input?.trim() ?? '';
                if (trimmed.isEmpty) {
                  if (allowEmpty) {
                    value = '';
                    return null;
                  }
                  return Localization.current.I18nModuleSettings_ntpEmpty;
                }
                if (trimmed.length > 64) {
                  return Localization.current.I18nModuleSettings_ntpTooLong;
                }
                if (!trimmed.isValidUrl && !trimmed.isValidIp) {
                  return Localization.current.I18nModuleSettings_ntpInvalid;
                }
                value = trimmed;
                return null;
              },
            ),
          ),
          actions: cancelOkButtons(
            context: context,
            onCancelPressed: () => Navigator.of(context).pop(),
            onOkPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.of(context).pop(value);
              }
            },
          ),
        ),
  );
}
