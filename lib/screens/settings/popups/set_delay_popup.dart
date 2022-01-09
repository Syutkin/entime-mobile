part of 'settings_popups.dart';

Future<int?> setDelayPopup(
    BuildContext context, int delay, String title) async {
  int _delay = delay;

  final _delayController = TextEditingController();
  _delayController.text = _delay.toString();

  final _formKey = GlobalKey<FormState>();

  return showDialog<int>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (context) {
        return AlertDialog(
          scrollable: true,
          title: Text(title),
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
                  decoration: const InputDecoration(labelText: 'Задержка'),
                  controller: _delayController,
                  validator: (value) {
                    if (value == null) {
                      return 'Неверная задержка';
                    }
                    final int? integer = int.tryParse(value);
                    if (integer == null || integer < 0) {
                      return 'Неверная задержка';
                    }
                    _delay = integer;
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
                  Navigator.of(context).pop(_delay);
                }
              },
              child: Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
          ],
        );
      });
}
