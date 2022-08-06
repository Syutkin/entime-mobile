part of 'popups.dart';

Future<int?> vccPopup({required String text, required String labelText, required BuildContext context}) async {
  int? number;
  return showDialog<int>(
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
                keyboardType: TextInputType.number,
                autofocus: true,
                decoration: InputDecoration(labelText: labelText),
                onChanged: (value) {
                  number = int.tryParse(value);
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
              Navigator.of(context).pop(number);
            },
            child: Text(MaterialLocalizations.of(context).okButtonLabel),
          ),
        ],
      );
    },
  );
}
