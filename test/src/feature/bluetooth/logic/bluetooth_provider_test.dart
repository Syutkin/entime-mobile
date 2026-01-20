import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('IBluetoothProvider:', () {
    test('Initialize', () async {
      final IBluetoothBackgroundConnection bluetoothBackgroundConnection = BluetoothBackgroundConnection();
      final IBluetoothProvider bluetoothProvider = BluetoothProvider(
        bluetoothBackgroundConnection: bluetoothBackgroundConnection,
      );

      expect(bluetoothProvider, isA<IBluetoothProvider>());
    });
  });
}
