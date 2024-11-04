part of 'popups.dart';

Future<int?> brightnessPopup({
  required String text,
  required int initialValue,
  required BuildContext context,
}) async {
  var brightness = initialValue.toDouble();
  return showDialog<int>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(text),
      content: StatefulBuilder(
        builder: (context, setState) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              Localization.current
                  .I18nModuleSettings_brightnessInt(brightness.toInt()),
            ),
            Slider(
              value: brightness,
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
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(brightness.toInt());
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}
