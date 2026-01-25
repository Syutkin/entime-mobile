import 'dart:async';

import 'package:entime/src/feature/bluetooth/logic/bluetooth_connection_interface.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBluetoothDevice extends Mock implements BluetoothDevice {}

class MockBluetoothCharacteristic extends Mock implements BluetoothCharacteristic {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('BleConnectionWrapper', () {
    test('reads initial battery level and emits it', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();
      final batteryCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final batteryController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(device.disconnect).thenAnswer((_) async {});

      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);
      when(() => batteryCharacteristic.onValueReceived).thenAnswer((_) => batteryController.stream);
      when(batteryCharacteristic.read).thenAnswer((_) async => [55]);

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
        batteryCharacteristic: batteryCharacteristic,
      );

      final levels = <int>[];
      final sub = wrapper.batteryLevel?.listen(levels.add);

      await Future<void>.delayed(Duration.zero);

      expect(levels, [55]);
      verify(batteryCharacteristic.read).called(1);

      await sub?.cancel();
      await wrapper.finish();
      await rxController.close();
      await batteryController.close();
      await connectionStateController.close();
    });
  });
}
