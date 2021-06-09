part of 'popups.dart';

Future<int?> brightnessPopup(
    {required String text,
    required int initialValue,
    required BuildContext context}) async {
  double brightness = initialValue.toDouble();
  return showDialog<int>(
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
              Text('Яркость ${brightness.toInt()}'),
              Slider(
                value: brightness,
                min: 0.0,
                max: 15.0,
                label: '${brightness.toInt()}',
                divisions: 14,
                onChanged: (double newValue) {
                  setState(() => brightness = newValue);
                },
              ),
            ],
          );
        }),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(brightness.toInt());
            },
            child: Text(MaterialLocalizations.of(context).okButtonLabel),
          ),
        ],
      );
    },
  );
}
