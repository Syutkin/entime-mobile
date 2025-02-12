import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockBluetoothBloc extends MockBloc<BluetoothEvent, BluetoothBlocState> implements BluetoothBloc {}

void main() {
  late BluetoothBloc btBloc;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(child: BlocProvider.value(value: btBloc, child: const BluetoothButton())),
    );
  }

  group('BluetoothButton tests', () {
    setUp(() {
      btBloc = MockBluetoothBloc();
    });
    patrolWidgetTest('notInitialized state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.notInitialized());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth_disabled);
      await $(Icon).tap();
    });

    patrolWidgetTest('notAvailable state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.notAvailable());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth_disabled);
      await $(Icon).tap();
    });

    patrolWidgetTest('notEnabled state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.notEnabled());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth_disabled);
      await $(Icon).tap();
    });

    patrolWidgetTest('connecting state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.connecting());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth_searching);
      await $(Icon).tap();
    });

    patrolWidgetTest('connected state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.connected());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth_connected);
      await $(Icon).tap();
    });

    patrolWidgetTest('disconnecting state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.disconnecting());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth);
      await $(Icon).tap();
    });

    patrolWidgetTest('disconnected state w/o device', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.disconnected());
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.settings_bluetooth);
      await $(Icon).tap();
      // Opens SelectBondedDeviceScreen
      expect($(Localization.current.I18nBluetooth_selectDevice), findsOneWidget);
    });

    patrolWidgetTest('disconnected state with device', (PatrolTester $) async {
      when(
        () => btBloc.state,
      ).thenReturn(const BluetoothBlocState.disconnected(bluetoothDevice: BluetoothDevice(address: '')));
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.bluetooth);
      await $(Icon).tap();
    });
  });
}
