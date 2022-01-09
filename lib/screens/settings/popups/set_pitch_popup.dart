part of 'settings_popups.dart';

Future<double?> setPitchPopup(BuildContext context, SettingsState settings) async {
  double _value = settings.pitch;
  return showDialog<double>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (context) {
        return AlertDialog(
          title: const Text('Тембр голоса'),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Slider(
                    value: _value,
                    min: 0.5,
                    max: 2,
                    label: ((_value * 100).round() / 100).toStringAsFixed(2),
                    divisions: 150,
                    onChanged: (newValue) {
                      setState(() => _value = newValue);
                    },
                  ),
                ],
              );
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(_value);
              },
              child: Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
          ],
        );
      });
}
