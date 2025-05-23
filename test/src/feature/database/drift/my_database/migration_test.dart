// dart format width=80
// ignore_for_file: unused_local_variable, unused_import
import 'package:drift/drift.dart';
import 'package:drift_dev/api/migrations_native.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:flutter_test/flutter_test.dart';
import 'generated/schema.dart';

import 'generated/schema_v1.dart' as v1;
import 'generated/schema_v2.dart' as v2;

void main() {
  driftRuntimeOptions.dontWarnAboutMultipleDatabases = true;
  late SchemaVerifier verifier;

  setUpAll(() {
    verifier = SchemaVerifier(GeneratedHelper());
  });

  group('simple database migrations', () {
    // These simple tests verify all possible schema updates with a simple (no
    // data) migration. This is a quick way to ensure that written database
    // migrations properly alter the schema.
    const versions = GeneratedHelper.versions;
    for (final (i, fromVersion) in versions.indexed) {
      group('from $fromVersion', () {
        for (final toVersion in versions.skip(i + 1)) {
          test('to $toVersion', () async {
            final schema = await verifier.schemaAt(fromVersion);
            final db = AppDatabase(schema.newConnection());
            await verifier.migrateAndValidate(db, toVersion);
            await db.close();
          });
        }
      });
    }
  });

  // The following template shows how to write tests ensuring your migrations
  // preserve existing data.
  // Testing this can be useful for migrations that change existing columns
  // (e.g. by alterating their type or constraints). Migrations that only add
  // tables or columns typically don't need these advanced tests. For more
  // information, see https://drift.simonbinder.eu/migrations/tests/#verifying-data-integrity
  // TODO: This generated template shows how these tests could be written. Adopt
  // it to your own needs when testing migrations with data integrity.
  test('migration from v1 to v2 does not corrupt data', () async {
    // Add data to insert into the old database, and the expected rows after the
    // migration.
    // TODO: Fill these lists
    final oldRacesData = <v1.RacesData>[];
    final expectedNewRacesData = <v2.RacesData>[];

    final oldTrackFilesData = <v1.TrackFilesData>[];
    final expectedNewTrackFilesData = <v2.TrackFilesData>[];

    final oldTrailsData = <v1.TrailsData>[];
    final expectedNewTrailsData = <v2.TrailsData>[];

    final oldStagesData = <v1.StagesData>[];
    final expectedNewStagesData = <v2.StagesData>[];

    final oldRidersData = <v1.RidersData>[];
    final expectedNewRidersData = <v2.RidersData>[];

    final oldStatusesData = <v1.StatusesData>[];
    final expectedNewStatusesData = <v2.StatusesData>[];

    final oldParticipantsData = <v1.ParticipantsData>[];
    final expectedNewParticipantsData = <v2.ParticipantsData>[];

    final oldFinishesData = <v1.FinishesData>[];
    final expectedNewFinishesData = <v2.FinishesData>[];

    final oldStartsData = <v1.StartsData>[];
    final expectedNewStartsData = <v2.StartsData>[];

    final oldLogsData = <v1.LogsData>[];
    final expectedNewLogsData = <v2.LogsData>[];

    await verifier.testWithDataIntegrity(
      oldVersion: 1,
      newVersion: 2,
      createOld: v1.DatabaseAtV1.new,
      createNew: v2.DatabaseAtV2.new,
      openTestedDatabase: AppDatabase.new,
      createItems: (batch, oldDb) {
        batch.insertAll(oldDb.races, oldRacesData);
        batch.insertAll(oldDb.trackFiles, oldTrackFilesData);
        batch.insertAll(oldDb.trails, oldTrailsData);
        batch.insertAll(oldDb.stages, oldStagesData);
        batch.insertAll(oldDb.riders, oldRidersData);
        batch.insertAll(oldDb.statuses, oldStatusesData);
        batch.insertAll(oldDb.participants, oldParticipantsData);
        batch.insertAll(oldDb.finishes, oldFinishesData);
        batch.insertAll(oldDb.starts, oldStartsData);
        batch.insertAll(oldDb.logs, oldLogsData);
      },
      validateItems: (newDb) async {
        expect(expectedNewRacesData, await newDb.select(newDb.races).get());
        expect(
          expectedNewTrackFilesData,
          await newDb.select(newDb.trackFiles).get(),
        );
        expect(expectedNewTrailsData, await newDb.select(newDb.trails).get());
        expect(expectedNewStagesData, await newDb.select(newDb.stages).get());
        expect(expectedNewRidersData, await newDb.select(newDb.riders).get());
        expect(
          expectedNewStatusesData,
          await newDb.select(newDb.statuses).get(),
        );
        expect(
          expectedNewParticipantsData,
          await newDb.select(newDb.participants).get(),
        );
        expect(
          expectedNewFinishesData,
          await newDb.select(newDb.finishes).get(),
        );
        expect(expectedNewStartsData, await newDb.select(newDb.starts).get());
        expect(expectedNewLogsData, await newDb.select(newDb.logs).get());
      },
    );
  });
}
