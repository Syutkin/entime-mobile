import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../database/drift/app_database.dart';
import '../../settings/settings.dart';
import '../model/log_level.dart';
import '../model/log_source.dart';
import '../model/log_source_direction.dart';

part 'log_bloc.freezed.dart';
part 'log_event.dart';
part 'log_state.dart';

class LogBloc extends Bloc<LogEvent, LogState> {
  LogBloc({
    required AppDatabase database,
    required SettingsProvider settingsProvider,
  })  : _db = database,
        _settingsProvider = settingsProvider,
        super(const LogState.initial()) {
    _settingsProvider.state.listen((state) {
      _limit = state.logLimit;
    });

    // _db.select(_db.logs).watch().listen((event) async {
    //   _log = event;
    //   logger.d('LogBloc -> (_db.logs).watch()');
    // });

    // logProvider.state.listen((state) {
    //   if (state == const DBState.selected(updated: true)) {
    //     add(const ShowLog());
    //   }
    // });

    on<LogEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        add: (_Add event) async {
          // LogEvent.add(
          //   level: event.level,
          //   source: event.source,
          //   direction: event.direction,
          //   rawData: event.rawData,
          // );
          state.mapOrNull(
            initialized: (state) {
              if (state.updateLogScreen ?? false) {
                add(const LogEvent.show());
              }
            },
          );
        },
        show: (_Show event) async {
          _log = await _db.getLog(limit: _limit);
          emit(
            LogState.initialized(
              log: _log,
              updateLogScreen: true,
            ),
          );
        },
        hide: (_Hide event) async {
          emit(
            LogState.initialized(
              log: _log,
              updateLogScreen: false,
            ),
          );
        },
      );
    });
  }
  final AppDatabase _db;
  final SettingsProvider _settingsProvider;

  int _limit = -1;

  List<Log> _log = [];
}
