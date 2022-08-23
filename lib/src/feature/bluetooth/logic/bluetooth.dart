import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothSerialInstance {
  final FlutterBluetoothSerial _instance = FlutterBluetoothSerial.instance;
  FlutterBluetoothSerial get instance => _instance;
}