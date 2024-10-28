import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBluetoothConnection extends Mock implements BluetoothConnection {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late IBluetoothBackgroundConnection bbc;
  late BluetoothDevice bluetoothDevice;
  late BluetoothConnection bluetoothConnection;

  setUp(() {
    bbc = BluetoothBackgroundConnection();
    bluetoothDevice = BluetoothDevice(
      address: '00:00:00:00:00',
      name: 'Bluetooth device',
    );

    bluetoothConnection = MockBluetoothConnection();
  });

  group('Test BluetoothBackgroundConnection', () {
    test('Test connect', () async {
      await bbc.connect(bluetoothDevice);
      expect(bbc, isA<BluetoothBackgroundConnection>());
    });

    test('Test sending non empty message', () async {
      final result = await bbc.sendMessage('text');
      expect(result, true);
    });

    test('Test sending empty message', () async {
      final result = await bbc.sendMessage('');
      expect(result, false);
    });
  });
}
