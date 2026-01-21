// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_blue_plus_platform_interface/flutter_blue_plus_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

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

  final StreamController<BmBluetoothAdapterState> _adapterStateController = StreamController.broadcast();
  final StreamController<BmTurnOnResponse> _turnOnController = StreamController.broadcast();

  @override
  Stream<BmBluetoothAdapterState> get onAdapterStateChanged => _adapterStateController.stream;

  @override
  Stream<BmTurnOnResponse> get onTurnOnResponse => _turnOnController.stream;

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

  void emitAdapterState(BmAdapterStateEnum state) {
    _adapterStateController.add(BmBluetoothAdapterState(adapterState: state));
  }

  Future<void> close() async {
    await _adapterStateController.close();
    await _turnOnController.close();
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('BluetoothProvider:', () {
    late FakeFlutterBluePlusPlatform fakePlatform;
    late MockBluetoothBackgroundConnection backgroundConnection;

    setUp(() {
      fakePlatform = FakeFlutterBluePlusPlatform(
        adapterState: BmAdapterStateEnum.on,
        isSupportedValue: true,
      );
      FlutterBluePlusPlatform.instance = fakePlatform;
      backgroundConnection = MockBluetoothBackgroundConnection();
    });

    tearDown(() async {
      await fakePlatform.close();
    });

    test('initializes and exposes background connection', () {
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      expect(provider, isA<IBluetoothProvider>());
      expect(provider.bluetoothBackgroundConnection, same(backgroundConnection));
    });

    test('isSupported reflects platform isSupported', () async {
      fakePlatform.isSupportedValue = true;
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      final supported = await provider.isSupported;
      expect(supported, isTrue);
    });

    test('isOn returns true when adapter state is on', () async {
      fakePlatform.adapterState = BmAdapterStateEnum.on;
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      final isOn = await provider.isOn;
      expect(isOn, isTrue);
    });

    test('adapterState emits initial and updated states', () async {
      fakePlatform.adapterState = BmAdapterStateEnum.off;
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);

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
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      await provider.requestEnable();
      expect(fakePlatform.turnOnCalled, isTrue);
    });

    test('dispose delegates to background connection', () async {
      when(() => backgroundConnection.dispose()).thenAnswer((_) async {});
      final provider = BluetoothProvider(bluetoothBackgroundConnection: backgroundConnection);
      await provider.dispose();
      verify(() => backgroundConnection.dispose()).called(1);
    });
  });
}
