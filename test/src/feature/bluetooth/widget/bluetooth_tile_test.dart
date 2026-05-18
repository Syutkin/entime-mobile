import 'dart:async';
import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/bluetooth/widget/bluetooth_tile.dart';
import 'package:entime/src/feature/module_settings/module_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockBluetoothBloc extends MockBloc<BluetoothEvent, BluetoothBlocState> implements BluetoothBloc {}

class MockBluetoothDiscoveryCubit extends MockCubit<BluetoothDiscoveryState> implements BluetoothDiscoveryCubit {}

class MockModuleSettingsBloc extends MockBloc<ModuleSettingsEvent, ModuleSettingsState> implements ModuleSettingsBloc {}

class MockBluetoothDevice extends Mock implements BluetoothDevice {}

class MockBluetoothProvider extends Mock implements IBluetoothProvider {}

void main() {
  late BluetoothBloc btBloc;
  late BluetoothDiscoveryCubit bdCubit;
  late BluetoothRequestCubit bluetoothRequestCubit;
  late ModuleSettingsBloc moduleSettingsBloc;
  late BluetoothDevice bluetoothDevice;
  late MockBluetoothProvider bluetoothProvider;
  late StreamController<bool> scanningController;
  late StreamController<List<ScanResult>> resultsController;

  setUpAll(() {
    registerFallbackValue(const BluetoothEvent.enable());
  });

  Widget testWidget() {
    return BlocProvider.value(
      value: btBloc,
      child: BlocProvider.value(
        value: bdCubit,
        child: BlocProvider<BluetoothRequestCubit>(
          create: (_) => bluetoothRequestCubit,
          child: BlocProvider.value(
            value: moduleSettingsBloc,
            child: MaterialApp(
              localizationsDelegates: const [Localization.delegate],
              supportedLocales: Localization.supportedLocales,
              home: const Material(child: BluetoothTile()),
            ),
          ),
        ),
      ),
    );
  }

  setUp(() {
    btBloc = MockBluetoothBloc();
    bdCubit = MockBluetoothDiscoveryCubit();
    bluetoothRequestCubit = BluetoothRequestCubit();
    moduleSettingsBloc = MockModuleSettingsBloc();
    bluetoothDevice = MockBluetoothDevice();
    bluetoothProvider = MockBluetoothProvider();
    scanningController = StreamController<bool>.broadcast();
    resultsController = StreamController<List<ScanResult>>.broadcast();

    when(() => bluetoothProvider.isScanning).thenAnswer((_) => scanningController.stream);
    when(() => bluetoothProvider.scanResultsAggregated()).thenAnswer((_) => resultsController.stream);
    when(() => bluetoothProvider.requestPermissions()).thenAnswer((_) async {});
    when(() => bluetoothProvider.startScan()).thenAnswer((_) async {});
    when(() => bluetoothProvider.stopScan()).thenAnswer((_) async {});
    when(() => btBloc.bluetoothProvider).thenReturn(bluetoothProvider);
    when(() => btBloc.stream).thenAnswer((_) => const Stream<BluetoothBlocState>.empty());
    when(() => moduleSettingsBloc.state).thenReturn(const ModuleSettingsState.uninitialized());
    when(() => moduleSettingsBloc.stream).thenAnswer((_) => const Stream<ModuleSettingsState>.empty());
    when(() => bluetoothDevice.platformName).thenReturn('BluetoothDeviceName');
    when(() => bdCubit.startDiscovery()).thenAnswer((_) async {});
    when(() => bdCubit.state).thenReturn(const BluetoothDiscoveryState.initial());
  });

  tearDown(() async {
    if (!bluetoothRequestCubit.isClosed) {
      await bluetoothRequestCubit.close();
    }
    await scanningController.close();
    await resultsController.close();
  });

  group('BluetoothTile tests', () {
    patrolWidgetTest('notInitialized state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.notInitialized());
      await $.pumpWidgetAndSettle(testWidget());

      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, false);
      expect(($(ListTile).evaluate().single.widget as ListTile).trailing, null);
      expect($(Localization.current.I18nInit_bluetoothModule), findsOneWidget);
      expect($(Localization.current.I18nInit_pressToSelect), findsOneWidget);
      await $(ListTile).tap();
      expect($(Localization.current.I18nBluetooth_selectDevice), findsNothing);
    });

    patrolWidgetTest('notAvailable state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.notAvailable());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, false);
      expect(($(ListTile).evaluate().single.widget as ListTile).trailing, null);
      expect($(Localization.current.I18nBluetooth_bluetoothNotAvailable), findsOneWidget);
      expect($(Localization.current.I18nInit_pressToSelect), findsNothing);
      await $(Icon).tap();
      expect($(Localization.current.I18nBluetooth_selectDevice), findsNothing);
    });

    patrolWidgetTest('notEnabled state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.notEnabled());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, false);
      expect(($(ListTile).evaluate().single.widget as ListTile).trailing, null);
      expect($(Localization.current.I18nInit_bluetoothModule), findsOneWidget);
      expect($(Localization.current.I18nInit_pressToSelect), findsOneWidget);
      await $(ListTile).tap();
      expect($(Localization.current.I18nBluetooth_selectDevice), findsNothing);
    });

    patrolWidgetTest('connecting state w/o bluetoothDevice at bloc', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.connecting());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, true);
      expect(($(ListTile).evaluate().single.widget as ListTile).trailing, null);
      expect($(Localization.current.I18nInit_bluetoothModule), findsOneWidget);
      expect($(Localization.current.I18nInit_pressToSelect), findsOneWidget);
      await $(ListTile).tap();
      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
    });

    patrolWidgetTest('connecting state with bluetoothDevice at bloc', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.connecting());
      when(() => btBloc.bluetoothDevice).thenReturn(bluetoothDevice);
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, true);
      expect(($(ListTile).evaluate().single.widget as ListTile).trailing, null);
      expect($(Localization.current.I18nInit_bluetoothModule), findsOneWidget);
      expect($('BluetoothDeviceName'), findsOneWidget);
      await $(ListTile).tap();
      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
    });

    patrolWidgetTest('connected state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.connected());
      when(() => btBloc.bluetoothDevice).thenReturn(bluetoothDevice);
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, true);
      expect($(Icon), findsNWidgets(3));
      expect($(Localization.current.I18nInit_bluetoothModule), findsOneWidget);
      expect($('BluetoothDeviceName'), findsOneWidget);
      await $(ListTile).tap();
      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
    });

    patrolWidgetTest('Press log button at connected state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.connected());
      when(() => btBloc.bluetoothDevice).thenReturn(bluetoothDevice);

      await $.pumpWidgetAndSettle(testWidget());
      await $.tester.tap($(Icon).at(1));
    });

    patrolWidgetTest('Press module settings button at connected state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.connected());
      when(() => btBloc.bluetoothDevice).thenReturn(bluetoothDevice);

      await $.pumpWidgetAndSettle(testWidget());
      await $.tester.tap($(Icon).at(2));

      verify(() => moduleSettingsBloc.add(const ModuleSettingsEvent.unload())).called(1);
      final capturedEvent = verify(() => btBloc.add(captureAny())).captured.single as BluetoothEvent;
      final message = capturedEvent.whenOrNull(sendMessage: (message) => message);
      expect(message, isNotNull);

      final payload = jsonDecode(message!) as Map<String, dynamic>;
      expect(payload['cmd'], 'load_config');
      expect(payload['id'], isA<int>());
    });

    patrolWidgetTest('disconnecting state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.disconnecting());
      when(() => btBloc.bluetoothDevice).thenReturn(bluetoothDevice);
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, true);
      expect(($(ListTile).evaluate().single.widget as ListTile).trailing, null);
      expect($(Localization.current.I18nInit_bluetoothModule), findsOneWidget);
      expect($('BluetoothDeviceName'), findsOneWidget);
      await $(ListTile).tap();
      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
    });

    patrolWidgetTest('disconnected state w/o device', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.disconnecting());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, true);
      expect(($(ListTile).evaluate().single.widget as ListTile).trailing, null);
      expect($(Localization.current.I18nInit_bluetoothModule), findsOneWidget);
      expect($(Localization.current.I18nInit_pressToSelect), findsOneWidget);
      await $(ListTile).tap();
      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
    });

    patrolWidgetTest('disconnected state with device', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.disconnecting());
      when(() => btBloc.bluetoothDevice).thenReturn(bluetoothDevice);
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, true);
      expect(($(ListTile).evaluate().single.widget as ListTile).trailing, null);
      expect($(Localization.current.I18nInit_bluetoothModule), findsOneWidget);
      expect($('BluetoothDeviceName'), findsOneWidget);
      await $(ListTile).tap();
      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
    });
  });
}
