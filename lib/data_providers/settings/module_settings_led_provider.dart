import 'package:entime/data_providers/settings/module_settings_provider.dart';
import 'package:entime/models/models.dart';

class ModuleSettingsLed extends ModuleSettingsProvider {
  late ModSettingsModelLed _modSettingsModel;

  // // Module type
  // @override
  // String type = 'ledpanel';
  //
  // // bluetooth
  // @override
  // bool bluetooth = true; // вкл/выкл
  // @override
  // String bluetoothName = 'BT';
  // @override
  // int bluetoothNumber = 100;
  //
  // // WiFi
  // @override
  // bool wifi = false;
  // @override
  // String ssid = 'none';
  // @override
  // String password = '';
  //
  // //LedPanel
  // @override
  // int brightness = 15;

  //Loading settings on initialization
  @override
  Future<bool> update(jsonString) async {
    print('Updating modsettings from json');

    try {
        _modSettingsModel = modSettingsModelLedFromJson(jsonString);

        // Module type
        type = _modSettingsModel.type;

        // Bluetooth
        bluetooth = _modSettingsModel.bluetooth!.active;
        bluetoothName = _modSettingsModel.bluetooth!.name;
        bluetoothNumber = _modSettingsModel.bluetooth!.number;

        // WiFi
        wifi = _modSettingsModel.wiFi!.active;
        ssid = _modSettingsModel.wiFi!.ssid;
        password = _modSettingsModel.wiFi!.passwd;

        //LedPanel
        brightness = _modSettingsModel.ledPanel!.brightness;

      return true;
    } catch (e) {
      print('Error at parsing ModuleSettings json: $e');
      return false;
    }
  }

  @override
  String get write {
    // запись данных
    _modSettingsModel.read = false;

    // Bluetooth
    _modSettingsModel.bluetooth!.active = bluetooth;
    _modSettingsModel.bluetooth!.name = bluetoothName;
    _modSettingsModel.bluetooth!.number = bluetoothNumber;

    // WiFi
    _modSettingsModel.wiFi!.active = wifi;
    _modSettingsModel.wiFi!.ssid = ssid;
    _modSettingsModel.wiFi!.passwd = password;

    //LedPanel
    _modSettingsModel.ledPanel!.brightness = brightness;

    return modSettingsModelLedToJson(_modSettingsModel);
  }
}
