// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart' hide LogLevel;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockBluetoothBloc extends MockBloc<BluetoothEvent, BluetoothBlocState> implements BluetoothBloc {}

class MockBluetoothDiscoveryCubit extends MockCubit<BluetoothDiscoveryState> implements BluetoothDiscoveryCubit {}

class MockBluetoothProvider extends Mock implements IBluetoothProvider {}

void main() {
  late BluetoothBloc btBloc;
  late BluetoothDiscoveryCubit bdCubit;
  late MockBluetoothProvider bluetoothProvider;
  late StreamController<bool> scanningController;
  late StreamController<List<ScanResult>> resultsController;

  Widget testWidget() {
    return BlocProvider.value(
      value: btBloc,
      child: BlocProvider.value(
        value: bdCubit,
        child: MaterialApp(
          localizationsDelegates: const [Localization.delegate],
          supportedLocales: Localization.supportedLocales,
          home: Material(child: BluetoothButton()),
        ),
      ),
    );
  }

  group('BluetoothButton tests', () {
    setUp(() {
      btBloc = MockBluetoothBloc();
      bdCubit = MockBluetoothDiscoveryCubit();
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
      when(() => bdCubit.startDiscovery()).thenAnswer((_) async {});
      when(() => bdCubit.state).thenReturn(const BluetoothDiscoveryState.initial());
    });

    tearDown(() async {
      await scanningController.close();
      await resultsController.close();
    });
    patrolWidgetTest('notInitialized state', ($) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.notInitialized());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth_disabled);
      await $(Icon).tap();
    });

    patrolWidgetTest('notAvailable state', ($) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.notAvailable());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth_disabled);
      await $(Icon).tap();
    });

    patrolWidgetTest('notEnabled state', ($) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.notEnabled());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth_disabled);
      await $(Icon).tap();
    });

    patrolWidgetTest('connecting state', ($) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.connecting());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth_searching);
      await $(Icon).tap();
    });

    patrolWidgetTest('connected state', ($) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.connected());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth_connected);
      await $(Icon).tap();
    });

    patrolWidgetTest('disconnecting state', ($) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.disconnecting());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth);
      await $(Icon).tap();
    });

    patrolWidgetTest('disconnected state w/o device', ($) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.disconnected());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.settings_bluetooth);
      await $(Icon).tap();
      // Opens SelectDeviceScreen
      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
    });

    patrolWidgetTest('disconnected state with device', ($) async {
      when(
        () => btBloc.state,
      ).thenReturn(
        BluetoothBlocState.disconnected(bluetoothDevice: BluetoothDevice.fromId('00:00:00:00:00')),
      );
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth);
      await $(Icon).tap();
    });
  });
}
