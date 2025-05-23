import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/feature/audio/audio.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:entime/src/feature/database/model/automatic_start.dart';
import 'package:entime/src/feature/log/log.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../../helpers/shared_prefs_defaults.dart';

class MockBluetoothProvider extends Mock implements BluetoothProvider {}

class MockAppDatabase extends Mock implements AppDatabase {}

class MockAudioService extends Mock implements AudioService {}

class MockAudioController extends Mock implements AudioController {}

class MockBluetoothBackgroundConnection extends Mock implements BluetoothBackgroundConnection {}

class MockFlutterBluetoothSerial extends Mock implements FlutterBluetoothSerial {}

class MockSettingsProvider extends Mock implements ISettingsProvider {}

class MockWakelockPlus extends Mock implements WakelockPlus {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockBluetoothProvider bluetoothProvider;
  late BluetoothDeviceWithAvailability deviceWithAvailability;
  late BluetoothDeviceWithAvailability deviceWithoutAvailability;
  late MockAppDatabase database;
  late MockAudioController audioController;
  late SharedPrefsSettingsProvider settingsProvider;
  late AppSettings settings;
  late MockFlutterBluetoothSerial flutterBluetoothSerial;
  late MockBluetoothBackgroundConnection bluetoothBackgroundConnection;

  setUpAll(() {
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
      flutterBluetoothSerial = MockFlutterBluetoothSerial();
      bluetoothBackgroundConnection = MockBluetoothBackgroundConnection();
      database = MockAppDatabase();
      audioController = MockAudioController();
      settings = const AppSettings.defaults();

      when(() => bluetoothProvider.flutterBluetoothSerial).thenReturn(flutterBluetoothSerial);
      when(() => flutterBluetoothSerial.onStateChanged()).thenAnswer((_) => Stream.fromIterable([]));
      when(() => bluetoothProvider.bluetoothBackgroundConnection).thenReturn(bluetoothBackgroundConnection);
      when(() => bluetoothBackgroundConnection.stop()).thenAnswer((_) => Future.value());
      when(() => bluetoothBackgroundConnection.start()).thenAnswer((_) => Future.value());
      // when(
      //   () => protocolProvider.state,
      // ).thenAnswer(
      //   (_) => BehaviorSubject<DBState>(),
      // );
      when(() => bluetoothProvider.dispose()).thenAnswer((invocation) => Future.value());
      deviceWithAvailability = BluetoothDeviceWithAvailability(
        const BluetoothDevice(address: '00:00:00:00:00', name: 'Bluetooth device with availability'),
        BluetoothDeviceAvailability.yes,
      );
      deviceWithoutAvailability = BluetoothDeviceWithAvailability(
        const BluetoothDevice(address: '00:00:00:00:00', name: 'Bluetooth device with availability'),
        BluetoothDeviceAvailability.no,
      );
      when(() => bluetoothBackgroundConnection.connect(deviceWithAvailability)).thenAnswer((_) => Future.value());
      when(() => bluetoothBackgroundConnection.isConnected).thenReturn(false);
      when(() => bluetoothBackgroundConnection.message).thenAnswer((_) => Stream.fromIterable([]));
      when(
        () => audioController.playCountdown(time: any(named: 'time'), stageId: any(named: 'stageId')),
      ).thenAnswer((_) => Future.value());
      when(() => audioController.callParticipant(time: any(named: 'time'), stageId: any(named: 'stageId'))).thenAnswer((
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
          when(() => flutterBluetoothSerial.isAvailable).thenAnswer((_) => Future.value(false));
          when(() => flutterBluetoothSerial.isEnabled).thenAnswer((_) => Future.value(false));
        },
        build:
            () => BluetoothBloc(
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
          when(() => flutterBluetoothSerial.isAvailable).thenAnswer((_) => Future.value(true));
          when(() => flutterBluetoothSerial.isEnabled).thenAnswer((_) => Future.value(false));
        },
        build:
            () => BluetoothBloc(
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
          when(() => flutterBluetoothSerial.isAvailable).thenAnswer((_) => Future.value(true));
          when(() => flutterBluetoothSerial.isEnabled).thenAnswer((_) => Future.value(true));
        },
        build:
            () => BluetoothBloc(
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
          when(() => flutterBluetoothSerial.isAvailable).thenAnswer((_) => Future.value(true));
          when(() => flutterBluetoothSerial.isEnabled).thenAnswer((_) => Future.value());
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              settingsProvider: settingsProvider,
              database: database,
            ),
        act: (bloc) => bloc.add(const BluetoothEvent.initialize()),
        expect: () => [const BluetoothBlocState.notEnabled()],
      );
    });

    group('on enable:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'successfully enabled',
        setUp: () {
          when(() => flutterBluetoothSerial.isAvailable).thenAnswer((_) => Future.value(true));
          when(() => flutterBluetoothSerial.isEnabled).thenAnswer((_) => Future.value(true));
          when(() => flutterBluetoothSerial.requestEnable()).thenAnswer((_) => Future.value(true));
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              settingsProvider: settingsProvider,
              database: database,
            ),
        act: (bloc) => bloc.add(const BluetoothEvent.enable()),
        expect: () => [const BluetoothBlocState.disconnected()],
      );
    });

    group('on selectDevice:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'no device selected',
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              settingsProvider: settingsProvider,
              database: database,
            ),
        act: (bloc) => bloc.add(const BluetoothEvent.selectDevice()),
        expect: () => <BluetoothBlocState>[],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'select and successfully connect to new device with Availability.yes',
        setUp: () {
          when(() => bluetoothBackgroundConnection.isConnected).thenReturn(true);
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              settingsProvider: settingsProvider,
              database: database,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.selectDevice(deviceWithAvailability: deviceWithAvailability)),
        expect:
            () => <BluetoothBlocState>[
              BluetoothBlocState.disconnected(bluetoothDevice: deviceWithAvailability),
              const BluetoothBlocState.connecting(),
              const BluetoothBlocState.connected(),
            ],
        verify: (bloc) {
          expect(bloc.bluetoothDevice, deviceWithAvailability);
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'select new device with Availability.no',
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              settingsProvider: settingsProvider,
              database: database,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.selectDevice(deviceWithAvailability: deviceWithoutAvailability)),
        expect: () => <BluetoothBlocState>[BluetoothBlocState.disconnected(bluetoothDevice: deviceWithoutAvailability)],
        verify: (bloc) {
          expect(bloc.bluetoothDevice, deviceWithoutAvailability);
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'select new device with Availability.maybe',
        setUp: () {
          deviceWithAvailability = BluetoothDeviceWithAvailability(
            const BluetoothDevice(address: '00:00:00:00:00', name: 'Bluetooth device with availability maybe'),
            BluetoothDeviceAvailability.maybe,
          );
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              settingsProvider: settingsProvider,
              database: database,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.selectDevice(deviceWithAvailability: deviceWithAvailability)),
        expect: () => <BluetoothBlocState>[BluetoothBlocState.disconnected(bluetoothDevice: deviceWithAvailability)],
        verify: (bloc) {
          expect(bloc.bluetoothDevice, deviceWithAvailability);
        },
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'select equal device with Availability.yes and can not connect',
        setUp: () {
          when(() => bluetoothBackgroundConnection.isConnected).thenReturn(false);
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) {
          bloc
            ..add(BluetoothEvent.selectDevice(deviceWithAvailability: deviceWithAvailability))
            ..add(BluetoothEvent.selectDevice(deviceWithAvailability: deviceWithAvailability));
        },
        expect:
            () => <BluetoothBlocState>[
              BluetoothBlocState.disconnected(bluetoothDevice: deviceWithAvailability),
              const BluetoothBlocState.connecting(),
              BluetoothBlocState.disconnected(bluetoothDevice: deviceWithAvailability),
              const BluetoothBlocState.connecting(),
              BluetoothBlocState.disconnected(bluetoothDevice: deviceWithAvailability),
            ],
        verify: (bloc) {
          expect(bloc.bluetoothDevice, deviceWithAvailability);
        },
      );
    });

    group('on connect:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'successfully connected',
        setUp: () {
          when(() => bluetoothBackgroundConnection.isConnected).thenReturn(true);
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.connect(selectedDevice: deviceWithAvailability)),
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
              direction: LogSourceDirection.output,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.connect(selectedDevice: deviceWithAvailability)),
        skip: 2,
        expect:
            () => <Matcher>[
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

    group('on connected:', () {
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'successfully connected',
        build:
            () => BluetoothBloc(
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
        'do nothing when connecting',
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        seed: () => const BluetoothBlocState.connecting(),
        act: (bloc) => bloc.add(const BluetoothEvent.disconnect()),
        expect: () => <BluetoothBlocState>[],
      );
      blocTest<BluetoothBloc, BluetoothBlocState>(
        'do nothing when disconnecting',
        build:
            () => BluetoothBloc(
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
        build:
            () => BluetoothBloc(
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
        build:
            () => BluetoothBloc(
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
        build:
            () => BluetoothBloc(
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
        build:
            () => BluetoothBloc(
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
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) async {
          bloc.add(BluetoothEvent.connect(selectedDevice: deviceWithAvailability));
          await Future<void>.delayed(const Duration(seconds: 1));
          bloc.add(const BluetoothEvent.disconnected());
        },
        expect:
            () => [
              const BluetoothBlocState.connecting(),
              const BluetoothBlocState.connected(),
              BluetoothBlocState.disconnected(bluetoothDevice: deviceWithAvailability),
              const BluetoothBlocState.connecting(),
              const BluetoothBlocState.connected(),
            ],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'disconnected remotely and not auto reconnect',
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) async {
          settings = settings.copyWith(reconnect: false);
          await settingsProvider.update(settings);
          expect(settingsProvider.settings.reconnect, false);

          bloc.add(BluetoothEvent.connect(selectedDevice: deviceWithAvailability));
          await Future<void>.delayed(const Duration(seconds: 1));
          bloc.add(const BluetoothEvent.disconnected());
        },
        expect:
            () => [
              const BluetoothBlocState.connecting(),
              const BluetoothBlocState.connected(),
              BluetoothBlocState.disconnected(bluetoothDevice: deviceWithAvailability),
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
              direction: LogSourceDirection.output,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect:
            () => <Matcher>[
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
        'received incorrect automaticStart',
        setUp: () {
          message = r'$10:00:01,123.1234#';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.output,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build:
            () => BluetoothBloc(
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
              direction: LogSourceDirection.output,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect:
            () => <Matcher>[
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
        'received countdown',
        setUp: () {
          message = 'B10:00:01,123#';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.output,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <BluetoothBlocState>[],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'received voice',
        setUp: () {
          message = 'V10:00:01,123#';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.output,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect: () => <BluetoothBlocState>[],
      );

      blocTest<BluetoothBloc, BluetoothBlocState>(
        'received moduleSettings json',
        setUp: () {
          message = '{ settings: { key, value } }';
          stageId = 1;
          when(
            () => database.addLog(
              level: LogLevel.information,
              source: LogSource.bluetooth,
              direction: LogSourceDirection.output,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
        expect:
            () => <Matcher>[
              isA<BluetoothBlocState>().having(
                (state) => switch (state) {
                  BluetoothBlocStateConnected() => state.message,
                  BluetoothBlocState() => null,
                },
                'BluetoothMessageModuleSettings',
                isA<BluetoothMessageModuleSettings>().having(
                  (settings) => settings.json,
                  'json',
                  '{ settings: { key, value } }',
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
              direction: LogSourceDirection.output,
              rawData: message,
            ),
          ).thenAnswer((_) => Future.value(1));
        },
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        act: (bloc) => bloc.add(BluetoothEvent.messageReceived(message: message, stageId: stageId)),
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
        build:
            () => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              database: database,
              settingsProvider: settingsProvider,
            ),
        seed: () => const BluetoothBlocState.connected(),
        act: (bloc) => bloc.add(const BluetoothEvent.sendMessage(message: 'myMessage')),
        expect: () => <BluetoothBlocState>[],
      );
    });
  });
}
