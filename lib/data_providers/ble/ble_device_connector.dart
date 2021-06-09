import 'dart:async';

import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

import 'package:entime/models/models.dart';

class BleDeviceConnector extends ReactiveState<ConnectionStateUpdate> {
  BleDeviceConnector({
    required FlutterReactiveBle ble,
    // required Function(String message) logMessage,
  }) : _ble = ble
  // _logMessage = logMessage
  ;

  final FlutterReactiveBle _ble;

  // final void Function(String message) _logMessage;

  @override
  Stream<ConnectionStateUpdate> get state => _deviceConnectionController.stream;

  final _deviceConnectionController = StreamController<ConnectionStateUpdate>();

  // ignore: cancel_subscriptions
  late StreamSubscription<ConnectionStateUpdate> _connection;

  Future<void> connect(String deviceId) async {
    print('Start connecting to $deviceId');
    // _logMessage('Start connecting to $deviceId');
    _connection = _ble.connectToDevice(id: deviceId).listen(
      (update) {
        // _logMessage(
        print(
            'ConnectionState for device $deviceId : ${update.connectionState}');
        _deviceConnectionController.add(update);
      },
      onError: (Object e) =>
          print('Connecting to device $deviceId resulted in error $e'),
      // _logMessage('Connecting to device $deviceId resulted in error $e'),
    );
  }

  Future<void> disconnect(String deviceId) async {
    try {
      print('disconnecting to device: $deviceId');
      // _logMessage('disconnecting to device: $deviceId');
      await _connection.cancel();
    } on Exception catch (e, _) {
      print('Error disconnecting from a device: $e');
      // _logMessage('Error disconnecting from a device: $e');
    } finally {
      // Since [_connection] subscription is terminated, the "disconnected" state cannot be received and propagated
      _deviceConnectionController.add(
        ConnectionStateUpdate(
          deviceId: deviceId,
          connectionState: DeviceConnectionState.disconnected,
          failure: null,
        ),
      );
    }
  }

  Future<void> dispose() async {
    await _deviceConnectionController.close();
  }
}
