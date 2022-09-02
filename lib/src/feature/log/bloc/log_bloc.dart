import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/database/model/dbstate.dart';
import '../../settings/settings.dart';
import '../logic/log_provider.dart';
import '../model/log.dart';
import '../model/log_level.dart';
import '../model/log_source.dart';
import '../model/log_source_direction.dart';

part 'log_bloc.freezed.dart';
part 'log_event.dart';
part 'log_state.dart';

class LogBloc extends Bloc<LogEvent, LogState> {
  final ILogProvider logProvider;
  final SettingsProvider settingsProvider;

  int _limit = -1;

  List<Log> _log = [];

  LogBloc({
    required this.settingsProvider,
    required this.logProvider,
  }) : super(const LogOpen()) {
    settingsProvider.state.listen((state) {
      _limit = state.logLimit;
    });

    logProvider.state.listen((state) {
      if (state == const DBState.selected(updated: true)) {
        add(const ShowLog());
      }
    });

    on<LogAdd>((event, emit) => _handleLogAdd(event, emit));
    on<ShowLog>((event, emit) => _handleShowLog(event, emit));
    on<HideLog>((event, emit) => _handleHideLog(event, emit));
  }

  @override
  Future<void> close() {
    logProvider.dispose();
    return super.close();
  }

  Future<void> _handleLogAdd(LogAdd event, Emitter<LogState> emit) async {
    await logProvider.addLog(
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
    _log = await logProvider.getLog(limit: _limit);
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
