part of 'settings_popups.dart';

Future<double?> setVolumePopup(
  BuildContext context,
  SettingsState settingsState,
) async {
  double value = settingsState.settings.volume;
  return showDialog<double>(
    context: context,
    barrierDismissible: true,
    // dialog is dismissible with a tap on the barrier
    builder: (context) => AlertDialog(
      title: Text(Localization.current.I18nSettings_voiceVolume),
      content: StatefulBuilder(
        builder: (context, setState) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Slider(
              value: value,
              label: '${(value * 100).round()}%',
              divisions: 100,
              onChanged: (newValue) {
                setState(() => value = newValue);
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
            Navigator.of(context).pop(value);
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}
