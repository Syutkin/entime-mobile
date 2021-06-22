import 'dart:async';

import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

class BleDeviceInteractor {
  BleDeviceInteractor({
    required Future<List<DiscoveredService>> Function(String deviceId)
        bleDiscoverServices,
    required Future<List<int>> Function(QualifiedCharacteristic characteristic)
        readCharacteristic,
    required Future<void> Function(QualifiedCharacteristic characteristic,
            {required List<int> value})
        writeWithResponse,
    required Future<void> Function(QualifiedCharacteristic characteristic,
            {required List<int> value})
        writeWithOutResponse,
    required void Function(String message) logMessage,
    required Stream<List<int>> Function(QualifiedCharacteristic characteristic)
        subscribeToCharacteristic,
  })  : _bleDiscoverServices = bleDiscoverServices,
        _readCharacteristic = readCharacteristic,
        _writeWithResponse = writeWithResponse,
        _writeWithoutResponse = writeWithOutResponse,
        _subScribeToCharacteristic = subscribeToCharacteristic;

  final Future<List<DiscoveredService>> Function(String deviceId)
      _bleDiscoverServices;

  final Future<List<int>> Function(QualifiedCharacteristic characteristic)
      _readCharacteristic;

  final Future<void> Function(QualifiedCharacteristic characteristic,
      {required List<int> value}) _writeWithResponse;

  final Future<void> Function(QualifiedCharacteristic characteristic,
      {required List<int> value}) _writeWithoutResponse;

  final Stream<List<int>> Function(QualifiedCharacteristic characteristic)
      _subScribeToCharacteristic;
}
