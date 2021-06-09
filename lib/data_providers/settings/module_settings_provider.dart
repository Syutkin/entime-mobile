abstract class ModuleSettingsProvider {
  // Module type
  String type = '';

  // bluetooth
  bool bluetooth = true; // вкл/выкл
  String bluetoothName = 'BT';
  int bluetoothNumber = 100;

  // LoRa
  bool lora = false;
  int frequency = 9557; //433E6, 866E6, 915E6
  int txPower = 0; //0-20
  int spreadingFactor = 0; //6-12
  int signalBandwidth =
  0; //7.8E3, 10.4E3, 15.6E3, 20.8E3, 31.25E3, 41.7E3, 62.5E3, 125E3, and 250E3
  int codingRateDenominator = 0; //5-8
  int preambleLength = 0; //6-65535
  int syncWord = 0;
  bool crc = false;

  // WiFi
  bool wifi = false;
  String ssid = 'none';
  String password = '';

  //ToDo: реализация работы с WiFi сетями: поиск, соединение, хранение паролей и п.р.

  // TFT
  bool tft = true;
  bool timeout = false;
  int timeoutDuration = 0; //1-600 секунд
  bool turnOnAtEvent = false;

  //Buzzer
  bool buzzer = true;
  int shortFrequency = 0; //30-5000
  int longFrequency = 0; //30-5000

  //VCC
  int r1 = 0;
  int r2 = 0;
  int vBat = 0;

  //LedPanel
  int brightness = 15;

  //Loading settings on initialization
  Future<bool> update(jsonString);

  String get write;
}
