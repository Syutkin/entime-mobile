part of 'settings_popups.dart';

Future<double> setFloatingButtonSizePopup(
  BuildContext context,
  double value, {
  String text = '',
}) async {
  // text = 'Размер кнопки "+"';
  return showDialog<double>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(text),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Slider(
                    value: value,
                    min: 50.0,
                    max: 200.0,
                    label: '${(value).round()}px',
                    divisions: 150,
                    onChanged: (double newValue) {
                      setState(() => value = newValue);
                    },
                  ),
                ],
              );
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(value);
              },
              child: Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
          ],
        );
      });
}
