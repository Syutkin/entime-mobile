part of 'settings_popups.dart';

Future<double?> setFloatingButtonSizePopup(
  BuildContext context,
  double value, {
  String text = '',
}) async {
  // text = 'Размер кнопки "+"';
  double newValue = value;
  return showDialog<double>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(text),
      content: StatefulBuilder(
        builder: (context, setState) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Slider(
              value: newValue,
              min: 50,
              max: 200,
              label:
                  Localization.current.I18nSettings_pixelSize(newValue.round()),
              divisions: 150,
              onChanged: (value) {
                setState(() => newValue = value);
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
            Navigator.of(context).pop(newValue);
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}
