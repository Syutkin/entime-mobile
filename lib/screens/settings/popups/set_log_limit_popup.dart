part of 'settings_popups.dart';

Future<int?> setLogLimitPopup(BuildContext context, int limit) async {
  var _delayController = TextEditingController();
  _delayController.text = (limit < 0 ? '' : limit).toString();

  final _formKey = GlobalKey<FormState>();

  return showDialog<int>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
          title: Text('Количество отображамых строк в журнале'),
          content: Form(
            key: _formKey,
            onChanged: () {
              Form.of(primaryFocus!.context!)!.validate();
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  decoration: InputDecoration(labelText: 'Количество строк'),
                  controller: _delayController,
                  validator: (value) {
                    if (value == null || value == '' || value == '-') {
                      limit = -1;
                      return null;
                    }
                    final int? val = int.tryParse(value);
                    if (val == null) {
                      return 'Введите положительное число,\r\nпустая строка или отрицательное\r\n- без ограничений';
                    }
                    limit = val;
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
                if (_formKey.currentState!.validate()) {
                  if (limit < -1) {
                    limit = -1;
                  }
                  Navigator.of(context).pop(limit);
                }
              },
              child: Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
          ],
        );
      });
}
