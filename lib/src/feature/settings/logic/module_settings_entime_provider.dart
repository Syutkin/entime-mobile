import '../../../common/logger/logger.dart';
import '../../module_settings/model/module_settings.dart';
import 'module_settings_provider.dart';

class ModuleSettingsEntime extends ModuleSettingsProvider {
  late ModSettingsModel _modSettingsModel;

  // // Module type
  // @override
  // final String type = 'entime';

  // // bluetooth
  // @override
  // bool bluetooth = true; // вкл/выкл
  // @override
  // String bluetoothName = 'BT';
  // @override
  // int bluetoothNumber = 100;

  // // LoRa
  // @override
  // bool lora = false;
  // @override
  // int frequency = 9557; //433E6, 866E6, 915E6
  // @override
  // int txPower = 0; //0-20
  // @override
  // int spreadingFactor = 0; //6-12
  // @override
  // int signalBandwidth =
  //     0; //7.8E3, 10.4E3, 15.6E3, 20.8E3, 31.25E3, 41.7E3, 62.5E3, 125E3, and 250E3
  // @override
  // int codingRateDenominator = 0; //5-8
  // @override
  // int preambleLength = 0; //6-65535
  // @override
  // int? syncWord;
  // @override
  // bool crc = false;

  // // WiFi
  // @override
  // bool wifi = false;
  // @override
  // String ssid = 'none';
  // @override
  // String password = '';

  //ToDo: реализация работы с WiFi сетями: поиск, соединение, хранение паролей и п.р.

  // // TFT
  // bool tft = true;
  // bool timeout = false;
  // int timeoutDuration = 0; //1-600 секунд
  // bool turnOnAtEvent = false;

  // //Buzzer
  // bool buzzer = true;
  // int shortFrequency = 0; //30-5000
  // int longFrequency = 0; //30-5000

  // //VCC
  // int r1 = 0;
  // int r2 = 0;
  // int vBat;

  //Loading settings on initialization
  @override
  Future<bool> update(String jsonString) async {
    logger.i('Updating modsettings from json');

    try {
      _modSettingsModel = modSettingsModelFromJson(jsonString);

      // Module type
      type = _modSettingsModel.type!;

      // Bluetooth
      bluetooth = _modSettingsModel.bluetooth!.active;
      bluetoothName = _modSettingsModel.bluetooth!.name;
      bluetoothNumber = _modSettingsModel.bluetooth!.number;

      // LoRa
      lora = _modSettingsModel.loRa!.active;
      frequency = _modSettingsModel.loRa!.frequency;
      txPower = _modSettingsModel.loRa!.txPower;
      spreadingFactor = _modSettingsModel.loRa!.spreadingFactor;
      signalBandwidth = _modSettingsModel.loRa!.signalBandwidth;
      preambleLength = _modSettingsModel.loRa!.preambleLength;
      syncWord = _modSettingsModel.loRa!.syncWord;
      crc = _modSettingsModel.loRa!.crc;

      // WiFi
      wifi = _modSettingsModel.wiFi!.active;
      ssid = _modSettingsModel.wiFi!.ssid;
      password = _modSettingsModel.wiFi!.passwd;

      // TFT
      tft = _modSettingsModel.tft!.active;
      timeout = _modSettingsModel.tft!.timeout;
      timeoutDuration = _modSettingsModel.tft!.timeoutDuration;
      turnOnAtEvent = _modSettingsModel.tft!.turnOnAtEvent;

      //Buzzer
      buzzer = _modSettingsModel.buzzer!.active;
      shortFrequency = _modSettingsModel.buzzer!.shortFrequency;
      longFrequency = _modSettingsModel.buzzer!.longFrequency;

      //VCC
      r1 = _modSettingsModel.vcc!.r1;
      r2 = _modSettingsModel.vcc!.r2;

      return true;
    } on Exception catch (e) {
      logger.e('Error at parsing ModuleSettings json: $e');
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

    // LoRa
    _modSettingsModel.loRa!.active = lora;
    _modSettingsModel.loRa!.frequency = frequency;
    _modSettingsModel.loRa!.txPower = txPower;
    _modSettingsModel.loRa!.spreadingFactor = spreadingFactor;
    _modSettingsModel.loRa!.signalBandwidth = signalBandwidth;
    _modSettingsModel.loRa!.preambleLength = preambleLength;
    _modSettingsModel.loRa!.syncWord = syncWord;
    _modSettingsModel.loRa!.crc = crc;

    // WiFi
    _modSettingsModel.wiFi!.active = wifi;
    _modSettingsModel.wiFi!.ssid = ssid;
    _modSettingsModel.wiFi!.passwd = password;

    // TFT
    _modSettingsModel.tft!.active = tft;
    _modSettingsModel.tft!.timeout = timeout;
    _modSettingsModel.tft!.timeoutDuration = timeoutDuration;
    _modSettingsModel.tft!.turnOnAtEvent = turnOnAtEvent;

    //Buzzer
    _modSettingsModel.buzzer!.active = buzzer;
    _modSettingsModel.buzzer!.shortFrequency = shortFrequency;
    _modSettingsModel.buzzer!.longFrequency = longFrequency;

    //VCC
    _modSettingsModel.vcc!.r1 = r1;
    _modSettingsModel.vcc!.r2 = r2;
    _modSettingsModel.vcc!.vbat = vBat;

    return modSettingsModelToJson(_modSettingsModel);
  }
}
