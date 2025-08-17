import 'dart:convert';

import '../../../common/logger/logger.dart';
import '../model/module_settings.dart';
import 'module_settings_provider.dart';

class ModuleSettingsEntime extends ModuleSettingsProvider {
  late ModSettingsEntime _modSettingsModel;

  //ToDo: реализация работы с WiFi сетями: поиск, соединение, хранение паролей и п.р.

  //Loading settings on initialization
  @override
  Future<bool> update(String jsonString) async {
    logger.i('ModuleSettingsEntime: Updating modsettings from json');

    try {
      _modSettingsModel = ModSettingsEntime.fromJson(jsonDecode(jsonString) as Map<String, dynamic>);

      // Module type
      type = _modSettingsModel.type;

      // Bluetooth
      bluetooth = _modSettingsModel.bluetooth.active;
      bluetoothName = _modSettingsModel.bluetooth.name;
      bluetoothNumber = _modSettingsModel.bluetooth.number;

      // LoRa
      lora = _modSettingsModel.loRa.active;
      frequency = _modSettingsModel.loRa.frequency;
      txPower = _modSettingsModel.loRa.txPower;
      spreadingFactor = _modSettingsModel.loRa.spreadingFactor;
      signalBandwidth = _modSettingsModel.loRa.signalBandwidth;
      codingRateDenominator = _modSettingsModel.loRa.codingRateDenom;
      preambleLength = _modSettingsModel.loRa.preambleLength;
      syncWord = _modSettingsModel.loRa.syncWord;
      crc = _modSettingsModel.loRa.crc;

      // WiFi
      wifi = _modSettingsModel.wiFi.active;
      ssid = _modSettingsModel.wiFi.ssid;
      password = _modSettingsModel.wiFi.passwd;

      // TFT
      tft = _modSettingsModel.tft.active;
      timeout = _modSettingsModel.tft.timeout;
      timeoutDuration = _modSettingsModel.tft.timeoutDuration;
      turnOnAtEvent = _modSettingsModel.tft.turnOnAtEvent;

      //Buzzer
      buzzer = _modSettingsModel.buzzer.active;
      shortFrequency = _modSettingsModel.buzzer.shortFrequency;
      longFrequency = _modSettingsModel.buzzer.longFrequency;

      //VCC
      r1 = _modSettingsModel.vcc.r1;
      r2 = _modSettingsModel.vcc.r2;

      return true;
    } on Exception catch (e) {
      logger.e('Exception at parsing ModuleSettingsEntime json', error: e);
      return false;
    } catch (e) {
      logger.e('Unknown error at parsing ModuleSettingsEntime json', error: e);
      return false;
    }
  }

  @override
  String get write => json.encode(
    ModSettingsEntime(
      // запись данных
      read: false,
      type: type,
      // Bluetooth
      bluetooth: Bluetooth(active: bluetooth, name: bluetoothName, number: bluetoothNumber),
      // LoRa
      loRa: LoRa(
        active: lora,
        frequency: frequency,
        txPower: txPower,
        spreadingFactor: spreadingFactor,
        signalBandwidth: signalBandwidth,
        codingRateDenom: codingRateDenominator,
        preambleLength: preambleLength,
        syncWord: syncWord,
        crc: crc,
      ),
      // WiFi
      wiFi: WiFi(active: wifi, ssid: ssid, passwd: password),

      // TFT
      tft: Tft(active: tft, timeout: timeout, timeoutDuration: timeoutDuration, turnOnAtEvent: turnOnAtEvent),
      //Buzzer
      buzzer: Buzzer(active: buzzer, shortFrequency: shortFrequency, longFrequency: longFrequency),
      //VCC
      vcc: Vcc(r1: r1, r2: r2, vbat: vBat),
    ).toJson(),
  );
}
