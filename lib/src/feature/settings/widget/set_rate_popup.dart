part of 'settings_popups.dart';

Future<double?> setRatePopup(BuildContext context, double rate) async {
  var value = rate;
  return showDialog<double>(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text(Localization.current.I18nSettings_voiceRate),
          content: StatefulBuilder(
            builder:
                (context, setState) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Slider(
                      value: value,
                      label: value.toStringAsFixed(2),
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
