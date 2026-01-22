part of '../popups.dart';

Future<String?> moduleNamePopup({
  required BuildContext context,
  required String text,
  required String labelText,
  String? initialValue,
}) async {
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
              validator: (value) {
                final trimmed = value?.trim() ?? '';
                if (trimmed.isEmpty) {
                  return Localization.current.I18nModuleSettings_deviceNameEmpty;
                }
                if (trimmed.length > 16) {
                  return Localization.current.I18nModuleSettings_deviceNameTooLong;
                }
                if (!RegExp(r'^[A-Za-z0-9_-]+$').hasMatch(trimmed)) {
                  return Localization.current.I18nModuleSettings_deviceNameInvalid;
                }
                return null;
              },
            ),
          ),
          actions: cancelOkButtons(
            context: context,
            onCancelPressed: () => Navigator.of(context).pop(),
            onOkPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.of(context).pop(controller.text.trim());
              }
            },
          ),
        ),
  );
}
