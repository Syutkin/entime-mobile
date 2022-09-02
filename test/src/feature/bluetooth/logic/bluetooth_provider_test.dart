import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/annotations.dart';

import 'bluetooth_provider_test.mocks.dart';

@GenerateMocks([FlutterBluetoothSerial])
void main() {
  group('IBluetoothProvider:', () {
    test('Initialize', () async {
      final FlutterBluetoothSerial flutterBluetoothSerial =
          MockFlutterBluetoothSerial();
      final IBluetoothBackgroundConnection bluetoothBackgroundConnection =
          BluetoothBackgroundConnection();
      final IBluetoothProvider bluetoothProvider = BluetoothProvider(
        flutterBluetoothSerial: flutterBluetoothSerial,
        bluetoothBackgroundConnection: bluetoothBackgroundConnection,
      );

      expect(
        bluetoothProvider,
        isA<IBluetoothProvider>(),
      );
    });
  });
}
