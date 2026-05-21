// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:async/async.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:entime/src/feature/app_info/logic/app_info_provider.dart';
import 'package:entime/src/feature/app_info/logic/app_info_provider_io.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_blue_plus_platform_interface/flutter_blue_plus_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../../../../helpers/fake_platform_info.dart';

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

class FakePermissionHandlerPlatform extends PermissionHandlerPlatform with MockPlatformInterfaceMixin {
  FakePermissionHandlerPlatform({this.exception});

  Exception? exception;
  List<Permission> requestedPermissions = <Permission>[];

  @override
  Future<Map<Permission, PermissionStatus>> requestPermissions(List<Permission> permissions) async {
    requestedPermissions = List<Permission>.from(permissions);
    if (exception != null) {
      throw exception!;
    }
    return <Permission, PermissionStatus>{
      for (final permission in permissions) permission: PermissionStatus.granted,
    };
  }
}

const _fakeAndroidBuildVersion = <String, dynamic>{
  'sdkInt': 16,
  'baseOS': 'baseOS',
  'previewSdkInt': 30,
  'release': 'release',
  'codename': 'codename',
  'incremental': 'incremental',
  'securityPatch': 'securityPatch',
};

const _fakeSupportedAbis = <String>['arm64-v8a', 'x86', 'x86_64'];
const _fakeSupported32BitAbis = <String?>['x86 (IA-32)', 'MMX'];
const _fakeSupported64BitAbis = <String?>['x86-64', 'MMX', 'SSSE3'];
const _fakeSystemFeatures = ['FEATURE_AUDIO_PRO', 'FEATURE_AUDIO_OUTPUT'];

const _fakeAndroidDeviceInfo = <String, dynamic>{
  'id': 'id',
  'host': 'host',
  'tags': 'tags',
  'type': 'type',
  'model': 'model',
  'board': 'board',
  'brand': 'Google',
  'device': 'device',
  'product': 'product',
  'name': 'Custom Device Name',
  'display': 'display',
  'hardware': 'hardware',
  'isPhysicalDevice': true,
  'freeDiskSize': 70729949184,
  'totalDiskSize': 113281839104,
  'bootloader': 'bootloader',
  'fingerprint': 'fingerprint',
  'manufacturer': 'manufacturer',
  'supportedAbis': _fakeSupportedAbis,
  'systemFeatures': _fakeSystemFeatures,
  'version': _fakeAndroidBuildVersion,
  'supported64BitAbis': _fakeSupported64BitAbis,
  'supported32BitAbis': _fakeSupported32BitAbis,
  'isLowRamDevice': false,
  'physicalRamSize': 8192,
  'availableRamSize': 4096,
};

AndroidDeviceInfo _androidInfoWithSdkInt(int sdkInt) {
  return AndroidDeviceInfo.fromMap(<String, dynamic>{
    ..._fakeAndroidDeviceInfo,
    'version': <String, dynamic>{..._fakeAndroidBuildVersion, 'sdkInt': sdkInt},
  });
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Future<List<ScanResult>> nextNonEmptyDeviceList(
    StreamQueue<List<ScanResult>> queue,
  ) async {
    while (true) {
      final next = await queue.next;
      if (next.isNotEmpty) {
        return next;
      }
    }
  }

  BmScanAdvertisement scanAdvertisement({
    required DeviceIdentifier remoteId,
    required String platformName,
    required int rssi,
  }) {
    return BmScanAdvertisement(
      remoteId: remoteId,
      platformName: platformName,
      advName: platformName,
      connectable: true,
      txPowerLevel: null,
      appearance: null,
      manufacturerData: <int, List<int>>{},
      serviceData: <Guid, List<int>>{},
      serviceUuids: <Guid>[],
      rssi: rssi,
    );
  }

  group('BluetoothProvider:', () {
    late FakeFlutterBluePlusPlatform fakePlatform;
    late MockBluetoothBackgroundConnection backgroundConnection;
    late IAppInfoProvider appInfo;
    late PermissionHandlerPlatform originalPermissionPlatform;
    late FakePermissionHandlerPlatform permissionPlatform;

    setUp(() {
      fakePlatform = FakeFlutterBluePlusPlatform(
        adapterState: BmAdapterStateEnum.on,
        isSupportedValue: true,
      );
      FlutterBluePlusPlatform.instance = fakePlatform;
      originalPermissionPlatform = PermissionHandlerPlatform.instance;
      permissionPlatform = FakePermissionHandlerPlatform();
      PermissionHandlerPlatform.instance = permissionPlatform;
      backgroundConnection = MockBluetoothBackgroundConnection();
      appInfo = DefaultAppInfoProvider();
    });

    tearDown(() async {
      PermissionHandlerPlatform.instance = originalPermissionPlatform;
      await fakePlatform.close();
    });

    test('initializes and exposes background connection', () {
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
      expect(provider, isA<IBluetoothProvider>());
      expect(provider.bluetoothBackgroundConnection, same(backgroundConnection));
    });

    test('isSupported reflects platform isSupported', () async {
      fakePlatform.isSupportedValue = true;
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
      final supported = await provider.isSupported;
      expect(supported, isTrue);
    });

    test('isOn returns true when adapter state is on', () async {
      fakePlatform.adapterState = BmAdapterStateEnum.on;
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
      final isOn = await provider.isOn;
      expect(isOn, isTrue);
    });

    test('adapterState emits initial and updated states', () async {
      fakePlatform.adapterState = BmAdapterStateEnum.off;
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);

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
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
      await provider.requestEnable();
      expect(fakePlatform.turnOnCalled, isTrue);
    });

    test('startScan delegates to platform startScan', () async {
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
      await provider.startScan();
      expect(fakePlatform.startScanCalled, isTrue);
    });

    test('stopScan delegates to platform stopScan', () async {
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
      await provider.stopScan();
      expect(fakePlatform.stopScanCalled, isTrue);
    });

    test('isScanning emits values during start/stop scan', () async {
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
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
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
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

    test('scanResultsAggregated aggregates results', () async {
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
      await provider.startScan();

      const remoteId = DeviceIdentifier('11:22:33:44:55:66');
      final queue = StreamQueue(provider.scanResultsAggregated());

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
      expect(updated.single.device.remoteId, remoteId);
      expect(updated.single, isNot(same(first.single)));

      await queue.cancel();
    });

    test('scanResultsAggregated keeps other devices when one device updates', () async {
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
      await provider.startScan();

      const firstRemoteId = DeviceIdentifier('11:22:33:44:55:66');
      const secondRemoteId = DeviceIdentifier('22:33:44:55:66:77');
      final queue = StreamQueue(provider.scanResultsAggregated());

      fakePlatform.emitScanResponse(
        BmScanResponse(
          advertisements: [
            scanAdvertisement(remoteId: firstRemoteId, platformName: 'First', rssi: -40),
            scanAdvertisement(remoteId: secondRemoteId, platformName: 'Second', rssi: -70),
          ],
          success: true,
          errorCode: 0,
          errorString: '',
        ),
      );

      final first = await nextNonEmptyDeviceList(queue);
      expect(first.map((result) => result.device.remoteId), [firstRemoteId, secondRemoteId]);
      expect(first.map((result) => result.rssi), [-40, -70]);

      fakePlatform.emitScanResponse(
        BmScanResponse(
          advertisements: [
            scanAdvertisement(remoteId: firstRemoteId, platformName: 'First', rssi: -20),
          ],
          success: true,
          errorCode: 0,
          errorString: '',
        ),
      );

      final updated = await nextNonEmptyDeviceList(queue);
      expect(updated.map((result) => result.device.remoteId), [firstRemoteId, secondRemoteId]);
      expect(updated.map((result) => result.rssi), [-20, -70]);

      await queue.cancel();
    });

    test('startScan stops after custom timeout', () async {
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);

      await provider.startScan(timeout: const Duration(milliseconds: 10));
      await Future<void>.delayed(const Duration(milliseconds: 50));

      expect(fakePlatform.stopScanCalled, isTrue);
    });

    test('requestPermissions completes', () async {
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
      await provider.requestPermissions();
    });

    test(
      'requestPermissions does nothing on unsupported platforms',
      () async {
        final provider = BluetoothProvider(
          appInfo: appInfo,
          bluetoothBackgroundConnection: backgroundConnection,
          platformInfo: FakePlatformInfo(),
        );

        await provider.requestPermissions();

        expect(permissionPlatform.requestedPermissions, isEmpty);
      },
    );

    test(
      'requestPermissions requests bluetooth permissions on Android 31+',
      () async {
        final provider = BluetoothProvider(
          appInfo: AndroidAppInfoProvider(_androidInfoWithSdkInt(31)),
          bluetoothBackgroundConnection: backgroundConnection,
          platformInfo: FakePlatformInfo(isAndroid: true),
        );

        await provider.requestPermissions();

        expect(
          permissionPlatform.requestedPermissions,
          <Permission>[
            Permission.bluetoothScan,
            Permission.bluetoothConnect,
          ],
        );
      },
    );

    test(
      'requestPermissions requests location on Android below 31',
      () async {
        final provider = BluetoothProvider(
          appInfo: AndroidAppInfoProvider(_androidInfoWithSdkInt(30)),
          bluetoothBackgroundConnection: backgroundConnection,
          platformInfo: FakePlatformInfo(isAndroid: true),
        );

        await provider.requestPermissions();

        expect(
          permissionPlatform.requestedPermissions,
          <Permission>[Permission.locationWhenInUse],
        );
      },
    );

    test(
      'requestPermissions requests bluetooth and location on iOS',
      () async {
        final provider = BluetoothProvider(
          appInfo: appInfo,
          bluetoothBackgroundConnection: backgroundConnection,
          platformInfo: FakePlatformInfo(isIOS: true),
        );

        await provider.requestPermissions();

        expect(
          permissionPlatform.requestedPermissions,
          <Permission>[
            Permission.bluetoothScan,
            Permission.bluetoothConnect,
            Permission.locationWhenInUse,
          ],
        );
      },
    );

    test(
      'requestPermissions ignores MissingPluginException',
      () async {
        permissionPlatform.exception = MissingPluginException();
        final provider = BluetoothProvider(
          appInfo: appInfo,
          bluetoothBackgroundConnection: backgroundConnection,
          platformInfo: FakePlatformInfo(isAndroid: true),
        );

        await provider.requestPermissions();

        expect(permissionPlatform.requestedPermissions, isNotEmpty);
      },
    );

    test(
      'requestPermissions logs error when permission request fails',
      () async {
        final logEvents = <LogEvent>[];
        void logListener(LogEvent event) {
          logEvents.add(event);
        }

        Logger.addLogListener(logListener);
        addTearDown(() => Logger.removeLogListener(logListener));

        permissionPlatform.exception = Exception('boom');
        final provider = BluetoothProvider(
          appInfo: appInfo,
          bluetoothBackgroundConnection: backgroundConnection,
          platformInfo: FakePlatformInfo(isAndroid: true),
        );

        await provider.requestPermissions();

        final matching = logEvents
            .where((event) => event.message == 'Bluetooth -> Can not request permissions')
            .toList();
        expect(matching, hasLength(1));
        expect(matching.single.level, Level.error);
        expect(matching.single.error, isA<Exception>());
      },
    );

    test('dispose delegates to background connection', () async {
      when(() => backgroundConnection.dispose()).thenAnswer((_) async {});
      final provider = BluetoothProvider(appInfo: appInfo, bluetoothBackgroundConnection: backgroundConnection);
      await provider.dispose();
      verify(() => backgroundConnection.dispose()).called(1);
    });
  });
}
