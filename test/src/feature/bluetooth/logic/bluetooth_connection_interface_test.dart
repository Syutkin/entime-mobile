import 'dart:async';
import 'dart:typed_data';

import 'package:entime/src/feature/bluetooth/logic/bluetooth_connection_interface.dart';
import 'package:entime/src/feature/bluetooth/logic/bluetooth_uuids.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBluetoothDevice extends Mock implements BluetoothDevice {}

class MockBluetoothCharacteristic extends Mock implements BluetoothCharacteristic {}

class MockBluetoothService extends Mock implements BluetoothService {}

BluetoothCharacteristic buildCharacteristic({
  required Guid uuid,
  Stream<List<int>>? onValueReceived,
}) {
  final characteristic = MockBluetoothCharacteristic();
  when(() => characteristic.uuid).thenReturn(uuid);
  when(() => characteristic.onValueReceived).thenAnswer((_) => onValueReceived ?? const Stream<List<int>>.empty());
  when(() => characteristic.read()).thenAnswer((_) async => <int>[]);
  when(() => characteristic.setNotifyValue(true)).thenAnswer((_) async => true);
  when(() => characteristic.write(any())).thenAnswer((_) async {});
  return characteristic;
}

BluetoothService buildService({
  required Guid uuid,
  required List<BluetoothCharacteristic> characteristics,
}) {
  final service = MockBluetoothService();
  when(() => service.uuid).thenReturn(uuid);
  when(() => service.characteristics).thenReturn(characteristics);
  return service;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    registerFallbackValue(Uint8List(0));
    registerFallbackValue(<int>[]);
  });

  group('BleConnectionWrapper', () {
    test('isConnected delegates to device', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.disconnect()).thenAnswer((_) => Future.value());
      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
      );

      expect(wrapper.isConnected, isTrue);

      await wrapper.finish();
      await rxController.close();
      await connectionStateController.close();
    });

    test('write delegates to tx characteristic', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(false);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);
      when(() => txCharacteristic.write(any())).thenAnswer((_) async {});

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
      );

      await wrapper.write(Uint8List.fromList([1, 2]));

      verify(
        () => txCharacteristic.write(
          any(
            that: predicate<List<int>>((value) => value.length == 2 && value[0] == 1 && value[1] == 2),
          ),
        ),
      ).called(1);

      await wrapper.finish();
      await rxController.close();
      await connectionStateController.close();
    });

    test('input emits RX notifications', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(false);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
      );

      final nextValue = wrapper.input!.first;
      rxController.add([1, 2, 3]);

      expect(await nextValue, Uint8List.fromList([1, 2, 3]));

      await wrapper.finish();
      await rxController.close();
      await connectionStateController.close();
    });

    test('battery notifications propagate', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();
      final batteryCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final batteryController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(false);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);
      when(() => batteryCharacteristic.onValueReceived).thenAnswer((_) => batteryController.stream);
      when(() => batteryCharacteristic.read()).thenAnswer((_) async => <int>[]);

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
        batteryCharacteristic: batteryCharacteristic,
      );

      final nextValue = wrapper.batteryLevel!.first;
      batteryController.add([88]);

      expect(await nextValue, 88);

      await wrapper.finish();
      await rxController.close();
      await batteryController.close();
      await connectionStateController.close();
    });

    test('batteryLevel is null without battery characteristic', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(false);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
      );

      expect(wrapper.batteryLevel, isNull);

      await wrapper.finish();
      await rxController.close();
      await connectionStateController.close();
    });

    test('initial battery read errors are ignored', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();
      final batteryCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final batteryController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(false);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);
      when(() => batteryCharacteristic.onValueReceived).thenAnswer((_) => batteryController.stream);
      when(() => batteryCharacteristic.read()).thenThrow(Exception('read failed'));

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
        batteryCharacteristic: batteryCharacteristic,
      );

      final levels = <int>[];
      final sub = wrapper.batteryLevel?.listen(levels.add);

      await Future<void>.delayed(Duration.zero);

      expect(levels, isEmpty);

      await sub?.cancel();
      await wrapper.finish();
      await rxController.close();
      await batteryController.close();
      await connectionStateController.close();
    });

    test('initial battery read empty does not emit', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();
      final batteryCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final batteryController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(false);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);
      when(() => batteryCharacteristic.onValueReceived).thenAnswer((_) => batteryController.stream);
      when(() => batteryCharacteristic.read()).thenAnswer((_) async => <int>[]);

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
        batteryCharacteristic: batteryCharacteristic,
      );

      final levels = <int>[];
      final sub = wrapper.batteryLevel?.listen(levels.add);

      await Future<void>.delayed(Duration.zero);

      expect(levels, isEmpty);

      await sub?.cancel();
      await wrapper.finish();
      await rxController.close();
      await batteryController.close();
      await connectionStateController.close();
    });

    test('close is idempotent', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);
      when(device.disconnect).thenAnswer((_) async {});

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
      );

      await wrapper.close();
      await wrapper.close();

      verify(device.disconnect).called(1);

      await rxController.close();
      await connectionStateController.close();
    });

    test('close skips disconnect after remote disconnect', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);
      when(device.disconnect).thenAnswer((_) async {});

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
      );

      connectionStateController.add(BluetoothConnectionState.disconnected);
      await Future<void>.delayed(Duration.zero);

      await wrapper.close();

      verifyNever(() => device.disconnect());

      await rxController.close();
      await connectionStateController.close();
    });

    test('close skips disconnect when already disconnected', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(false);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);
      when(device.disconnect).thenAnswer((_) async {});

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
      );

      await wrapper.close();

      verifyNever(() => device.disconnect());

      await rxController.close();
      await connectionStateController.close();
    });

    test('remote disconnected closes input and battery streams', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();
      final batteryCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final batteryController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);
      when(() => batteryCharacteristic.onValueReceived).thenAnswer((_) => batteryController.stream);
      when(() => batteryCharacteristic.read()).thenAnswer((_) async => <int>[]);

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
        batteryCharacteristic: batteryCharacteristic,
      );

      final inputDone = expectLater(wrapper.input, emitsDone);
      final batteryDone = expectLater(wrapper.batteryLevel, emitsDone);

      connectionStateController.add(BluetoothConnectionState.disconnected);

      await inputDone;
      await batteryDone;

      await wrapper.finish();
      await rxController.close();
      await batteryController.close();
      await connectionStateController.close();
    });

    test('close ignores disconnect timeout', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(device.disconnect).thenThrow(
        FlutterBluePlusException(
          ErrorPlatform.fbp,
          'disconnect',
          FbpErrorCode.timeout.index,
          'Timed out after 35s',
        ),
      );

      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
      );

      await wrapper.close();

      verify(device.disconnect).called(1);

      await rxController.close();
      await connectionStateController.close();
    });

    test('close ignores non-timeout disconnect errors', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(device.disconnect).thenThrow(
        FlutterBluePlusException(
          ErrorPlatform.fbp,
          'disconnect',
          FbpErrorCode.deviceIsDisconnected.index,
          'device is not connected',
        ),
      );
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
      );

      await wrapper.close();

      verify(device.disconnect).called(1);

      await rxController.close();
      await connectionStateController.close();
    });

    test('close ignores generic disconnect exceptions', () async {
      final device = MockBluetoothDevice();
      final txCharacteristic = MockBluetoothCharacteristic();
      final rxCharacteristic = MockBluetoothCharacteristic();

      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(device.disconnect).thenThrow(Exception('disconnect failed'));
      when(() => rxCharacteristic.onValueReceived).thenAnswer((_) => rxController.stream);

      final wrapper = BleConnectionWrapper(
        device: device,
        txCharacteristic: txCharacteristic,
        rxCharacteristic: rxCharacteristic,
      );

      await wrapper.close();

      verify(device.disconnect).called(1);

      await rxController.close();
      await connectionStateController.close();
    });

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

  group('BluetoothConnectionFactory', () {
    test('throws when NUS TX/RX missing', () async {
      final device = MockBluetoothDevice();

      final battery = buildCharacteristic(uuid: BluetoothUuids.batteryLevel);
      final batteryService = buildService(
        uuid: BluetoothUuids.batteryService,
        characteristics: [battery],
      );

      when(() => device.connectionState).thenAnswer((_) => const Stream<BluetoothConnectionState>.empty());
      when(() => device.connect(license: License.free)).thenAnswer((_) async {});
      when(() => device.requestMtu(247)).thenAnswer((_) async {
        return 247;
      });
      when(() => device.discoverServices()).thenAnswer((_) async => [batteryService]);
      when(device.disconnect).thenAnswer((_) async {});

      final factory = BluetoothConnectionFactory();

      await expectLater(
        factory.connectToDevice(device),
        throwsA(isA<StateError>()),
      );
      verify(device.disconnect).called(1);
    });

    test('returns wrapper and configures RX notify', () async {
      final device = MockBluetoothDevice();
      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      final tx = buildCharacteristic(uuid: BluetoothUuids.nusTx);
      final rx = buildCharacteristic(uuid: BluetoothUuids.nusRx, onValueReceived: rxController.stream);
      final nusService = buildService(
        uuid: BluetoothUuids.nusService,
        characteristics: [tx, rx],
      );

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => device.connect(license: License.free)).thenAnswer((_) async {});
      when(() => device.requestMtu(247)).thenAnswer((_) async {
        return 247;
      });
      when(() => device.discoverServices()).thenAnswer((_) async => [nusService]);

      final factory = BluetoothConnectionFactory();

      final connection = await factory.connectToDevice(device);

      expect(connection, isA<BleConnectionWrapper>());
      expect(connection.input, isNotNull);
      verify(() => rx.setNotifyValue(true)).called(1);

      await rxController.close();
      await connectionStateController.close();
    });

    test('battery notify attempted when BAS present', () async {
      final device = MockBluetoothDevice();
      final rxController = StreamController<List<int>>.broadcast();
      final batteryController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      final tx = buildCharacteristic(uuid: BluetoothUuids.nusTx);
      final rx = buildCharacteristic(uuid: BluetoothUuids.nusRx, onValueReceived: rxController.stream);
      final battery = buildCharacteristic(uuid: BluetoothUuids.batteryLevel, onValueReceived: batteryController.stream);

      final nusService = buildService(
        uuid: BluetoothUuids.nusService,
        characteristics: [tx, rx],
      );
      final batteryService = buildService(
        uuid: BluetoothUuids.batteryService,
        characteristics: [battery],
      );

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => device.connect(license: License.free)).thenAnswer((_) async {});
      when(() => device.requestMtu(247)).thenAnswer((_) async {
        return 247;
      });
      when(() => device.discoverServices()).thenAnswer((_) async => [nusService, batteryService]);

      final factory = BluetoothConnectionFactory();

      final connection = await factory.connectToDevice(device);

      expect(connection, isA<BleConnectionWrapper>());
      expect(connection.batteryLevel, isNotNull);
      verify(() => battery.setNotifyValue(true)).called(1);

      await rxController.close();
      await batteryController.close();
      await connectionStateController.close();
    });

    test('battery notify errors are ignored', () async {
      final device = MockBluetoothDevice();
      final rxController = StreamController<List<int>>.broadcast();
      final batteryController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      final tx = buildCharacteristic(uuid: BluetoothUuids.nusTx);
      final rx = buildCharacteristic(uuid: BluetoothUuids.nusRx, onValueReceived: rxController.stream);
      final battery = buildCharacteristic(uuid: BluetoothUuids.batteryLevel, onValueReceived: batteryController.stream);
      when(() => battery.setNotifyValue(true)).thenThrow(Exception('notify not allowed'));

      final nusService = buildService(
        uuid: BluetoothUuids.nusService,
        characteristics: [tx, rx],
      );
      final batteryService = buildService(
        uuid: BluetoothUuids.batteryService,
        characteristics: [battery],
      );

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => device.connect(license: License.free)).thenAnswer((_) async {});
      when(() => device.requestMtu(247)).thenAnswer((_) async {
        return 247;
      });
      when(() => device.discoverServices()).thenAnswer((_) async => [nusService, batteryService]);

      final factory = BluetoothConnectionFactory();

      final connection = await factory.connectToDevice(device);

      expect(connection, isA<BleConnectionWrapper>());
      verify(() => rx.setNotifyValue(true)).called(1);
      verify(() => battery.setNotifyValue(true)).called(1);

      await rxController.close();
      await batteryController.close();
      await connectionStateController.close();
    });

    test('requestMtu failure is ignored', () async {
      final device = MockBluetoothDevice();
      final rxController = StreamController<List<int>>.broadcast();
      final connectionStateController = StreamController<BluetoothConnectionState>.broadcast();

      final tx = buildCharacteristic(uuid: BluetoothUuids.nusTx);
      final rx = buildCharacteristic(uuid: BluetoothUuids.nusRx, onValueReceived: rxController.stream);
      final nusService = buildService(
        uuid: BluetoothUuids.nusService,
        characteristics: [tx, rx],
      );

      when(() => device.isConnected).thenReturn(true);
      when(() => device.connectionState).thenAnswer((_) => connectionStateController.stream);
      when(() => device.connect(license: License.free)).thenAnswer((_) async {});
      when(() => device.requestMtu(247)).thenThrow(Exception('mtu failed'));
      when(() => device.discoverServices()).thenAnswer((_) async => [nusService]);

      final factory = BluetoothConnectionFactory();

      final connection = await factory.connectToDevice(device);

      expect(connection, isA<BleConnectionWrapper>());
      verify(() => rx.setNotifyValue(true)).called(1);

      await rxController.close();
      await connectionStateController.close();
    });
  });
}
