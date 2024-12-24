part of 'popups.dart';

Future<String?> wifiSettingsPopup({
  required String text,
  required String labelText,
  required BuildContext context,
}) async {
  String? wifi;
  return showDialog<String>(
    context: context,
    builder: (context) => AlertDialog(
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
      actions: cancelOkButtons(
        context: context,
        onCancelPressed: () {
          Navigator.of(context).pop();
        },
        onOkPressed: () {
          Navigator.of(context).pop(wifi);
        },
      ),
    ),
  );
}
