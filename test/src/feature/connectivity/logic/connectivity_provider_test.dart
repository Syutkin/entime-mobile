import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:entime/src/feature/connectivity/logic/connectivity_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockConnectivity extends Mock implements Connectivity {}

void main() {
  late Connectivity connectivity;
  late IConnectivityProvider connectivityProvider;

  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() {
    connectivity = MockConnectivity();
  });

  group('ConnectivityProvider tests', () {
    test('Initial state, isConnected = false', () async {
      when(
        () => connectivity.onConnectivityChanged,
      ).thenAnswer((_) => Stream<List<ConnectivityResult>>.fromIterable([]));
      connectivityProvider = ConnectivityProvider.init(connectivity);

      // await for emitting stream
      await Future<void>.delayed(Duration.zero);
      expect(connectivityProvider.isConnected, false);
    });

    test('Ethernet and bluetooth connection available', () async {
      when(() => connectivity.onConnectivityChanged).thenAnswer(
        (_) => Stream<List<ConnectivityResult>>.fromIterable([
          [ConnectivityResult.ethernet, ConnectivityResult.bluetooth],
        ]),
      );
      connectivityProvider = ConnectivityProvider.init(connectivity);

      await Future<void>.delayed(Duration.zero);
      expect(connectivityProvider.isConnected, true);
    });

    test('Connection not available with none', () async {
      when(() => connectivity.onConnectivityChanged).thenAnswer(
        (_) => Stream<List<ConnectivityResult>>.fromIterable([
          [ConnectivityResult.ethernet, ConnectivityResult.bluetooth],
          [ConnectivityResult.ethernet, ConnectivityResult.none],
        ]),
      );
      connectivityProvider = ConnectivityProvider.init(connectivity);

      await Future<void>.delayed(Duration.zero);
      expect(connectivityProvider.isConnected, false);
    });

    test('Connection available', () async {
      when(() => connectivity.onConnectivityChanged).thenAnswer(
        (_) => Stream<List<ConnectivityResult>>.fromIterable([
          [ConnectivityResult.ethernet, ConnectivityResult.bluetooth],
          [ConnectivityResult.ethernet, ConnectivityResult.none],
          [ConnectivityResult.wifi, ConnectivityResult.mobile],
        ]),
      );
      connectivityProvider = ConnectivityProvider.init(connectivity);

      await Future<void>.delayed(Duration.zero);
      expect(connectivityProvider.isConnected, true);
    });

    test('Emit new connection state only when changed', () async {
      Stream<List<ConnectivityResult>> connectivityStream() async* {
        yield [ConnectivityResult.ethernet, ConnectivityResult.bluetooth];
        yield [ConnectivityResult.ethernet, ConnectivityResult.none];
        yield [ConnectivityResult.wifi, ConnectivityResult.mobile];
        yield [ConnectivityResult.ethernet, ConnectivityResult.bluetooth];
        yield [ConnectivityResult.ethernet, ConnectivityResult.wifi];
        yield [ConnectivityResult.mobile, ConnectivityResult.bluetooth];
        yield [ConnectivityResult.ethernet, ConnectivityResult.mobile];
        yield [ConnectivityResult.none, ConnectivityResult.mobile];
        yield [ConnectivityResult.mobile, ConnectivityResult.wifi];
        yield [ConnectivityResult.ethernet, ConnectivityResult.mobile];
        yield [ConnectivityResult.vpn, ConnectivityResult.mobile];
      }

      when(() => connectivity.onConnectivityChanged).thenAnswer((_) => connectivityStream());

      connectivityProvider = ConnectivityProvider.init(connectivity);
      bool? prevData;

      connectivityProvider.onConnectivityChanged.listen((data) {
        expect(prevData != data, true);
        prevData = data;
      });
    });

    test('Closes stream on dispose, show last value', () async {
      Stream<List<ConnectivityResult>> connectivityStream() async* {
        yield [ConnectivityResult.mobile, ConnectivityResult.wifi];
        yield [ConnectivityResult.ethernet, ConnectivityResult.mobile];
        yield [ConnectivityResult.vpn, ConnectivityResult.mobile];
      }

      when(() => connectivity.onConnectivityChanged).thenAnswer((_) => connectivityStream());

      connectivityProvider = ConnectivityProvider.init(connectivity);

      await Future<void>.delayed(Duration.zero);
      await connectivityProvider.dispose();

      expect(await connectivityProvider.onConnectivityChanged.length, 1);
      expect(await connectivityProvider.onConnectivityChanged.last, true);
    });
  });
}
