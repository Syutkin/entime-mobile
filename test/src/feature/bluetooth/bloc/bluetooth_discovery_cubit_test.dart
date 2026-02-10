import 'dart:async';

import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBluetoothProvider extends Mock implements IBluetoothProvider {}

class MockBluetoothDevice extends Mock implements BluetoothDevice {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('BluetoothDiscoveryCubit', () {
    late MockBluetoothProvider bluetoothProvider;
    late StreamController<bool> scanningController;
    late StreamController<List<BluetoothDeviceWithRSSI>> resultsController;
    BluetoothDiscoveryCubit? cubit;

    setUp(() {
      bluetoothProvider = MockBluetoothProvider();
      scanningController = StreamController<bool>.broadcast();
      resultsController = StreamController<List<BluetoothDeviceWithRSSI>>.broadcast();

      when(() => bluetoothProvider.isScanning).thenAnswer((_) => scanningController.stream);
      when(() => bluetoothProvider.scanResultsWithRssi()).thenAnswer((_) => resultsController.stream);
      when(() => bluetoothProvider.requestPermissions()).thenAnswer((_) async {});
      when(() => bluetoothProvider.startScan()).thenAnswer((_) async {});
      when(() => bluetoothProvider.stopScan()).thenAnswer((_) async {});
    });

    tearDown(() async {
      await cubit?.close();
      await scanningController.close();
      await resultsController.close();
    });

    test('starts with initial state', () {
      cubit = BluetoothDiscoveryCubit(bluetoothProvider: bluetoothProvider);
      expect(cubit!.state, const BluetoothDiscoveryState.initial());
    });

    test('startDiscovery requests permissions and starts scan', () async {
      cubit = BluetoothDiscoveryCubit(bluetoothProvider: bluetoothProvider);

      await cubit!.startDiscovery();

      verify(() => bluetoothProvider.requestPermissions()).called(1);
      verify(() => bluetoothProvider.startScan()).called(1);
      expect(cubit!.state.devices, isEmpty);
    });

    test('updates devices when scan results arrive', () async {
      cubit = BluetoothDiscoveryCubit(bluetoothProvider: bluetoothProvider);
      await cubit!.startDiscovery();

      final device = MockBluetoothDevice();
      final devices = [BluetoothDeviceWithRSSI(device, -42)];
      resultsController.add(devices);
      await Future<void>.delayed(Duration.zero);

      expect(cubit!.state.devices, devices);
    });

    test('handles multiple scan result emissions', () async {
      cubit = BluetoothDiscoveryCubit(bluetoothProvider: bluetoothProvider);
      await cubit!.startDiscovery();

      final device1 = MockBluetoothDevice();
      final device2 = MockBluetoothDevice();
      final first = [BluetoothDeviceWithRSSI(device1, -42)];
      final second = [BluetoothDeviceWithRSSI(device1, -30), BluetoothDeviceWithRSSI(device2, -10)];

      resultsController.add(first);
      await Future<void>.delayed(Duration.zero);
      expect(cubit!.state.devices, first);

      resultsController.add(second);
      await Future<void>.delayed(Duration.zero);
      expect(cubit!.state.devices, second);
    });

    test('updates discovery state from isScanning stream', () async {
      cubit = BluetoothDiscoveryCubit(bluetoothProvider: bluetoothProvider);
      scanningController.add(false);
      await Future<void>.delayed(Duration.zero);

      expect(cubit!.state.isDiscovering, isFalse);
    });

    test('close stops scan', () async {
      cubit = BluetoothDiscoveryCubit(bluetoothProvider: bluetoothProvider);
      await cubit!.close();

      verify(() => bluetoothProvider.stopScan()).called(1);
    });
  });
}
