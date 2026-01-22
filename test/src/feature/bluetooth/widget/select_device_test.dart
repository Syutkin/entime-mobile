// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/model/bluetooth_device_with_rssi.dart';
import 'package:entime/src/feature/bluetooth/widget/select_device.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_blue_plus_platform_interface/flutter_blue_plus_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol_finders/patrol_finders.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';

class FakePermissionHandlerPlatform extends PermissionHandlerPlatform {
  @override
  Future<PermissionStatus> checkPermissionStatus(Permission permission) async {
    return PermissionStatus.granted;
  }

  @override
  Future<ServiceStatus> checkServiceStatus(Permission permission) async {
    return ServiceStatus.enabled;
  }

  @override
  Future<bool> openAppSettings() async => true;

  @override
  Future<Map<Permission, PermissionStatus>> requestPermissions(List<Permission> permissions) async {
    return {for (final permission in permissions) permission: PermissionStatus.granted};
  }

  @override
  Future<bool> shouldShowRequestPermissionRationale(Permission permission) async => false;
}

final class FakeFlutterBluePlusPlatform extends FlutterBluePlusPlatform {
  final StreamController<BmScanResponse> _scanController = StreamController.broadcast();
  bool startScanCalled = false;
  bool stopScanCalled = false;

  @override
  Stream<BmScanResponse> get onScanResponse => _scanController.stream;

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

  Future<void> close() async {
    await _scanController.close();
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late FakeFlutterBluePlusPlatform fakePlatform;

  Widget testApp(Widget child) {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: child,
    );
  }

  setUp(() {
    fakePlatform = FakeFlutterBluePlusPlatform();
    FlutterBluePlusPlatform.instance = fakePlatform;
    PermissionHandlerPlatform.instance = FakePermissionHandlerPlatform();
  });

  tearDown(() async {
    await FlutterBluePlus.stopScan();
    await fakePlatform.close();
  });

  group('SelectDeviceScreen tests', () {
    patrolWidgetTest('Initial build shows scan indicator and title', (PatrolTester $) async {
      await $.pumpWidget(testApp(const SelectDeviceScreen()));

      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
      expect($(CircularProgressIndicator), findsOneWidget);
    });

    patrolWidgetTest('Shows replay icon after scan stops', (PatrolTester $) async {
      await $.pumpWidget(testApp(const SelectDeviceScreen()));
      // Let initState async work (scan start + subscriptions) flush a frame.
      await $.pump();
      await FlutterBluePlus.stopScan();
      await $.pump();

      final iconButton = $(IconButton).evaluate().single.widget as IconButton;
      final icon = iconButton.icon as Icon;
      expect(icon.icon, Icons.replay);
    });

    patrolWidgetTest('Lists scanned device and returns it on tap', (PatrolTester $) async {
      late BuildContext rootContext;

      await $.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [Localization.delegate],
          supportedLocales: Localization.supportedLocales,
          home: Builder(
            builder: (context) {
              rootContext = context;
              return const SizedBox();
            },
          ),
        ),
      );

      final resultFuture = Navigator.of(rootContext).push<BluetoothDeviceWithRSSI>(
        MaterialPageRoute(builder: (_) => const SelectDeviceScreen()),
      );
      await $.pump();
      // Let initState async work (scan start + subscriptions) flush a frame.
      await $.pump();

      const remoteId = DeviceIdentifier('11:22:33:44:55:66');
      const deviceName = 'Test Device';
      const rssi = -40;

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
              rssi: rssi,
            ),
          ],
          success: true,
          errorCode: 0,
          errorString: '',
        ),
      );

      await $.pump();
      expect($(deviceName), findsOneWidget);

      await $(deviceName).tap();
      final result = await resultFuture;

      expect(result, isNotNull);
      expect(result!.device.remoteId.str, remoteId.str);
      expect(result.rssi, rssi);
    });

    patrolWidgetTest('Updates RSSI when device is scanned again', (PatrolTester $) async {
      await $.pumpWidget(testApp(const SelectDeviceScreen()));
      // Let initState async work (scan start + subscriptions) flush a frame.
      await $.pump();

      const remoteId = DeviceIdentifier('11:22:33:44:55:66');
      const deviceName = 'Test Device';

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

      await $.pump();

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
              rssi: -10,
            ),
          ],
          success: true,
          errorCode: 0,
          errorString: '',
        ),
      );

      await $.pump();

      expect($('-40'), findsNothing);
      expect($('-10'), findsOneWidget);
    });
  });
}
