import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/bluetooth/widget/bluetooth_tile.dart';
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
      home: Material(child: BlocProvider.value(value: btBloc, child: const BluetoothTile())),
    );
  }

  setUp(() {
    btBloc = MockBluetoothBloc();
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
      when(() => btBloc.bluetoothDevice).thenReturn(const BluetoothDevice(address: '', name: 'BluetoothDeviceName'));
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
      when(() => btBloc.bluetoothDevice).thenReturn(const BluetoothDevice(address: '', name: 'BluetoothDeviceName'));
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
      when(() => btBloc.bluetoothDevice).thenReturn(const BluetoothDevice(address: '', name: 'BluetoothDeviceName'));

      await $.pumpWidgetAndSettle(testWidget());
      await $.tester.tap($(Icon).at(1));
    });

    patrolWidgetTest('Press module settings button at connected state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.connected());
      when(() => btBloc.bluetoothDevice).thenReturn(const BluetoothDevice(address: '', name: 'BluetoothDeviceName'));

      await $.pumpWidgetAndSettle(testWidget());
      await $.tester.tap($(Icon).at(2));
    });

    patrolWidgetTest('disconnecting state', (PatrolTester $) async {
      when(() => btBloc.state).thenReturn(const BluetoothBlocState.disconnecting());
      when(() => btBloc.bluetoothDevice).thenReturn(const BluetoothDevice(address: '', name: 'BluetoothDeviceName'));
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
      when(() => btBloc.bluetoothDevice).thenReturn(const BluetoothDevice(address: '', name: 'BluetoothDeviceName'));
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
