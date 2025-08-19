part of 'popups.dart';

Future<int?> vccPopup({
  required String text,
  required String labelText,
  required BuildContext context,
  int? value,
}) async {
  final controller = TextEditingController()..text = value?.toString() ?? '';
  return showDialog<int>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(text),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(labelText: labelText),
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
          Navigator.of(context).pop(int.tryParse(controller.text));
        },
      ),
    ),
  );
}
