part of 'popups.dart';

Future<int?> brightnessPopup({required String text, required int initialValue, required BuildContext context}) async {
  var brightness = initialValue.clamp(1, 15).toDouble();
  return showDialog<int>(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text(text),
          content: StatefulBuilder(
            builder:
                (context, setState) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(Localization.current.I18nModuleSettings_brightnessInt(brightness.toInt())),
                    Slider(
                      value: brightness,
                      min: 1,
                      max: 15,
                      label: '${brightness.toInt()}',
                      divisions: 14,
                      onChanged: (newValue) {
                        setState(() => brightness = newValue);
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
              Navigator.of(context).pop(brightness.toInt());
            },
          ),
        ),
  );
}
