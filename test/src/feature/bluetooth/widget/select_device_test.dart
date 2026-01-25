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

class MockBluetoothDevice extends Mock implements BluetoothDevice {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockBluetoothProvider bluetoothProvider;
  late MockBluetoothBloc bluetoothBloc;
  late StreamController<bool> scanningController;
  late StreamController<List<BluetoothDeviceWithRSSI>> resultsController;

  Widget testApp(Widget child) {
    return BlocProvider<BluetoothBloc>.value(
      value: bluetoothBloc,
      child: MaterialApp(
        localizationsDelegates: const [Localization.delegate],
        supportedLocales: Localization.supportedLocales,
        home: child,
      ),
    );
  }

  setUp(() {
    bluetoothProvider = MockBluetoothProvider();
    bluetoothBloc = MockBluetoothBloc();
    scanningController = StreamController<bool>.broadcast();
    resultsController = StreamController<List<BluetoothDeviceWithRSSI>>.broadcast();

    when(() => bluetoothProvider.isScanning).thenAnswer((_) => scanningController.stream);
    when(() => bluetoothProvider.scanResultsWithRssi()).thenAnswer((_) => resultsController.stream);
    when(() => bluetoothProvider.requestPermissions()).thenAnswer((_) async {});
    when(() => bluetoothProvider.startScan()).thenAnswer((_) async {});
    when(() => bluetoothProvider.stopScan()).thenAnswer((_) async {});
    when(() => bluetoothBloc.bluetoothProvider).thenReturn(bluetoothProvider);
    when(() => bluetoothBloc.state).thenReturn(const BluetoothBlocState.notInitialized());
  });

  tearDown(() async {
    await scanningController.close();
    await resultsController.close();
  });

  group('SelectDeviceScreen tests', () {
    patrolWidgetTest('Initial build shows scan indicator and title', (PatrolTester $) async {
      await $.pumpWidget(testApp(const SelectDeviceScreen()));
      await $.pump();

      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
      expect($(CircularProgressIndicator), findsOneWidget);
    });

    patrolWidgetTest('Shows replay icon after scan stops', (PatrolTester $) async {
      await $.pumpWidget(testApp(const SelectDeviceScreen()));
      await $.pump();
      scanningController.add(false);
      await $.pump();

      final iconButton = $(IconButton).evaluate().single.widget as IconButton;
      final icon = iconButton.icon as Icon;
      expect(icon.icon, Icons.replay);
    });

    patrolWidgetTest('Lists scanned device and returns it on tap', (PatrolTester $) async {
      late BuildContext rootContext;

      await $.pumpWidget(
        BlocProvider<BluetoothBloc>.value(
          value: bluetoothBloc,
          child: MaterialApp(
            localizationsDelegates: const [Localization.delegate],
            supportedLocales: Localization.supportedLocales,
            home: Builder(
              builder: (context) {
                rootContext = context;
                return const SizedBox();
              },
            ),
          ),
        ),
      );

      final resultFuture = Navigator.of(rootContext).push<BluetoothDeviceWithRSSI>(
        MaterialPageRoute(builder: (_) => const SelectDeviceScreen()),
      );
      await $.pump();
      // Let initState async work (scan start + subscriptions) flush a frame.
      await $.pump();

      const rssi = -40;
      const remoteId = DeviceIdentifier('11:22:33:44:55:66');
      const deviceName = 'Test Device';

      final device = MockBluetoothDevice();
      when(() => device.remoteId).thenReturn(remoteId);
      when(() => device.platformName).thenReturn(deviceName);
      when(() => device.isConnected).thenReturn(false);

      resultsController.add([BluetoothDeviceWithRSSI(device, rssi)]);

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

      final device = MockBluetoothDevice();
      when(() => device.remoteId).thenReturn(remoteId);
      when(() => device.platformName).thenReturn(deviceName);
      when(() => device.isConnected).thenReturn(false);

      resultsController.add([BluetoothDeviceWithRSSI(device, -40)]);

      await $.pump();

      resultsController.add([BluetoothDeviceWithRSSI(device, -10)]);

      await $.pump();

      expect($('-40'), findsNothing);
      expect($('-10'), findsOneWidget);
    });
  });
}
