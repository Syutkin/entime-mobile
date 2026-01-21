import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/bluetooth/widget/bluetooth_device_list_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockBluetoothDevice extends Mock implements BluetoothDevice {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late BluetoothDevice device;
  late DeviceIdentifier remoteId;
  late String name;
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
    remoteId = const DeviceIdentifier('address');
    name = 'name';
    rssi = -100;
    device = MockBluetoothDevice();
    when(() => device.remoteId).thenReturn(remoteId);
  });

  group('BluetoothDeviceListEntry tests', () {
    patrolWidgetTest('Bonded and connected device with name and rssi', (PatrolTester $) async {
      when(() => device.platformName).thenReturn(name);
      when(() => device.isConnected).thenReturn(true);

      await $.pumpWidgetAndSettle(testWidget(device, rssi));
      expect($(Icon), findsNWidgets(2));
      expect($(name), findsOneWidget);
      expect($(remoteId.str), findsOneWidget);
      expect($(rssi.toString()), findsOneWidget);
      expect($(Localization.current.I18nBluetooth_dbm), findsOneWidget);
      expect(($(Icon).at(0).evaluate().single.widget as Icon).icon, Icons.devices);
      expect(($(Icon).at(1).evaluate().single.widget as Icon).icon, Icons.import_export);
    });

    patrolWidgetTest('Device with address only', (PatrolTester $) async {
      when(() => device.platformName).thenReturn('');
      when(() => device.isConnected).thenReturn(false);

      await $.pumpWidgetAndSettle(testWidget(device));
      expect($(Icon), findsOneWidget);
      expect($(name), findsNothing);
      expect($(Localization.current.I18nBluetooth_unknownDevice), findsOneWidget);
      expect($(remoteId.str), findsOneWidget);
      expect($(rssi.toString()), findsNothing);
      expect($(Localization.current.I18nBluetooth_dbm), findsNothing);
      expect(($(Icon).evaluate().single.widget as Icon).icon, Icons.devices);
    });
  });
}
