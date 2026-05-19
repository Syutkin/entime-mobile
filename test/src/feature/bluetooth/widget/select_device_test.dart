import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockBluetoothProvider extends Mock implements IBluetoothProvider {}

class MockBluetoothBloc extends MockBloc<BluetoothEvent, BluetoothBlocState> implements BluetoothBloc {}

class MockBluetoothDiscoveryCubit extends MockCubit<BluetoothDiscoveryState> implements BluetoothDiscoveryCubit {}

class MockBluetoothDevice extends Mock implements BluetoothDevice {}

ScanResult _scanResult({
  required BluetoothDevice device,
  required int rssi,
  DateTime? timeStamp,
}) {
  return ScanResult(
    device: device,
    rssi: rssi,
    timeStamp: timeStamp ?? DateTime(2020),
    advertisementData: AdvertisementData(
      advName: device.platformName,
      txPowerLevel: null,
      appearance: null,
      connectable: true,
      manufacturerData: const {},
      serviceData: const {},
      serviceUuids: const [],
    ),
  );
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockBluetoothProvider bluetoothProvider;
  late MockBluetoothBloc bluetoothBloc;
  late MockBluetoothDiscoveryCubit bluetoothDiscoveryCubit;
  late StreamController<bool> scanningController;
  late StreamController<List<ScanResult>> resultsController;

  Widget testApp(Widget child) {
    return BlocProvider<BluetoothBloc>.value(
      value: bluetoothBloc,
      child: BlocProvider<BluetoothDiscoveryCubit>.value(
        value: bluetoothDiscoveryCubit,
        child: MaterialApp(
          localizationsDelegates: const [Localization.delegate],
          supportedLocales: Localization.supportedLocales,
          home: child,
        ),
      ),
    );
  }

  setUp(() {
    bluetoothProvider = MockBluetoothProvider();
    bluetoothBloc = MockBluetoothBloc();
    bluetoothDiscoveryCubit = MockBluetoothDiscoveryCubit();
    scanningController = StreamController<bool>.broadcast();
    resultsController = StreamController<List<ScanResult>>.broadcast();

    when(() => bluetoothProvider.isScanning).thenAnswer((_) => scanningController.stream);
    when(() => bluetoothProvider.scanResultsAggregated()).thenAnswer((_) => resultsController.stream);
    when(() => bluetoothProvider.requestPermissions()).thenAnswer((_) async {});
    when(() => bluetoothProvider.startScan()).thenAnswer((_) async {});
    when(() => bluetoothProvider.stopScan()).thenAnswer((_) async {});
    when(() => bluetoothBloc.bluetoothProvider).thenReturn(bluetoothProvider);
    when(() => bluetoothBloc.state).thenReturn(const BluetoothBlocState.notInitialized());
    when(() => bluetoothDiscoveryCubit.startDiscovery()).thenAnswer((_) async {});
  });

  tearDown(() async {
    await scanningController.close();
    await resultsController.close();
  });

  group('SelectDeviceScreen tests', () {
    patrolWidgetTest('When discovering state then shows scan indicator and title', ($) async {
      when(
        () => bluetoothDiscoveryCubit.state,
      ).thenReturn(const BluetoothDiscoveryState.initial().copyWith(isDiscovering: true));

      await $.pumpWidget(testApp(const SelectDeviceScreen()));
      await $.pump();

      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
      expect($(CircularProgressIndicator), findsOneWidget);
    });

    patrolWidgetTest('Shows replay icon when state is not discovering', ($) async {
      when(
        () => bluetoothDiscoveryCubit.state,
      ).thenReturn(const BluetoothDiscoveryState.initial().copyWith(isDiscovering: false));

      await $.pumpWidget(testApp(const SelectDeviceScreen()));
      await $.pump();

      final iconButton = $(IconButton).evaluate().single.widget as IconButton;
      final icon = iconButton.icon as Icon;
      expect(icon.icon, Icons.replay);
    });

    patrolWidgetTest('Lists scanned device and returns it on tap', ($) async {
      late BuildContext rootContext;

      const rssi = -40;
      const remoteId = DeviceIdentifier('11:22:33:44:55:66');
      const deviceName = 'Test Device';

      final device = MockBluetoothDevice();
      when(() => device.remoteId).thenReturn(remoteId);
      when(() => device.platformName).thenReturn(deviceName);
      when(() => device.isConnected).thenReturn(false);

      final deviceWithRSSI = _scanResult(device: device, rssi: rssi);

      final devices = <ScanResult>[
        deviceWithRSSI,
        _scanResult(device: BluetoothDevice.fromId('11:11:11:11:11:11'), rssi: -60),
        _scanResult(device: BluetoothDevice.fromId('22:22:22:22:22:22'), rssi: -70),
        _scanResult(device: BluetoothDevice.fromId('33:33:33:33:33:33'), rssi: -80),
        _scanResult(device: BluetoothDevice.fromId('44:44:44:44:44:44'), rssi: -90),
      ];

      when(
        () => bluetoothDiscoveryCubit.state,
      ).thenReturn(const BluetoothDiscoveryState.initial().copyWith(devices: devices));

      await $.pumpWidget(
        testApp(
          Builder(
            builder: (context) {
              rootContext = context;
              return const SelectDeviceScreen();
            },
          ),
        ),
      );
      await $.pump();

      final resultFuture = Navigator.of(rootContext).push<BluetoothDevice>(
        MaterialPageRoute(builder: (_) => const SelectDeviceScreen()),
      );

      await $.pump();
      expect($(remoteId.str), findsOneWidget);
      expect($(deviceName), findsOneWidget);
      expect($(rssi.toString()), findsOneWidget);

      await $(device.remoteId.str).tap();
      final result = await resultFuture;

      expect(result, isNotNull);
      expect(result!.remoteId, remoteId);
      expect(result.platformName, deviceName);
    });
  });
}
