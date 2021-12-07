import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'protocol_provider.g.dart';

@DriftDatabase(
  include: {'protocol.drift'},
)
class ProtocolProvider extends _$ProtocolProvider {
  ProtocolProvider() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) {
          return m.createAll();
        },
        beforeOpen: (details) async {
          if (details.wasCreated) {
            await into(statuses).insert(Statuse(id: 1, type: 'active'));
            await into(statuses).insert(Statuse(id: 2, type: 'DNS'));
            await into(statuses).insert(Statuse(id: 3, type: 'DNF'));
            await into(statuses).insert(Statuse(id: 4, type: 'DSQ'));
          }
        },
      );
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'protocol.sqlite'));
    return NativeDatabase(file);
  });
}
