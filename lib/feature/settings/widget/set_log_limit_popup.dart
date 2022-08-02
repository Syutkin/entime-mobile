part of 'settings_popups.dart';

Future<int?> setLogLimitPopup(BuildContext context, int limit) async {
  int newLimit = limit;

  final delayController = TextEditingController();
  delayController.text = (newLimit < 0 ? '' : newLimit).toString();

  final formKey = GlobalKey<FormState>();

  return showDialog<int>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (context) {
        return AlertDialog(
          scrollable: true,
          title: const Text('Количество отображамых строк в журнале'),
          content: Form(
            key: formKey,
            onChanged: () {
              Form.of(primaryFocus!.context!)!.validate();
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  decoration:
                      const InputDecoration(labelText: 'Количество строк'),
                  controller: delayController,
                  validator: (value) {
                    if (value == null || value == '' || value == '-') {
                      newLimit = -1;
                      return null;
                    }
                    final int? val = int.tryParse(value);
                    if (val == null) {
                      return 'Введите положительное число,\r\nпустая строка или отрицательное\r\n- без ограничений';
                    }
                    newLimit = val;
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
            ),
            TextButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  if (newLimit < -1) {
                    newLimit = -1;
                  }
                  Navigator.of(context).pop(newLimit);
                }
              },
              child: Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
          ],
        );
      });
}
