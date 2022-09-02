import 'dart:async';

import '../../model/reactive_state.dart';
import '../model/dbstate.dart';

abstract class IDatabaseProvider with ReactiveState<DBState> {
  String? get dbPath;
  Future<void> openDb(String path);

  /// Close database
  Future<void> closeDb();

  Future<void> dispose();
}
