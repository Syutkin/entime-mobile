// ignore_for_file: avoid_implementing_value_types

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/database/model/dbstate.dart';
import 'package:entime/src/feature/audio/logic/audio_service.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/log/logic/log_provider.dart';
import 'package:entime/src/feature/protocol/logic/protocol_provider.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

class MockBluetoothProvider extends Mock implements BluetoothProvider {}

class MockProtocolProvider extends Mock implements ProtocolProvider {}

class MockLogProvider extends Mock implements LogProvider {}

class MockAudioService extends Mock implements AudioService {}

class MockSettingsProvider extends Mock implements SettingsProvider {}

class MockBluetoothDevice extends Mock implements BluetoothDevice {}

class MockFlutterBluetoothSerial extends Mock
    implements FlutterBluetoothSerial {}

void main() {
  group('BluetoothBloc:', () {
    late MockBluetoothProvider bluetoothProvider;
    // late MockBluetoothDevice bluetoothDevice;
    late MockLogProvider logProvider;
    late MockAudioService audioService;
    late MockProtocolProvider protocolProvider;
    late MockSettingsProvider settingsProvider;
    late MockFlutterBluetoothSerial flutterBluetoothSerial;

    setUp(() async {
      settingsProvider = MockSettingsProvider();
      bluetoothProvider = MockBluetoothProvider();
      protocolProvider = MockProtocolProvider();
      logProvider = MockLogProvider();
      audioService = MockAudioService();
      flutterBluetoothSerial = MockFlutterBluetoothSerial();
    });

    test('Initial state is correct', () {
      when(
        () => settingsProvider.state,
      ).thenAnswer(
        (_) => BehaviorSubject<AppSettings>(),
      );
      when(
        () => protocolProvider.state,
      ).thenAnswer(
        (_) => BehaviorSubject<DBState>(),
      );
      when(() => bluetoothProvider.dispose())
          .thenAnswer((invocation) => Future.value());

      final bluetoothBloc = BluetoothBloc(
        audioService: audioService,
        bluetoothProvider: bluetoothProvider,
        protocolProvider: protocolProvider,
        logProvider: logProvider,
        settingsProvider: settingsProvider,
      );
      expect(bluetoothBloc.state, const BluetoothBlocState.notInitialized());
    });

    group('on initialize:', () {
      setUp(() async {
        when(
          () => settingsProvider.state,
        ).thenAnswer(
          (_) => BehaviorSubject<AppSettings>(),
        );
        when(
          () => protocolProvider.state,
        ).thenAnswer(
          (_) => BehaviorSubject<DBState>(),
        );
        when(() => bluetoothProvider.dispose())
            .thenAnswer((invocation) => Future.value());

        when(
          () => bluetoothProvider.flutterBluetoothSerial,
        ).thenReturn(
          flutterBluetoothSerial,
        );
      });
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'FlutterBluetoothSerial not enabled',
        setUp: () {
          when(
            () => flutterBluetoothSerial.isEnabled,
          ).thenAnswer(
            (_) => Future.value(false),
          );
        },
        build: () => BluetoothBloc(
          audioService: audioService,
          bluetoothProvider: bluetoothProvider,
          protocolProvider: protocolProvider,
          logProvider: logProvider,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.initialize()),
        expect: () => [const BluetoothBlocState.notEnabled()],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'FlutterBluetoothSerial enabled',
        setUp: () {
          when(
            () => flutterBluetoothSerial.isEnabled,
          ).thenAnswer(
            (_) => Future.value(true),
          );
        },
        build: () => BluetoothBloc(
          audioService: audioService,
          bluetoothProvider: bluetoothProvider,
          protocolProvider: protocolProvider,
          logProvider: logProvider,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.initialize()),
        expect: () => [const BluetoothBlocState.disconnected()],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'FlutterBluetoothSerial null',
        setUp: () {
          when(
            () => flutterBluetoothSerial.isEnabled,
          ).thenAnswer(
            (_) => Future.value(),
          );
        },
        build: () => BluetoothBloc(
          audioService: audioService,
          bluetoothProvider: bluetoothProvider,
          protocolProvider: protocolProvider,
          logProvider: logProvider,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.initialize()),
        expect: () => [const BluetoothBlocState.notEnabled()],
      );
    });

    group('on enable:', () {
      setUp(() async {
        when(
          () => settingsProvider.state,
        ).thenAnswer(
          (_) => BehaviorSubject<AppSettings>(),
        );
        when(
          () => protocolProvider.state,
        ).thenAnswer(
          (_) => BehaviorSubject<DBState>(),
        );
        when(() => bluetoothProvider.dispose())
            .thenAnswer((invocation) => Future.value());

        when(
          () => bluetoothProvider.flutterBluetoothSerial,
        ).thenReturn(
          flutterBluetoothSerial,
        );
      });

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'successfully enabled',
        setUp: () {
          when(
            () => flutterBluetoothSerial.isEnabled,
          ).thenAnswer(
            (_) => Future.value(true),
          );
          when(
            () => flutterBluetoothSerial.requestEnable(),
          ).thenAnswer(
            (_) => Future.value(true),
          );
        },
        build: () => BluetoothBloc(
          audioService: audioService,
          bluetoothProvider: bluetoothProvider,
          protocolProvider: protocolProvider,
          logProvider: logProvider,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.enable()),
        expect: () => [const BluetoothBlocState.disconnected()],
      );
    });
    group('on disable:', () {      setUp(() async {
        when(
          () => settingsProvider.state,
        ).thenAnswer(
          (_) => BehaviorSubject<AppSettings>(),
        );
        when(
          () => protocolProvider.state,
        ).thenAnswer(
          (_) => BehaviorSubject<DBState>(),
        );
        when(() => bluetoothProvider.dispose())
            .thenAnswer((invocation) => Future.value());

        when(
          () => bluetoothProvider.flutterBluetoothSerial,
        ).thenReturn(
          flutterBluetoothSerial,
        );
      });

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'successfully disabled',
        setUp: () {
          when(
            () => flutterBluetoothSerial.isEnabled,
          ).thenAnswer(
            (_) => Future.value(false),
          );
          when(
            () => flutterBluetoothSerial.requestDisable(),
          ).thenAnswer(
            (_) => Future.value(true),
          );
        },
        build: () => BluetoothBloc(
          audioService: audioService,
          bluetoothProvider: bluetoothProvider,
          protocolProvider: protocolProvider,
          logProvider: logProvider,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.disable()),
        expect: () => [const BluetoothBlocState.notEnabled()],
      );});
    group('on connected:', () {});
    group('on disconnect:', () {});
    group('on disconnected:', () {});
    group('on messageReceived:', () {});
    group('on sendMessage:', () {});
  });
}
