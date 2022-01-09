part of 'settings_popups.dart';

Future<double?> setFloatingButtonSizePopup(
  BuildContext context,
  double value, {
  String text = '',
}) async {
  // text = 'Размер кнопки "+"';
  double _value = value;
  return showDialog<double>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (context) {
        return AlertDialog(
          title: Text(text),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Slider(
                    value: _value,
                    min: 50,
                    max: 200,
                    label: '${_value.round()}px',
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
