part of 'settings_popups.dart';

Future<int?> setDeltaInSecondsPopup(
  BuildContext context, {
  required int delta,
}) async {
  var newDelta = delta;

  final deltaController = TextEditingController()..text = newDelta.toString();
  final formKey = GlobalKey<FormState>();

  return showDialog<int>(
    context: context,
    builder: (context) => AlertDialog(
      scrollable: true,
      title: Text(Localization.current.I18nSettings_startDeltaInSecondsTitle),
      content: Column(
        children: [
          Text(Localization.current.I18nSettings_startDeltaInSecondsContent),
          Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: Localization.current.I18nSettings_startDelta,
                  ),
                  controller: deltaController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return Localization
                          .current.I18nSettings_incorrectStartDelta;
                    }
                    final integer = int.tryParse(value!);
                    if (integer == null || integer < 0) {
                      return Localization
                          .current.I18nSettings_incorrectStartDelta;
                    }
                    newDelta = integer;
                    return null;
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      actions: cancelOkButtons(
        context: context,
        onCancelPressed: () {
          Navigator.of(context).pop();
        },
        onOkPressed: () {
          if (formKey.currentState!.validate()) {
            Navigator.of(context).pop(newDelta);
          }
        },
      ),
    ),
  );
}
