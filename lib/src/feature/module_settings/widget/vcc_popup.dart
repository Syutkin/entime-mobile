part of 'popups.dart';

Future<int?> vccPopup({required String text, required String labelText, required BuildContext context}) async {
  int? number;
  return showDialog<int>(
    context: context,
    builder:
        (context) => AlertDialog(
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
          actions: cancelOkButtons(
            context: context,
            onCancelPressed: () {
              Navigator.of(context).pop();
            },
            onOkPressed: () {
              Navigator.of(context).pop(number);
            },
          ),
        ),
  );
}
