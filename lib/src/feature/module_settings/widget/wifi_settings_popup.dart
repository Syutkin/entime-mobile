part of 'popups.dart';

Future<List<String>?> wifiSettingsPopup({
  required BuildContext context,
  String? ssid,
}) async {
  final ssidController = TextEditingController()..text = ssid ?? '';
  final passwordController = TextEditingController();
  return showDialog<List<String>?>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(Localization.current.I18nModuleSettings_enterWifiCredentials),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            controller: ssidController,
            autofocus: true,
            decoration: InputDecoration(labelText: Localization.current.I18nModuleSettings_wifiSsid),
          ),
          PasswordTextField(
            label: Localization.current.I18nModuleSettings_wifiPassword,
            controller: passwordController,
          ),
        ],
      ),
      actions: cancelOkButtons(
        context: context,
        onCancelPressed: () {
          Navigator.of(context).pop();
        },
        onOkPressed: () {
          Navigator.of(context).pop([ssidController.text, passwordController.text]);
        },
      ),
    ),
  );
}
