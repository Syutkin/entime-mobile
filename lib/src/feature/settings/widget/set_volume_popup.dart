part of 'settings_popups.dart';

Future<double?> setVolumePopup(BuildContext context, double volume) async {
  var value = volume;
  return showDialog<double>(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text(Localization.current.I18nSettings_voiceVolume),
          content: StatefulBuilder(
            builder:
                (context, setState) => Column(
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
