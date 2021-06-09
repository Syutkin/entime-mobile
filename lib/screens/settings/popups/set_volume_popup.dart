part of 'settings_popups.dart';

Future<double?> setVolumePopup(BuildContext context, settings) async {
  double _value = settings.volume;
  return showDialog<double>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Громкость голоса'),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Slider(
                    value: _value,
                    min: 0.0,
                    max: 1.0,
                    label: '${(_value * 100).round()}%',
                    divisions: 100,
                    onChanged: (double newValue) {
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
