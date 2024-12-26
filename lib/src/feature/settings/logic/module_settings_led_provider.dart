import 'dart:convert';

import '../../../common/logger/logger.dart';
import '../../module_settings/model/module_settings.dart';
import 'module_settings_provider.dart';

class ModuleSettingsLed extends ModuleSettingsProvider {
  late ModSettingsModelLed _modSettingsModel;

  //Loading settings on initialization
  @override
  Future<bool> update(String jsonString) async {
    logger.i('Updating modsettings from json');

    try {
      _modSettingsModel = ModSettingsModelLed.fromJson(
        jsonDecode(jsonString) as Map<String, dynamic>,
      );

      // Module type
      type = _modSettingsModel.type;

      // Bluetooth
      bluetooth = _modSettingsModel.bluetooth.active;
      bluetoothName = _modSettingsModel.bluetooth.name;
      bluetoothNumber = _modSettingsModel.bluetooth.number;

      // WiFi
      wifi = _modSettingsModel.wiFi.active;
      ssid = _modSettingsModel.wiFi.ssid;
      password = _modSettingsModel.wiFi.passwd;

      //LedPanel
      brightness = _modSettingsModel.ledPanel.brightness;

      return true;
    } on Exception catch (e) {
      logger.e('Exception at parsing ModuleSettings json', error: e);
      return false;
    }
  }

  @override
  String get write => json.encode(
        ModSettingsModelLed(
          read: false,
          type: type,
          // Bluetooth
          bluetooth: Bluetooth(
            active: bluetooth,
            name: bluetoothName,
            number: bluetoothNumber,
          ),
          // WiFi
          wiFi: WiFi(active: wifi, ssid: ssid, passwd: password),
          //LedPanel
          ledPanel: LedPanel(brightness: brightness),
        ).toJson(),
      );
}
