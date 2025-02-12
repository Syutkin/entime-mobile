import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/bluetooth/widget/bluetooth_device_list_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late BluetoothDevice device;
  late String address;
  late String name;
  late BluetoothBondState bondState;
  late BluetoothDeviceType type;
  late int rssi;

  Widget testWidget(BluetoothDevice device, [int? rssi]) {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: Builder(
          builder: (context) {
            return BluetoothDeviceListEntry(device: device, rssi: rssi);
          },
        ),
      ),
    );
  }

  setUp(() {
    address = 'address';
    name = 'name';
    bondState = BluetoothBondState.bonded;
    type = BluetoothDeviceType.classic;
    rssi = -100;
  });

  group('BluetoothDeviceListEntry tests', () {
    patrolWidgetTest('Bonded and connected device with name and rssi', (PatrolTester $) async {
      device = BluetoothDevice(
        address: address,
        name: name,
        bondState: bondState,
        type: type,
        deviceClass: 123,
        isConnected: true,
      );

      await $.pumpWidgetAndSettle(testWidget(device, rssi));
      expect($(Icon), findsNWidgets(3));
      expect($(name), findsOneWidget);
      expect($(address), findsOneWidget);
      expect($(rssi.toString()), findsOneWidget);
      expect($(Localization.current.I18nBluetooth_dbm), findsOneWidget);
      expect(($(Icon).at(0).evaluate().single.widget as Icon).icon, Icons.devices);
      expect(($(Icon).at(1).evaluate().single.widget as Icon).icon, Icons.import_export);
      expect(($(Icon).at(2).evaluate().single.widget as Icon).icon, Icons.link);
    });

    patrolWidgetTest('Device with address only', (PatrolTester $) async {
      device = BluetoothDevice(address: address);

      await $.pumpWidgetAndSettle(testWidget(device));
      expect($(Icon), findsOneWidget);
      expect($(name), findsNothing);
      expect($(Localization.current.I18nBluetooth_unknownDevice), findsOneWidget);
      expect($(address), findsOneWidget);
      expect($(rssi.toString()), findsNothing);
      expect($(Localization.current.I18nBluetooth_dbm), findsNothing);
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.devices);
    });
  });
}
