part of 'settings_popups.dart';

Future<double?> setPitchPopup(
  BuildContext context,
  SettingsState settingsState,
) async {
  var value = settingsState.settings.pitch;
  return showDialog<double>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(Localization.current.I18nSettings_voicePitch),
      content: StatefulBuilder(
        builder: (context, setState) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Slider(
              value: value,
              min: 0.5,
              max: 2,
              label: ((value * 100).round() / 100).toStringAsFixed(2),
              divisions: 150,
              onChanged: (newValue) {
                setState(() => value = newValue);
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
          Navigator.of(context).pop(value);
        },
      ),
    ),
  );
}
