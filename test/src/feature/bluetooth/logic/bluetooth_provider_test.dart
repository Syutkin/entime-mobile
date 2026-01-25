// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:async/async.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_blue_plus_platform_interface/flutter_blue_plus_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBluetoothBackgroundConnection extends Mock implements IBluetoothBackgroundConnection {}

final class FakeFlutterBluePlusPlatform extends FlutterBluePlusPlatform {
  FakeFlutterBluePlusPlatform({
    required this.adapterState,
    required this.isSupportedValue,
    this.turnOnChanged = false,
  });

  BmAdapterStateEnum adapterState;
  bool isSupportedValue;
  bool turnOnChanged;
  bool turnOnCalled = false;
  bool startScanCalled = false;
  bool stopScanCalled = false;

  final StreamController<BmBluetoothAdapterState> _adapterStateController = StreamController.broadcast();
  final StreamController<BmTurnOnResponse> _turnOnController = StreamController.broadcast();
  final StreamController<BmScanResponse> _scanController = StreamController.broadcast();

  @override
  Stream<BmBluetoothAdapterState> get onAdapterStateChanged => _adapterStateController.stream;

  @override
  Stream<BmTurnOnResponse> get onTurnOnResponse => _turnOnController.stream;

  @override
  Stream<BmScanResponse> get onScanResponse => _scanController.stream;

  @override
  Future<BmBluetoothAdapterState> getAdapterState(BmBluetoothAdapterStateRequest request) async {
    return BmBluetoothAdapterState(adapterState: adapterState);
  }

  @override
  Future<bool> isSupported(BmIsSupportedRequest request) async => isSupportedValue;

  @override
  Future<bool> turnOn(BmTurnOnRequest request) async {
    turnOnCalled = true;
    if (turnOnChanged) {
      _turnOnController.add(BmTurnOnResponse(userAccepted: true));
      _adapterStateController.add(BmBluetoothAdapterState(adapterState: BmAdapterStateEnum.on));
    }
    return turnOnChanged;
  }

  @override
  Future<bool> startScan(BmScanSettings request) async {
    startScanCalled = true;
    return true;
  }

  @override
  Future<bool> stopScan(BmStopScanRequest request) async {
    stopScanCalled = true;
    return true;
  }

  void emitScanResponse(BmScanResponse response) {
    _scanController.add(response);
  }

  void emitAdapterState(BmAdapterStateEnum state) {
    _adapterStateController.add(BmBluetoothAdapterState(adapterState: state));
  }

  Future<void> close() async {
    await _adapterStateController.close();
    await _turnOnController.close();
    await _scanController.close();
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Future<List<BluetoothDeviceWithRSSI>> nextNonEmptyDeviceList(
    StreamQueue<List<BluetoothDeviceWithRSSI>> queue,
  ) async {
    while (true) {
      final next = await queue.next;
      if (next.isNotEmpty) {
        return next;
      }
    }
  }

  group('BluetoothProvider:', () {
    late FakeFlutterBluePlusPlatform fakePlatform;
    late MockBluetoothBackgroundConnection backgroundConnection;

    setUp(() {
      fakePlatform = FakeFlutterBluePlusPlatform(
        adapterState: BmAdapterStateEnum.on,
        isSupportedValue: true,
      );
      FlutterBluePlusPlatform.instance = fakePlatform;
      backgroundConnection = MockBluetoothBackgroundConnection();
    });

    tearDown(() async {
      await fakePlatform.close();
    });

    test('initializes and exposes background connection', () {
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      expect(provider, isA<IBluetoothProvider>());
      expect(provider.bluetoothBackgroundConnection, same(backgroundConnection));
    });

    test('isSupported reflects platform isSupported', () async {
      fakePlatform.isSupportedValue = true;
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      final supported = await provider.isSupported;
      expect(supported, isTrue);
    });

    test('isOn returns true when adapter state is on', () async {
      fakePlatform.adapterState = BmAdapterStateEnum.on;
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      final isOn = await provider.isOn;
      expect(isOn, isTrue);
    });

    test('adapterState emits initial and updated states', () async {
      fakePlatform.adapterState = BmAdapterStateEnum.off;
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);

      final states = <BluetoothAdapterState>[];
      final subscription = provider.adapterState.listen(states.add);

      await Future<void>.delayed(Duration.zero);
      fakePlatform.emitAdapterState(BmAdapterStateEnum.off);
      await Future<void>.delayed(Duration.zero);
      fakePlatform.emitAdapterState(BmAdapterStateEnum.on);
      await Future<void>.delayed(Duration.zero);

      final offIndex = states.indexOf(BluetoothAdapterState.off);
      final onIndex = states.lastIndexOf(BluetoothAdapterState.on);
      expect(offIndex, greaterThanOrEqualTo(0));
      expect(onIndex, greaterThan(offIndex));

      await subscription.cancel();
    });

    test('requestEnable delegates to platform turnOn', () async {
      fakePlatform.turnOnChanged = true;
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      await provider.requestEnable();
      expect(fakePlatform.turnOnCalled, isTrue);
    });

    test('startScan delegates to platform startScan', () async {
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      await provider.startScan();
      expect(fakePlatform.startScanCalled, isTrue);
    });

    test('stopScan delegates to platform stopScan', () async {
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      await provider.stopScan();
      expect(fakePlatform.stopScanCalled, isTrue);
    });

    test('isScanning emits values during start/stop scan', () async {
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      final events = <bool>[];
      final subscription = provider.isScanning.listen(events.add);

      await provider.startScan();
      await Future<void>.delayed(Duration.zero);
      await provider.stopScan();
      await Future<void>.delayed(Duration.zero);

      expect(events, contains(true));
      expect(events.last, isFalse);

      await subscription.cancel();
    });

    test('scanResults emits when platform scan response arrives', () async {
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      await provider.startScan();

      const remoteId = DeviceIdentifier('11:22:33:44:55:66');
      const deviceName = 'Test Device';

      final resultsFuture = provider.scanResults.firstWhere((list) => list.isNotEmpty);
      fakePlatform.emitScanResponse(
        BmScanResponse(
          advertisements: [
            BmScanAdvertisement(
              remoteId: remoteId,
              platformName: deviceName,
              advName: deviceName,
              connectable: true,
              txPowerLevel: null,
              appearance: null,
              manufacturerData: <int, List<int>>{},
              serviceData: <Guid, List<int>>{},
              serviceUuids: <Guid>[],
              rssi: -40,
            ),
          ],
          success: true,
          errorCode: 0,
          errorString: '',
        ),
      );

      final results = await resultsFuture;
      expect(results.single.device.remoteId, remoteId);
    });

    test('scanResultsWithRssi aggregates results', () async {
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      await provider.startScan();

      const remoteId = DeviceIdentifier('11:22:33:44:55:66');
      final queue = StreamQueue(provider.scanResultsWithRssi());

      fakePlatform.emitScanResponse(
        BmScanResponse(
          advertisements: [
            BmScanAdvertisement(
              remoteId: remoteId,
              platformName: 'Device',
              advName: 'Device',
              connectable: true,
              txPowerLevel: null,
              appearance: null,
              manufacturerData: <int, List<int>>{},
              serviceData: <Guid, List<int>>{},
              serviceUuids: <Guid>[],
              rssi: -40,
            ),
          ],
          success: true,
          errorCode: 0,
          errorString: '',
        ),
      );

      final first = await nextNonEmptyDeviceList(queue);
      expect(first.single.rssi, -40);

      fakePlatform.emitScanResponse(
        BmScanResponse(
          advertisements: [
            BmScanAdvertisement(
              remoteId: remoteId,
              platformName: 'Device',
              advName: 'Device',
              connectable: true,
              txPowerLevel: null,
              appearance: null,
              manufacturerData: <int, List<int>>{},
              serviceData: <Guid, List<int>>{},
              serviceUuids: <Guid>[],
              rssi: -10,
            ),
          ],
          success: true,
          errorCode: 0,
          errorString: '',
        ),
      );

      final updated = await nextNonEmptyDeviceList(queue);
      expect(updated.single.rssi, -10);

      await queue.cancel();
    });

    test('requestPermissions completes', () async {
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      await provider.requestPermissions();
    });

    test('dispose delegates to background connection', () async {
      when(() => backgroundConnection.dispose()).thenAnswer((_) async {});
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      await provider.dispose();
      verify(() => backgroundConnection.dispose()).called(1);
    });
  });
}
