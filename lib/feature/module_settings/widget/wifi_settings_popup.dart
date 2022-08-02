part of 'popups.dart';

Future<String?> wifiSettingsPopup({required String text, required String labelText, required BuildContext context}) async {
  String? wifi;
  return showDialog<String>(
    context: context,
    barrierDismissible: true,
    // dialog is dismissible with a tap on the barrier
    builder: (context) {
      return AlertDialog(
        title: Text(text),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: TextField(
                // keyboardType: TextInputType.number,
                autofocus: true,
                decoration: InputDecoration(labelText: labelText),
                onChanged: (value) {
                  wifi = value;
                },
              ),
            ),
          ],
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
              Navigator.of(context).pop(wifi);
            },
            child: Text(MaterialLocalizations.of(context).okButtonLabel),
          ),
        ],
      );
    },
  );
}
