import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/feature/countdown/logic/countdown_at_start.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../database/drift/app_database_test.dart';

class MockSettingsProvider extends Mock implements ISettingsProvider {}

void main() {
  late AppDatabase db;
  late CountdownAtStart countdown;
  late ISettingsProvider settings;
  late AppSettings defaults;

  setUp(() {
    db = AppDatabase.customConnection(DatabaseConnection(NativeDatabase.memory()));

    // populate DB
    for (final query in PopDB().queries) {
      db.customInsert(query);
    }

    defaults = const AppSettings.defaults();

    settings = MockSettingsProvider();
    when(() => settings.settings).thenReturn(defaults);

    countdown = CountdownAtStart(database: db, settingsProvider: settings);
  });

  tearDown(() async {
    await db.close();
  });

  group('CountdownAtStart tests', () {
    test('Construct countdown', () async {
      expect(countdown, isA<CountdownAtStart>());
    });

    test('Format countdown time, more then a hour', () async {
      countdown.customTimeNow = '08:00:00.001'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.ticks.value.text, '02:00:00');

      countdown.customTimeNow = '08:00:00'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.ticks.value.text, '02:00:01');
    });

    test('Format countdown time, less then a hour', () async {
      countdown.customTimeNow = '09:30:00.001'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.ticks.value.text, '30:00');

      countdown.customTimeNow = '09:30:00'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.ticks.value.text, '30:01');
    });

    test('Format countdown time, less then a ten minute', () async {
      countdown.customTimeNow = '09:55:10.001'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.ticks.value.text, '04:50');

      countdown.customTimeNow = '09:55:10'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.ticks.value.text, '04:51');
    });

    test('Format countdown time, less then a minute', () async {
      countdown.customTimeNow = '09:59:15.001'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.ticks.value.text, '45');

      countdown.customTimeNow = '09:59:15'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.ticks.value.text, '46');
    });

    test('Format countdown time, right after start', () async {
      countdown.customTimeNow = '09:59:59.001'.toDateTime();
      await countdown.start(1);
      await Future<void>.delayed(const Duration(seconds: 2));
      countdown.stop();
      expect(countdown.ticks.value.text, 'GO');
    });

    test('Start countdown before all starts', () async {
      countdown.customTimeNow = '09:00:00'.toDateTime();
      final nextStartTime = '10:00:00'.toDateTime()!;
      const number = 2;
      await countdown.start(1);
      await Future<void>.delayed(const Duration(seconds: 5));
      countdown.stop();
      expect(countdown.ticks.value.nextStartTime, nextStartTime);
      expect(countdown.ticks.value.number, number);
    });

    test('Start countdown after all starts, show Fin text', () async {
      countdown.customTimeNow = '19:00:00'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.ticks.value.text, 'Fin');
    });

    test('Show Fin after last start, defaults value', () async {
      countdown.customTimeNow = '11:47:59'.toDateTime();
      await countdown.start(1);
      await Future<void>.delayed(const Duration(seconds: 13));
      countdown.stop();
      expect(countdown.ticks.value.text, 'Fin');
    });

    test('Show Fin after last start, custom delta value', () async {
      const deltaInSeconds = 5;
      defaults = defaults.copyWith(deltaInSeconds: deltaInSeconds);
      when(() => settings.settings).thenReturn(defaults);
      countdown = CountdownAtStart(database: db, settingsProvider: settings)..customTimeNow = '11:47:59'.toDateTime();
      await countdown.start(1);
      await Future<void>.delayed(const Duration(seconds: deltaInSeconds + 3));
      countdown.stop();
      expect(countdown.ticks.value.text, 'Fin');
    });

    test('Call next participant once', () async {
      const deltaInSeconds = 1;
      var result = 0;
      defaults = defaults.copyWith(deltaInSeconds: deltaInSeconds);
      when(() => settings.settings).thenReturn(defaults);
      countdown = CountdownAtStart(database: db, settingsProvider: settings)..customTimeNow = '11:47:59'.toDateTime();
      countdown.ticks.listen((data) {
        if (data.callNextParticipant) {
          result++;
        }
      });
      await countdown.start(1);
      await Future<void>.delayed(const Duration(seconds: deltaInSeconds + 3));
      countdown.stop();
      expect(result, 1);
    });

    test('Show second after call next participant', () async {
      const deltaInSeconds = 2;
      defaults = defaults.copyWith(deltaInSeconds: deltaInSeconds);
      when(() => settings.settings).thenReturn(defaults);
      countdown = CountdownAtStart(database: db, settingsProvider: settings)..customTimeNow = '10:00:59.5'.toDateTime();
      await countdown.start(1);
      await Future<void>.delayed(const Duration(seconds: deltaInSeconds + 2));
      countdown.stop();
      expect(countdown.ticks.value.text, '58');
    });

    test('Close stream', () async {
      expect(countdown.ticks.isClosed, false);
      await countdown.close();
      expect(countdown.ticks.isClosed, true);
    });
  });
}
