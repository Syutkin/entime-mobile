// To parse this JSON data, do
//
//     final modSettingsModel = modSettingsModelFromJson(jsonString);

import 'dart:convert';

ModSettingsModelType modSettingsModelTypeFromJson(String str) =>
    ModSettingsModelType.fromJson(json.decode(str));

class ModSettingsModelType {
  String type;

  ModSettingsModelType({
    required this.type,
  });

  factory ModSettingsModelType.fromJson(Map<String, dynamic> json) =>
      ModSettingsModelType(
        type: json['Type'],
      );

  Map<String, dynamic> toJson() => {
        'Type': type,
      };
}

ModSettingsModelLed modSettingsModelLedFromJson(String str) =>
    ModSettingsModelLed.fromJson(json.decode(str));

String modSettingsModelLedToJson(ModSettingsModelLed data) =>
    json.encode(data.toJson());

class ModSettingsModelLed {
  bool read;
  String type;
  Bluetooth? bluetooth;
  WiFi? wiFi;
  LedPanel? ledPanel;

  ModSettingsModelLed({
    required this.read,
    required this.type,
    this.bluetooth,
    this.wiFi,
    this.ledPanel,
  });

  factory ModSettingsModelLed.fromJson(Map<String, dynamic> json) =>
      ModSettingsModelLed(
        read: json['Read'],
        type: json['Type'],
        bluetooth: json['Bluetooth'] == null
            ? null
            : Bluetooth.fromJson(json['Bluetooth']),
        wiFi: json['WiFi'] == null ? null : WiFi.fromJson(json['WiFi']),
        ledPanel: json['LedPanel'] == null
            ? null
            : LedPanel.fromJson(json['LedPanel']),
      );

  Map<String, dynamic> toJson() => {
        'Read': read,
        'Type': type,
        'Bluetooth': bluetooth == null ? null : bluetooth?.toJson(),
        'WiFi': wiFi == null ? null : wiFi?.toJson(),
        'LedPanel': ledPanel == null ? null : ledPanel?.toJson(),
      };
}

ModSettingsModel modSettingsModelFromJson(String str) =>
    ModSettingsModel.fromJson(json.decode(str));

String modSettingsModelToJson(ModSettingsModel data) =>
    json.encode(data.toJson());

class ModSettingsModel {
  bool? read;
  String? type;
  Bluetooth? bluetooth;
  LoRa? loRa;
  WiFi? wiFi;
  Tft? tft;
  Buzzer? buzzer;
  Vcc? vcc;

  ModSettingsModel({
    this.read,
    this.type,
    this.bluetooth,
    this.loRa,
    this.wiFi,
    this.tft,
    this.buzzer,
    this.vcc,
  });

  factory ModSettingsModel.fromJson(Map<String, dynamic> json) =>
      ModSettingsModel(
        read: json['Read'],
        type: json['Type'],
        bluetooth: json['Bluetooth'] == null
            ? null
            : Bluetooth.fromJson(json['Bluetooth']),
        loRa: json['LoRa'] == null ? null : LoRa.fromJson(json['LoRa']),
        wiFi: json['WiFi'] == null ? null : WiFi.fromJson(json['WiFi']),
        tft: json['TFT'] == null ? null : Tft.fromJson(json['TFT']),
        buzzer: json['Buzzer'] == null ? null : Buzzer.fromJson(json['Buzzer']),
        vcc: json['VCC'] == null ? null : Vcc.fromJson(json['VCC']),
      );

  Map<String, dynamic> toJson() => {
        'Read': read,
        'Type': type,
        'Bluetooth': bluetooth == null ? null : bluetooth?.toJson(),
        'LoRa': loRa == null ? null : loRa?.toJson(),
        'WiFi': wiFi == null ? null : wiFi?.toJson(),
        'TFT': tft == null ? null : tft?.toJson(),
        'Buzzer': buzzer == null ? null : buzzer?.toJson(),
        'VCC': vcc == null ? null : vcc?.toJson(),
      };
}

class Bluetooth {
  bool active;
  String name;
  int number;

  Bluetooth({
    required this.active,
    required this.name,
    required this.number,
  });

  factory Bluetooth.fromJson(Map<String, dynamic> json) => Bluetooth(
        active: json['active'],
        name: json['name'],
        number: json['number'],
      );

  Map<String, dynamic> toJson() => {
        'active': active,
        'name': name,
        'number': number,
      };
}

class Buzzer {
  bool active;
  int shortFrequency;
  int longFrequency;

  Buzzer({
    required this.active,
    required this.shortFrequency,
    required this.longFrequency,
  });

  factory Buzzer.fromJson(Map<String, dynamic> json) => Buzzer(
        active: json['active'],
        shortFrequency: json['shortFrequency'],
        longFrequency: json['longFrequency'],
      );

  Map<String, dynamic> toJson() => {
        'active': active,
        'shortFrequency': shortFrequency,
        'longFrequency': longFrequency,
      };
}

class LoRa {
  bool active;
  int frequency;
  int txPower;
  int spreadingFactor;
  int signalBandwidth;
  int codingRateDenom;
  int preambleLength;
  int syncWord;
  bool crc;

  LoRa({
    required this.active,
    required this.frequency,
    required this.txPower,
    required this.spreadingFactor,
    required this.signalBandwidth,
    required this.codingRateDenom,
    required this.preambleLength,
    required this.syncWord,
    required this.crc,
  });

  factory LoRa.fromJson(Map<String, dynamic> json) => LoRa(
        active: json['active'],
        frequency: json['frequency'],
        txPower: json['txPower'],
        spreadingFactor: json['spreadingFactor'],
        signalBandwidth: json['signalBandwidth'],
        codingRateDenom: json['codingRateDenom'],
        preambleLength: json['preambleLength'],
        syncWord: json['syncWord'],
        crc: json['crc'],
      );

  Map<String, dynamic> toJson() => {
        'active': active,
        'frequency': frequency,
        'txPower': txPower,
        'spreadingFactor': spreadingFactor,
        'signalBandwidth': signalBandwidth,
        'codingRateDenom': codingRateDenom,
        'preambleLength': preambleLength,
        'syncWord': syncWord,
        'crc': crc,
      };
}

class Tft {
  bool active;
  bool timeout;
  int timeoutDuration;
  bool turnOnAtEvent;

  Tft({
    required this.active,
    required this.timeout,
    required this.timeoutDuration,
    required this.turnOnAtEvent,
  });

  factory Tft.fromJson(Map<String, dynamic> json) => Tft(
        active: json['active'],
        timeout: json['timeout'],
        timeoutDuration: json['timeoutDuration'],
        turnOnAtEvent: json['turnOnAtEvent'],
      );

  Map<String, dynamic> toJson() => {
        'active': active,
        'timeout': timeout,
        'timeoutDuration': timeoutDuration,
        'turnOnAtEvent': turnOnAtEvent,
      };
}

class Vcc {
  int r1;
  int r2;
  int? vbat;

  Vcc({
    required this.r1,
    required this.r2,
    this.vbat,
  });

  factory Vcc.fromJson(Map<String, dynamic> json) => Vcc(
        r1: json['r1'],
        r2: json['r2'],
        vbat: json['vbat'],
      );

  Map<String, dynamic> toJson() => {
        'r1': r1,
        'r2': r2,
        'vbat': vbat,
      };
}

class WiFi {
  bool active;
  String ssid;
  String passwd;

  WiFi({
    required this.active,
    required this.ssid,
    required this.passwd,
  });

  factory WiFi.fromJson(Map<String, dynamic> json) => WiFi(
        active: json['active'],
        ssid: json['ssid'],
        passwd: json['passwd'],
      );

  Map<String, dynamic> toJson() => {
        'active': active,
        'ssid': ssid,
        'passwd': passwd,
      };
}

class LedPanel {
  int brightness;

  LedPanel({
    required this.brightness,
  });

  factory LedPanel.fromJson(Map<String, dynamic> json) => LedPanel(
        brightness: json['brightness'],
      );

  Map<String, dynamic> toJson() => {
        'brightness': brightness,
      };
}
