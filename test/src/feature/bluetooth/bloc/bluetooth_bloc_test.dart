import 'dart:async';
import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/feature/audio/audio.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:entime/src/feature/database/model/automatic_start.dart';
import 'package:entime/src/feature/log/log.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart' hide LogLevel;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../helpers/shared_prefs_defaults.dart';

class MockBluetoothProvider extends Mock implements BluetoothProvider {}

class MockAppDatabase extends Mock implements AppDatabase {}

class MockAudioController extends Mock implements AudioController {}

class MockBluetoothBackgroundConnection extends Mock implements BluetoothBackgroundConnection {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockBluetoothProvider bluetoothProvider;
  late BluetoothDevice devicePrimary;
  late BluetoothDevice deviceSecondary;
  late MockAppDatabase database;
  late MockAudioController audioController;
  late SharedPrefsSettingsProvider settingsProvider;
  late AppSettings settings;
  late MockBluetoothBackgroundConnection bluetoothBackgroundConnection;

  setUpAll(() {
    registerFallbackValue(LogLevel.debug);
    registerFallbackValue(LogSource.other);
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
      (obj) async => obj,
    );
  });

  group('BluetoothBloc:', () {
    setUp(() async {
      SharedPreferences.setMockInitialValues(sharedPrefsDefaults);
      settingsProvider = await SharedPrefsSettingsProvider.load();
      bluetoothProvider = MockBluetoothProvider();
      bluetoothBackgroundConnection = MockBluetoothBackgroundConnection();
      database = MockAppDatabase();
      audioController = MockAudioController();
      settings = const AppSettings.defaults();

      when(() => bluetoothProvider.adapterState).thenAnswer((_) => const Stream<BluetoothAdapterState>.empty());
      when(() => bluetoothProvider.bluetoothBackgroundConnection).thenReturn(bluetoothBackgroundConnection);
      when(() => bluetoothBackgroundConnection.stop()).thenAnswer((_) => Future.value());
      when(() => bluetoothBackgroundConnection.start()).thenAnswer((_) => Future.value());
      // when(
      //   () => protocolProvider.state,
      // ).thenAnswer(
      //   (_) => BehaviorSubject<DBState>(),
      // );
      when(() => bluetoothProvider.dispose()).thenAnswer((invocation) => Future.value());
      devicePrimary = BluetoothDevice.fromId('00:00:00:00:00');
      deviceSecondary = BluetoothDevice.fromId('00:00:00:00:01');
      when(() => bluetoothBackgroundConnection.connect(devicePrimary)).thenAnswer((_) => Future.value());
      when(() => bluetoothBackgroundConnection.connect(deviceSecondary)).thenAnswer((_) => Future.value());
      when(() => bluetoothBackgroundConnection.isConnected).thenReturn(false);
      when(() => bluetoothBackgroundConnection.message).thenAnswer((_) => Stream.fromIterable([]));
      when(() => bluetoothBackgroundConnection.batteryLevel).thenAnswer((_) => const Stream<int>.empty());
      when(
        () => audioController.playCountdown(
          time: any(named: 'time'),
          stageId: any(named: 'stageId'),
        ),
      ).thenAnswer((_) => Future.value());
      when(
        () => audioController.callParticipant(
          time: any(named: 'time'),
          stageId: any(named: 'stageId'),
        ),
      ).thenAnswer((
        _,
      ) async {
        return '';
      });
    });

    test('Initial state is correct', () {
      final bluetoothBloc = BluetoothBloc(
        audioController: audioController,
        bluetoothProvider: bluetoothProvider,
        settingsProvider: settingsProvider,
        database: database,
      );
      expect(bluetoothBloc.state, const BluetoothBlocState.notInitialized());
    });

    group('on initialize:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'FlutterBluetoothSerial: bluetooth not available',
        setUp: () {
          when(() => bluetoothProvider.isSupported).thenAnswer((_) => Future.value(false));
          when(() => bluetoothProvider.isOn).thenAnswer((_) => Future.value(false));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          settingsProvider: settingsProvider,
          database: database,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.initialize()),
        expect: () => [const BluetoothBlocState.notAvailable()],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'FlutterBluetoothSerial not enabled',
        setUp: () {
          when(() => bluetoothProvider.isSupported).thenAnswer((_) => Future.value(true));
          when(() => bluetoothProvider.isOn).thenAnswer((_) => Future.value(false));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          settingsProvider: settingsProvider,
          database: database,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.initialize()),
        expect: () => [const BluetoothBlocState.notEnabled()],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'FlutterBluetoothSerial enabled',
        setUp: () {
          when(() => bluetoothProvider.isSupported).thenAnswer((_) => Future.value(true));
          when(() => bluetoothProvider.isOn).thenAnswer((_) => Future.value(true));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          settingsProvider: settingsProvider,
          database: database,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.initialize()),
        expect: () => [const BluetoothBlocState.disconnected()],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'FlutterBluetoothSerial null',
        setUp: () {
          when(() => bluetoothProvider.isSupported).thenAnswer((_) => Future.value(true));
          when(() => bluetoothProvider.isOn).thenAnswer((_) => Future.value(false));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          settingsProvider: settingsProvider,
          database: database,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.initialize()),
        expect: () => [const BluetoothBlocState.notEnabled()],
      );
    });

    group('on adapterState listener:', () {
      late StreamController<BluetoothAdapterState> adapterController;

      setUp(() {
        adapterController = StreamController<BluetoothAdapterState>();
        when(() => bluetoothProvider.adapterState).thenAnswer((_) => adapterController.stream);
        when(() => bluetoothProvider.isSupported).thenAnswer((_) => Future.value(true));
        var call = 0;
        when(() => bluetoothProvider.isOn).thenAnswer((_) async {
          call++;
          return !(call == 1);
        });
        addTearDown(() async {
          await adapterController.close();
        });
      });

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'emits initialize when adapter turns off then on',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          settingsProvider: settingsProvider,
          database: database,
        ),
        act: (bloc) async {
          adapterController.add(BluetoothAdapterState.off);
          await Future<void>.delayed(Duration.zero);
          adapterController.add(BluetoothAdapterState.on);
        },
        expect: () => <BluetoothBlocState>[
          const BluetoothBlocState.notEnabled(),
          const BluetoothBlocState.disconnected(),
        ],
      );
    });

    group('on enable:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'successfully enabled',
        setUp: () {
          when(() => bluetoothProvider.isSupported).thenAnswer((_) => Future.value(true));
          when(() => bluetoothProvider.isOn).thenAnswer((_) => Future.value(true));
          when(() => bluetoothProvider.requestEnable()).thenAnswer((_) => Future.value());
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          settingsProvider: settingsProvider,
          database: database,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.enable()),
        expect: () => [const BluetoothBlocState.disconnected()],
        verify: (bloc) {
          verify(() => bluetoothProvider.requestEnable()).called(1);
        },
      );
    });

    group('on selectDevice:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'no device selected',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          settingsProvider: settingsProvider,
          database: database,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.selectDevice()),
        expect: () => <BluetoothBlocState>[],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'select and successfully connect to new device',
        setUp: () {
          when(() => bluetoothBackgroundConnection.isConnected).thenReturn(true);
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          settingsProvider: settingsProvider,
          database: database,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.selectDevice(device: devicePrimary)),
        expect: () => <BluetoothBlocState>[
          BluetoothBlocState.disconnected(bluetoothDevice: devicePrimary),
          const BluetoothBlocState.connecting(),
          const BluetoothBlocState.connected(),
        ],
        verify: (bloc) {
          expect(bloc.bluetoothDevice, devicePrimary);
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'select same device while connected does nothing',
        setUp: () {
          when(() => bluetoothBackgroundConnection.isConnected).thenReturn(true);
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          settingsProvider: settingsProvider,
          database: database,
        ),
        act: (bloc) async {
          bloc.add(BluetoothEvent.connect(selectedDevice: devicePrimary));
          await Future<void>.delayed(const Duration(milliseconds: 1));
          bloc.add(BluetoothEvent.selectDevice(device: devicePrimary));
        },
        skip: 2,
        expect: () => <BluetoothBlocState>[],
        verify: (bloc) {
          verify(() => bluetoothBackgroundConnection.connect(devicePrimary)).called(1);
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'select new device and fail to connect',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          settingsProvider: settingsProvider,
          database: database,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.selectDevice(device: deviceSecondary)),
        expect: () => <BluetoothBlocState>[
          BluetoothBlocState.disconnected(bluetoothDevice: deviceSecondary),
          const BluetoothBlocState.connecting(),
          BluetoothBlocState.disconnected(bluetoothDevice: deviceSecondary),
        ],
        verify: (bloc) {
          expect(bloc.bluetoothDevice, deviceSecondary);
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'select equal device twice and can not connect',
        setUp: () {
          when(() => bluetoothBackgroundConnection.isConnected).thenReturn(false);
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) {
          bloc
            ..add(BluetoothEvent.selectDevice(device: devicePrimary))
            ..add(BluetoothEvent.selectDevice(device: devicePrimary));
        },
        expect: () => <BluetoothBlocState>[
          BluetoothBlocState.disconnected(bluetoothDevice: devicePrimary),
          const BluetoothBlocState.connecting(),
          BluetoothBlocState.disconnected(bluetoothDevice: devicePrimary),
        ],
        verify: (bloc) {
          expect(bloc.bluetoothDevice, devicePrimary);
        },
      );
    });

    group('on connect:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'connect with null device emits nothing',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.connect()),
        expect: () => <BluetoothBlocState>[],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'successfully connected',
        setUp: () {
          when(() => bluetoothBackgroundConnection.isConnected).thenReturn(true);
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.connect(selectedDevice: devicePrimary)),
        expect: () => [const BluetoothBlocState.connecting(), const BluetoothBlocState.connected()],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'finish message received after connect',
        setUp: () {
          const message = 'F10:10:10,123#';
          when(() => bluetoothBackgroundConnection.isConnected).thenReturn(true);

          when(() => bluetoothBackgroundConnection.message).thenAnswer((invocation) => Stream.fromIterable([message]));

          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.connect(selectedDevice: devicePrimary)),
        skip: 2,
        expect: () => <Matcher>[
          isA<BluetoothBlocState>().having(
            (state) => switch (state) {
              BluetoothBlocStateConnected() => state.message,
              BluetoothBlocState() => null,
            },
            'BluetoothMessageFinish',
            isA<BluetoothMessageFinish>().having((message) => message.time, 'finish', '10:10:10,123'),
          ),
        ],
      );
    });

    group('on handleConnect:', () {
      late Completer<void> firstConnect;

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'successfully connects, subscribes, and handles onDisconnect',
        setUp: () {
          when(() => bluetoothBackgroundConnection.isConnected).thenReturn(true);
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: 'F10:00:01,123#',
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) async {
          // Disable auto-reconnect so we can trigger onDisconnect without a second subscribe.
          settings = settings.copyWith(reconnect: false);
          await settingsProvider.update(settings);
          // Use controllers to simulate background battery and message streams.
          final batteryController = StreamController<int>();
          final messageController = StreamController<String>();
          late VoidCallback onDisconnect;

          when(() => bluetoothBackgroundConnection.batteryLevel).thenAnswer((_) => batteryController.stream);
          when(() => bluetoothBackgroundConnection.message).thenAnswer((_) => messageController.stream);
          when(() => bluetoothBackgroundConnection.onDisconnect(any())).thenAnswer((invocation) {
            onDisconnect = invocation.positionalArguments.first as VoidCallback;
          });

          // Kick off connection and then push stream events in order.
          bloc.add(BluetoothEvent.connect(selectedDevice: devicePrimary));
          await Future<void>.delayed(Duration.zero);
          batteryController.add(55);
          await Future<void>.delayed(Duration.zero);
          messageController.add('F10:00:01,123#');
          await Future<void>.delayed(Duration.zero);
          // Simulate remote disconnect callback.
          onDisconnect();
          await Future<void>.delayed(Duration.zero);

          await batteryController.close();
          await messageController.close();
        },
        expect: () => <Matcher>[
          equals(const BluetoothBlocState.connecting()),
          equals(const BluetoothBlocState.connected()),
          equals(const BluetoothBlocState.connected(batteryLevel: 55)),
          isA<BluetoothBlocState>()
              .having(
                (state) => switch (state) {
                  BluetoothBlocStateConnected() => state.message,
                  BluetoothBlocState() => null,
                },
                'BluetoothMessageFinish',
                isA<BluetoothMessageFinish>()
                    .having((message) => message.time, 'finish', '10:00:01,123')
                    .having((message) => message.timestamp, 'timestamp', isA<DateTime>()),
              )
              .having(
                (state) => switch (state) {
                  BluetoothBlocStateConnected() => state.batteryLevel,
                  BluetoothBlocState() => null,
                },
                'batteryLevel',
                55,
              ),
          isA<BluetoothBlocStateDisconnected>(),
        ],
        verify: (bloc) {
          verify(() => bluetoothBackgroundConnection.start()).called(1);
          verify(() => bluetoothBackgroundConnection.onDisconnect(any())).called(1);
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'attempt mismatch stops and emits disconnected',
        setUp: () {
          // First connect is delayed; second connect bumps attempt counter.
          firstConnect = Completer<void>();
          final secondConnect = Completer<void>();
          var call = 0;
          when(() => bluetoothBackgroundConnection.connect(devicePrimary)).thenAnswer((_) {
            call++;
            return call == 1 ? firstConnect.future : secondConnect.future;
          });
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) async {
          // Two back-to-back connects create a stale first attempt.
          bloc
            ..add(BluetoothEvent.connect(selectedDevice: devicePrimary))
            ..add(BluetoothEvent.connect(selectedDevice: devicePrimary));
          await Future<void>.delayed(Duration.zero);
          // Completing the first attempt should trigger stop + disconnected.
          firstConnect.complete();
          await Future<void>.delayed(Duration.zero);
        },
        expect: () => <Matcher>[
          equals(const BluetoothBlocState.connecting()),
          isA<BluetoothBlocStateDisconnected>(),
        ],
        verify: (bloc) {
          // Two connect events -> two underlying connect calls.
          verify(() => bluetoothBackgroundConnection.connect(devicePrimary)).called(2);
          // stop() is called once for attempt mismatch and once during BluetoothEvent.disconnected handling.
          verify(() => bluetoothBackgroundConnection.stop()).called(2);
          verifyNever(() => bluetoothBackgroundConnection.start());
        },
      );

      test('reconnect timer triggers connect after failure', () async {
        var connectCall = 0;
        when(() => bluetoothBackgroundConnection.connect(devicePrimary)).thenAnswer((_) async {
          connectCall++;
        });
        // 1st connect succeeds, 2nd fails (schedules timer), 3rd succeeds after timer.
        when(() => bluetoothBackgroundConnection.isConnected).thenAnswer((_) {
          if (connectCall == 1) {
            return true;
          }
          if (connectCall == 2) {
            return false;
          }
          return true;
        });

        final bloc = BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        );
        final states = <BluetoothBlocState>[];
        final firstConnected = Completer<void>();
        final disconnected = Completer<void>();
        final secondConnected = Completer<void>();
        var connectedCount = 0;
        final subscription = bloc.stream.listen((state) {
          states.add(state);
          if (state is BluetoothBlocStateConnected) {
            connectedCount++;
            if (connectedCount == 1 && !firstConnected.isCompleted) {
              firstConnected.complete();
            } else if (connectedCount == 2 && !secondConnected.isCompleted) {
              secondConnected.complete();
            }
          }
          if (state is BluetoothBlocStateDisconnected && !disconnected.isCompleted) {
            disconnected.complete();
          }
        });

        bloc.add(BluetoothEvent.connect(selectedDevice: devicePrimary));
        await firstConnected.future.timeout(const Duration(seconds: 1));

        bloc.add(const BluetoothEvent.disconnected());
        await disconnected.future.timeout(const Duration(seconds: 1));

        await secondConnected.future.timeout(const Duration(seconds: 2));
        await Future<void>.delayed(const Duration(milliseconds: 10));

        expect(states.length, 7);
        expect(states[0], const BluetoothBlocState.connecting());
        expect(states[1], const BluetoothBlocState.connected());
        expect(states[2], isA<BluetoothBlocStateDisconnected>());
        expect(states[3], const BluetoothBlocState.connecting());
        expect(states[4], isA<BluetoothBlocStateDisconnected>());
        expect(states[5], const BluetoothBlocState.connecting());
        expect(states[6], const BluetoothBlocState.connected());

        await subscription.cancel();
        await bloc.close();
      });
    });

    group('on connected:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'successfully connected',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.connected()),
        expect: () => [const BluetoothBlocState.connected()],
      );
    });
    group('on disconnect:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'disconnect when connecting',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        seed: () => const BluetoothBlocState.connecting(),
        act: (bloc) => bloc.add(const BluetoothEvent.disconnect()),
        expect: () => <BluetoothBlocState>[const BluetoothBlocState.disconnected()],
      );
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'do nothing when disconnecting',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        seed: () => const BluetoothBlocState.disconnecting(),
        act: (bloc) => bloc.add(const BluetoothEvent.disconnect()),
        expect: () => <BluetoothBlocState>[],
      );
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'do nothing when disconnected',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        seed: () => const BluetoothBlocState.disconnected(),
        act: (bloc) => bloc.add(const BluetoothEvent.disconnect()),
        expect: () => <BluetoothBlocState>[],
      );
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'disconnect when connected',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        seed: () => const BluetoothBlocState.connected(),
        act: (bloc) => bloc.add(const BluetoothEvent.disconnect()),
        expect: () => [const BluetoothBlocState.disconnecting(), const BluetoothBlocState.disconnected()],
      );
    });
    group('on disconnected:', () {
      setUp(() {
        when(() => bluetoothBackgroundConnection.isConnected).thenReturn(true);
      });
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'disconnected',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.disconnected()),
        expect: () => <BluetoothBlocState>[const BluetoothBlocState.disconnected()],
      );
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'disconnected locally',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        seed: () => const BluetoothBlocState.disconnecting(),
        act: (bloc) => bloc.add(const BluetoothEvent.disconnected()),
        expect: () => [const BluetoothBlocState.disconnected()],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'disconnected remotely and successfully reconnected',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) async {
          bloc.add(BluetoothEvent.connect(selectedDevice: devicePrimary));
          await Future<void>.delayed(const Duration(seconds: 1));
          bloc.add(const BluetoothEvent.disconnected());
        },
        expect: () => [
          const BluetoothBlocState.connecting(),
          const BluetoothBlocState.connected(),
          BluetoothBlocState.disconnected(bluetoothDevice: devicePrimary),
          const BluetoothBlocState.connecting(),
          const BluetoothBlocState.connected(),
        ],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'disconnected remotely and not auto reconnect',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) async {
          settings = settings.copyWith(reconnect: false);
          await settingsProvider.update(settings);
          expect(settingsProvider.settings.reconnect, false);

          bloc.add(BluetoothEvent.connect(selectedDevice: devicePrimary));
          await Future<void>.delayed(const Duration(seconds: 1));
          bloc.add(const BluetoothEvent.disconnected());
        },
        expect: () => [
          const BluetoothBlocState.connecting(),
          const BluetoothBlocState.connected(),
          BluetoothBlocState.disconnected(bluetoothDevice: devicePrimary),
        ],
      );
    });
    group('on messageReceived:', () {
      late String message;
      late int stageId;
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'received correct automaticStart',
        setUp: () {
          message = r'$10:00:01,123;1234#';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <Matcher>[
          isA<BluetoothBlocState>().having(
            (state) => switch (state) {
              BluetoothBlocStateConnected() => state.message,
              BluetoothBlocState() => null,
            },
            'BluetoothMessageAutomaticStart',
            isA<BluetoothMessageAutomaticStart>().having(
              (bluetoothMessage) => bluetoothMessage.automaticStart,
              'automaticStart',
              isA<AutomaticStart>()
                  .having((automaticStart) => automaticStart.time, 'time', '10:00:01,123')
                  .having((automaticStart) => automaticStart.correction, 'correction', 1234)
                  .having((automaticStart) => automaticStart.updating, 'updating', false),
            ),
          ),
        ],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'received automaticStart without correction',
        setUp: () {
          message = r'$10:00:01,123#';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <Matcher>[
          isA<BluetoothBlocState>().having(
            (state) => switch (state) {
              BluetoothBlocStateConnected() => state.message,
              BluetoothBlocState() => null,
            },
            'BluetoothMessageAutomaticStart',
            isA<BluetoothMessageAutomaticStart>().having(
              (bluetoothMessage) => bluetoothMessage.automaticStart,
              'automaticStart',
              isA<AutomaticStart>()
                  .having((automaticStart) => automaticStart.time, 'time', '10:00:01,123')
                  .having((automaticStart) => automaticStart.correction, 'correction', null)
                  .having((automaticStart) => automaticStart.updating, 'updating', false),
            ),
          ),
        ],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'received incorrect automaticStart',
        setUp: () {
          message = r'$10:00:01,123.1234#';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <BluetoothBlocState>[],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'received finish',
        setUp: () {
          message = 'F10:00:01,123#';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <Matcher>[
          isA<BluetoothBlocState>().having(
            (state) => switch (state) {
              BluetoothBlocStateConnected() => state.message,
              BluetoothBlocState() => null,
            },
            'BluetoothMessageFinish',
            isA<BluetoothMessageFinish>().having((message) => message.time, 'finish', '10:00:01,123'),
          ),
          // isA<BluetoothConnected>().having(
          //   (state) => state.message,
          //   'BluetoothMessageFinish',
          //   isA<BluetoothMessageFinish>().having(
          //     (message) => message.time,
          //     'finish',
          //     '10:00:01,123',
          //   ),
          // ),
        ],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'received json event',
        setUp: () {
          message = '{"event":"gps_lost","timestamp":1703169600123456}';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <Matcher>[
          isA<BluetoothBlocState>().having(
            (state) => switch (state) {
              BluetoothBlocStateConnected() => state.message,
              BluetoothBlocState() => null,
            },
            'BluetoothMessageJsonEvent',
            isA<BluetoothMessageJsonEvent>()
                .having((event) => event.rawJson, 'rawJson', message)
                .having(
                  (event) => event.event,
                  'event',
                  isA<BluetoothJsonEventGpsLost>().having((event) => event.timestamp, 'timestamp', 1703169600123456),
                ),
          ),
        ],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'received json command does nothing',
        setUp: () {
          message = '{"cmd":"ping","id":1}';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <BluetoothBlocState>[],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'countdown triggers playCountdown when beepFromApp=false',
        setUp: () {
          message = 'B10:00:01,123#';
          stageId = 42;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <BluetoothBlocState>[],
        verify: (bloc) {
          verify(() => audioController.playCountdown(time: '10:00:01,123', stageId: 42)).called(1);
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'countdown does NOT trigger playCountdown when beepFromApp=true',
        setUp: () async {
          settings = settings.copyWith(beepFromApp: true);
          await settingsProvider.update(settings);
          message = 'B10:00:01,123#';
          stageId = 42;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <BluetoothBlocState>[],
        verify: (bloc) {
          verifyNever(
            () => audioController.playCountdown(
              time: any(named: 'time'),
              stageId: any(named: 'stageId'),
            ),
          );
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'voice triggers callParticipant when voiceFromApp=false',
        setUp: () {
          message = 'V10:00:01,123#';
          stageId = 24;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <BluetoothBlocState>[],
        verify: (bloc) {
          verify(() => audioController.callParticipant(time: '10:00:01,123', stageId: 24)).called(1);
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'voice does NOT trigger callParticipant when voiceFromApp=true',
        setUp: () async {
          settings = settings.copyWith(voiceFromApp: true);
          await settingsProvider.update(settings);
          message = 'V10:00:01,123#';
          stageId = 24;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <BluetoothBlocState>[],
        verify: (bloc) {
          verifyNever(
            () => audioController.callParticipant(
              time: any(named: 'time'),
              stageId: any(named: 'stageId'),
            ),
          );
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'received load_config response',
        setUp: () {
          message = '{"cmd":"load_config","id":10,"data":{"device":{"name":"ENTime"}},"status":"ok"}';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <Matcher>[
          isA<BluetoothBlocState>().having(
            (state) => switch (state) {
              BluetoothBlocStateConnected() => state.message,
              BluetoothBlocState() => null,
            },
            'BluetoothMessageJsonResponse',
            isA<BluetoothMessageJsonResponse>()
                .having((response) => response.rawJson, 'rawJson', message)
                .having(
                  (response) => response.response,
                  'response',
                  isA<BluetoothJsonResponseLoadConfig>(),
                ),
          ),
        ],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'received incorrect message',
        setUp: () {
          message = '10:00:01,123.1234';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.input,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <BluetoothBlocState>[],
      );
    });

    group('on batteryLevelUpdated:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'updates battery level when connected and preserves message',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        seed: () => BluetoothBlocState.connected(
          message: BluetoothMessage.finish(time: '10:00:01,123', timestamp: DateTime(2024)),
        ),
        act: (bloc) => bloc.add(const BluetoothEvent.batteryLevelUpdated(level: 55)),
        expect: () => <Matcher>[
          isA<BluetoothBlocState>()
              .having(
                (state) => switch (state) {
                  BluetoothBlocStateConnected() => state.message,
                  BluetoothBlocState() => null,
                },
                'BluetoothMessageFinish',
                isA<BluetoothMessageFinish>().having((message) => message.time, 'finish', '10:00:01,123'),
              )
              .having(
                (state) => switch (state) {
                  BluetoothBlocStateConnected() => state.batteryLevel,
                  BluetoothBlocState() => null,
                },
                'batteryLevel',
                55,
              ),
        ],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'does not emit when battery level is unchanged',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        seed: () => const BluetoothBlocState.connected(),
        act: (bloc) {
          bloc
            ..add(const BluetoothEvent.batteryLevelUpdated(level: 80))
            ..add(const BluetoothEvent.batteryLevelUpdated(level: 80));
        },
        expect: () => <BluetoothBlocState>[
          const BluetoothBlocState.connected(batteryLevel: 80),
        ],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'does nothing when not connected',
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        seed: () => const BluetoothBlocState.disconnected(),
        act: (bloc) => bloc.add(const BluetoothEvent.batteryLevelUpdated(level: 20)),
        expect: () => <BluetoothBlocState>[],
      );
    });

    group('on sendMessage:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        "send message didn't emit new state",
        setUp: () {
          when(() => bluetoothBackgroundConnection.sendMessage('myMessage')).thenAnswer((_) => Future.value(true));
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.output,
              rawData: 'myMessage',
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        seed: () => const BluetoothBlocState.connected(),
        act: (bloc) => bloc.add(const BluetoothEvent.sendMessage(message: 'myMessage')),
        expect: () => <BluetoothBlocState>[],
        verify: (bloc) {
          verify(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.output,
              rawData: 'myMessage',
            ),
          ).called(1);
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'send message failure does not log',
        setUp: () {
          when(() => bluetoothBackgroundConnection.sendMessage('myMessage')).thenAnswer((_) => Future.value(false));
        },
        build: () => BluetoothBloc(
          audioController: audioController,
          bluetoothProvider: bluetoothProvider,
          database: database,
          settingsProvider: settingsProvider,
        ),
        seed: () => const BluetoothBlocState.connected(),
        act: (bloc) => bloc.add(const BluetoothEvent.sendMessage(message: 'myMessage')),
        expect: () => <BluetoothBlocState>[],
        verify: (bloc) {
          verifyNever(
            () => database.addLog(
              level: any(named: 'level'),
              source: any(named: 'source'),
              direction: any(named: 'direction'),
              rawData: any(named: 'rawData'),
            ),
          );
        },
      );
    });
  });
}
