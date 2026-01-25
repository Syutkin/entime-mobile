part of '../popups.dart';

Future<int?> timezonePopup({
  required BuildContext context,
  required String text,
  required String labelText,
  int? initialValue,
}) async {
  int? timezone;
  final controller = TextEditingController(text: initialValue?.toString() ?? '');
  final formKey = GlobalKey<FormState>();

  return showDialog<int>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(text),
      content: Form(
        key: formKey,
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          autofocus: true,
          decoration: InputDecoration(labelText: labelText),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            final trimmed = value?.trim() ?? '';
            if (trimmed.isEmpty) {
              return Localization.current.I18nModuleSettings_timezoneEmpty;
            }
            final parsed = int.tryParse(trimmed);
            if (parsed == null) {
              return Localization.current.I18nModuleSettings_timezoneInvalid;
            }
            if (parsed < -12 || parsed > 12) {
              return Localization.current.I18nModuleSettings_timezoneRange;
            }
            timezone = parsed;
            return null;
          },
        ),
      ),
      actions: cancelOkButtons(
        context: context,
        onCancelPressed: () => Navigator.of(context).pop(),
        onOkPressed: () {
          if (formKey.currentState!.validate()) {
            Navigator.of(context).pop(timezone);
          }
        },
      ),
    ),
  );
}
