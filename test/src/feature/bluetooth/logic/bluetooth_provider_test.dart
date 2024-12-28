import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFlutterBluetoothSerial extends Mock
    implements FlutterBluetoothSerial {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
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

      expect(bluetoothProvider, isA<IBluetoothProvider>());
    });
  });
}
