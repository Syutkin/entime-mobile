import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../settings/bloc/settings_bloc.dart';
import '../logic/log_provider.dart';
import '../model/log.dart';
import '../model/log_level.dart';
import '../model/log_source.dart';
import '../model/log_source_direction.dart';

part 'log_event.dart';
part 'log_state.dart';

class LogBloc extends Bloc<LogEvent, LogState> {
  final SettingsBloc settingsBloc;
  late final StreamSubscription<SettingsState> settingsSubscription;

  int _limit = -1;

  List<Log> _log = [];

  LogBloc({
    required this.settingsBloc,
  }) : super(const LogOpen()) {
    settingsSubscription = settingsBloc.stream.listen((state) {
      _limit = state.logLimit;
    });

    on<LogAdd>((event, emit) => _handleLogAdd(event, emit));
    on<ShowLog>((event, emit) => _handleShowLog(event, emit));
    on<HideLog>((event, emit) => _handleHideLog(event, emit));
  }

  @override
  Future<void> close() {
    LogProvider.db.close();
    settingsSubscription.cancel();
    return super.close();
  }

  Future<void> _handleLogAdd(LogAdd event, Emitter<LogState> emit) async {
    await LogProvider.db.add(
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
    _log = await LogProvider.db.getLog(limit: _limit);
    emit(LogOpen(
      log: _log,
      updateLogScreen: true,
    ));
  }

  void _handleHideLog(HideLog event, Emitter<LogState> emit) {
    emit(LogOpen(
      log: _log,
      updateLogScreen: false,
    ));
  }
}
