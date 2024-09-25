import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:flutter_test/flutter_test.dart';

import 'raw_queries.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late AppDatabase db;

  const raceName = 'race1';
  const startDate = '01:01:2020';
  const finishDate = '02:01:2020';
  const location = 'location';
  const raceName2 = 'race2';
  const raceName3 = 'race3';

  setUp(() {
    db = AppDatabase.forTesting(DatabaseConnection(NativeDatabase.memory()));

    for (var query in PopDB().queries) {
      db.customInsert(query);
    }
  });

  tearDown(() async {
    await db.close();
  });

  group('AppDatabase:', () {
    test('Add race', () async {
      await db.addRace(
        name: raceName,
        startDate: startDate,
        finishDate: finishDate,
        location: location,
      );

      List<Race> racesList = await db.selectRaces().get();
      expect(racesList.length, 2);
      expect(racesList[1].name, raceName);
      expect(racesList[1].startDate, startDate);
      expect(racesList[1].finishDate, finishDate);
      expect(racesList[1].location, location);

      await db.addRace(
        name: raceName2,
      );

      racesList = await db.selectRaces().get();

      expect(racesList.length, 3);
      expect(racesList[2].name, raceName2);
      expect(racesList[2].startDate, null);
      expect(racesList[2].finishDate, null);
      expect(racesList[2].location, null);

      await db.addRace(
        name: raceName3,
      );

      racesList = await db.selectRaces().get();
      expect(racesList.length, 4);
      expect(racesList[3].name, raceName3);
    });

    test('Delete race', () async {
      await db.addRace(
        name: raceName,
        startDate: startDate,
        finishDate: finishDate,
        location: location,
      );

      final result = await db.deleteRace(id: 1);
      expect(result, 1);

      final racesList = await db.selectRaces().get();
      expect(racesList.first.name, raceName);
      expect(racesList.length, 1);
    });
  });
}
