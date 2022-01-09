part of 'settings_popups.dart';

Future<int?> setLogLimitPopup(BuildContext context, int limit) async {
  int _limit = limit;

  final _delayController = TextEditingController();
  _delayController.text = (_limit < 0 ? '' : _limit).toString();

  final _formKey = GlobalKey<FormState>();

  return showDialog<int>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (context) {
        return AlertDialog(
          scrollable: true,
          title: const Text('Количество отображамых строк в журнале'),
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
                  decoration:
                      const InputDecoration(labelText: 'Количество строк'),
                  controller: _delayController,
                  validator: (value) {
                    if (value == null || value == '' || value == '-') {
                      _limit = -1;
                      return null;
                    }
                    final int? val = int.tryParse(value);
                    if (val == null) {
                      return 'Введите положительное число,\r\nпустая строка или отрицательное\r\n- без ограничений';
                    }
                    _limit = val;
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
                  if (_limit < -1) {
                    _limit = -1;
                  }
                  Navigator.of(context).pop(_limit);
                }
              },
              child: Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
          ],
        );
      });
}
