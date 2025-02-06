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
    db = AppDatabase.customConnection(
      DatabaseConnection(NativeDatabase.memory()),
    );

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
      countdown.customTimeNow = '08:00:00'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.value.value.text, '02:00:00');
    });

    test('Format countdown time, less then a hour', () async {
      countdown.customTimeNow = '09:30:00'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.value.value.text, '30:00');
    });

    test('Format countdown time, less then a ten minute', () async {
      countdown.customTimeNow = '09:55:10'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.value.value.text, '04:50');
    });

    test('Format countdown time, less then a minute', () async {
      countdown.customTimeNow = '09:59:15'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.value.value.text, '45');
    });

    test('Format countdown time, right after start', () async {
      countdown.customTimeNow = '09:59:59'.toDateTime();
      await countdown.start(1);
      await Future<void>.delayed(const Duration(seconds: 2));
      countdown.stop();
      expect(countdown.value.value.text, 'GO');
    });

    test('Start countdown before all starts', () async {
      countdown.customTimeNow = '09:00:00'.toDateTime();
      final nextStartTime = '10:00:00'.toDateTime()!;
      const number = 2;
      await countdown.start(1);
      await Future<void>.delayed(const Duration(seconds: 5));
      countdown.stop();
      expect(countdown.value.value.nextStartTime, nextStartTime);
      expect(countdown.value.value.number, number);
    });

    test('Start countdown after all starts, show Fin text', () async {
      countdown.customTimeNow = '19:00:00'.toDateTime();
      await countdown.start(1);
      countdown.stop();
      expect(countdown.value.value.text, 'Fin');
    });

    test('Show Fin after last start, defaults value', () async {
      countdown.customTimeNow = '11:47:59'.toDateTime();
      await countdown.start(1);
      await Future<void>.delayed(const Duration(seconds: 13));
      countdown.stop();
      expect(countdown.value.value.text, 'Fin');
    });

    test('Show Fin after last start, custom delta value', () async {
      const deltaInSeconds = 5;
      defaults = defaults.copyWith(deltaInSeconds: deltaInSeconds);
      when(() => settings.settings).thenReturn(defaults);
      countdown = CountdownAtStart(database: db, settingsProvider: settings)
        ..customTimeNow = '11:47:59'.toDateTime();
      await countdown.start(1);
      await Future<void>.delayed(const Duration(seconds: deltaInSeconds + 3));
      countdown.stop();
      expect(countdown.value.value.text, 'Fin');
    });

    test('Close stream', () async {
      expect(countdown.value.isClosed, false);
      await countdown.close();
      expect(countdown.value.isClosed, true);
    });
  });
}
