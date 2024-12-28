import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/feature/audio/audio.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../database/drift/app_database_test.dart';

class MockIAudioService extends Mock implements IAudioService {}

class MockSettingsProvider extends Mock implements SettingsProvider {}

class MockAppSettings extends Mock implements AppSettings {}

class MockQueryRow extends Mock implements QueryRow {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late IAudioController ac;
  late AppDatabase db;
  late IAudioService audioService;
  late SettingsProvider settingsProvider;
  late AppSettings appSettings;
  late String time;
  late int stageId;

  setUp(() {
    db = AppDatabase.customConnection(
      DatabaseConnection(NativeDatabase.memory()),
    );

    // populate DB
    for (final query in PopDB().queries) {
      db.customInsert(query);
    }
    audioService = MockIAudioService();
    settingsProvider = MockSettingsProvider();
    appSettings = MockAppSettings();

    time = '09:59:45';
    stageId = 1;

    ac = AudioController(
      audioService: audioService,
      database: db,
      settingsProvider: settingsProvider,
    );

    when(() => settingsProvider.settings).thenReturn(appSettings);

    when(
      () => audioService.speak(any()),
    ).thenAnswer(
      (_) async {},
    );
  });

  group(
    'IAudioController tests',
    () {
      group('callParticipant tests', () {
        test("Competition didn't start yet", () async {
          time = '09:50:45';
          when(() => appSettings.voiceName).thenReturn(true);

          final result = await ac.callParticipant(time: time, stageId: stageId);
          expect(
            result,
            '',
          );
        });

        test('Call participant to prepare', () async {
          time = '09:58:45';
          when(() => appSettings.voiceName).thenReturn(true);

          final result = await ac.callParticipant(time: time, stageId: stageId);
          expect(
            result,
            'Готовится номер 2, Алексахина Варвара.',
          );
        });

        test('Call first participant', () async {
          time = '09:59:45';
          when(() => appSettings.voiceName).thenReturn(true);

          final result = await ac.callParticipant(time: time, stageId: stageId);
          expect(
            result,
            'На старт приглашается номер 2, Алексахина Варвара. Следующий номер 7, Берестова Владислава.',
          );
        });

        test('Call second participant', () async {
          time = '10:00:45';
          when(() => appSettings.voiceName).thenReturn(true);

          final result = await ac.callParticipant(time: time, stageId: stageId);
          expect(
            result,
            'На старт приглашается номер 7, Берестова Владислава. Следующий номер 14, Григолюк Изабелла.',
          );
        });

        test('Last participant at category', () async {
          const time1 = '10:08:45';
          const time2 = '10:09:45';
          when(() => appSettings.voiceName).thenReturn(true);

          final result1 =
              await ac.callParticipant(time: time1, stageId: stageId);
          final result2 =
              await ac.callParticipant(time: time2, stageId: stageId);
          expect(
            result1,
            'На старт приглашается номер 61, Урусова Евдокия.',
          );
          expect(
            result2,
            'Старт следующего участника номер 9, через 5 мин 30 с',
          );
        });

        test('Empty time between categories', () async {
          time = '10:09:45';
          when(() => appSettings.voiceName).thenReturn(true);

          final result = await ac.callParticipant(time: time, stageId: stageId);
          expect(
            result,
            '',
          );
        });

        test('Call last participant', () async {
          const time1 = '11:47:45';
          const time2 = '11:48:45';
          when(() => appSettings.voiceName).thenReturn(true);

          final result1 =
              await ac.callParticipant(time: time1, stageId: stageId);
          final result2 =
              await ac.callParticipant(time: time2, stageId: stageId);
          expect(
            result1,
            'На старт приглашается номер 73, Яковлев Филипп.',
          );
          expect(
            result2,
            'Старты окончены, спасибо',
          );
        });

        test('Do not call participant by name if first character is num',
            () async {

          // (1,"Алексахина Варвара","Zoenor",35,"ТимАк","Занаду"),
          await db.updateRider(
            id: 1,
            name: '092 Алексахина Варвара',
          );

          // (60,"Фламин Матвей","Arham",54,"ЮгТим","Виджаянагар"),
          await db.updateRider(
            id: 60,
            name: '0 Фламин Матвей',
          );

          time = '09:58:45';
          when(() => appSettings.voiceName).thenReturn(true);

          var result = await ac.callParticipant(time: time, stageId: stageId);
          expect(
            result,
            'Готовится номер 2.',
          );


          time = '11:17:45';
          when(() => appSettings.voiceName).thenReturn(true);

           result = await ac.callParticipant(time: time, stageId: stageId);
          expect(
            result,
            'На старт приглашается номер 52, Смелоч Антон. Следующий номер 63.',
          );

          time = '11:18:45';
          result = await ac.callParticipant(time: time, stageId: stageId);
          result = await ac.callParticipant(time: time, stageId: stageId);
          expect(
            result,
            'На старт приглашается номер 63. Следующий номер 74, Якушев Дементий.',
          );
        });
      });
    },
  );
}
