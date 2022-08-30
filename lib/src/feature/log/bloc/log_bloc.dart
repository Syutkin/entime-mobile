import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/database/logic/database_provider.dart';
import '../../settings/settings.dart';
import '../model/log.dart';
import '../model/log_level.dart';
import '../model/log_source.dart';
import '../model/log_source_direction.dart';

part 'log_event.dart';
part 'log_state.dart';

class LogBloc extends Bloc<LogEvent, LogState> {
  final IDatabaseProvider databaseProvider;
  final SettingsProvider settingsProvider;
  // final SettingsBloc settingsBloc;
  late final StreamSubscription<AppSettings> settingsSubscription;

  int _limit = -1;

  List<Log> _log = [];

  LogBloc({
    required this.settingsProvider,
    required this.databaseProvider,
  }) : super(const LogOpen()) {
    settingsSubscription = settingsProvider.state.listen((state) {
      _limit = state.logLimit;
    });

    on<LogAdd>((event, emit) => _handleLogAdd(event, emit));
    on<ShowLog>((event, emit) => _handleShowLog(event, emit));
    on<HideLog>((event, emit) => _handleHideLog(event, emit));
  }

  @override
  Future<void> close() {
    databaseProvider.dispose();
    settingsSubscription.cancel();
    return super.close();
  }

  Future<void> _handleLogAdd(LogAdd event, Emitter<LogState> emit) async {
    await databaseProvider.addLog(
      level: event.level,
      source: event.source,
      direction: event.direction,
      rawData: event.rawData,
    );
    if ((state as LogOpen).updateLogScreen ?? false) {
      add(const ShowLog());
    }
  }

  Future<void> _handleShowLog(ShowLog event, Emitter<LogState> emit) async {
    _log = await databaseProvider.getLog(limit: _limit);
    emit(
      LogOpen(
        log: _log,
        updateLogScreen: true,
      ),
    );
  }

  void _handleHideLog(HideLog event, Emitter<LogState> emit) {
    emit(
      LogOpen(
        log: _log,
        updateLogScreen: false,
      ),
    );
  }
}
