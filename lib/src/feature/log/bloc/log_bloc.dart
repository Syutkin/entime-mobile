import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/logger/logger.dart';
import '../../database/drift/app_database.dart';
import '../../settings/settings.dart';
import '../log.dart';

part 'log_bloc.freezed.dart';
part 'log_event.dart';
part 'log_state.dart';

class LogBloc extends Bloc<LogEvent, LogState> {
  LogBloc({
    required AppDatabase database,
    required SettingsProvider settingsProvider,
  })  : _db = database,
        _settingsProvider = settingsProvider,
        super(const LogState(log: [])) {
    _settingsProvider.state.listen((state) {
      _limit = state.logLimit;
    });

    _logsSubscription =
        _db.managers.logs.limit(1).watch().listen((event) async {
      logger.d('LogBloc -> (_db.logs).watch()');
      _log = await _db.getLog(limit: _limit);
      add(const LogEvent.emitState());
    });

    on<LogEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        emitState: (_EmitState event) async {
          emit(LogState(log: _log));
        },
        add: (_AddLog event) {
          _db.addLog(
            level: event.level,
            source: event.source,
            rawData: event.rawData,
          );
        },
      );
    });
  }
  final AppDatabase _db;
  final SettingsProvider _settingsProvider;

  int _limit = -1;

  List<Log> _log = [];

  late StreamSubscription<List<Log>> _logsSubscription;

  @override
  Future<void> close() {
    _logsSubscription.cancel();
    return super.close();
  }
}
