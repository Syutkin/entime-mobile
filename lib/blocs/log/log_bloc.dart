import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/models.dart';
import '../../data_providers/data/log_provider.dart';
import '../../blocs/blocs.dart';

part 'log_event.dart';

part 'log_state.dart';

class LogBloc extends Bloc<LogEvent, LogState> {
  late final SettingsBloc settingsBloc;
  late final StreamSubscription settingsSubscription;

  int limit = -1;

  late List<Log> log;

  LogBloc({
    required this.settingsBloc,
  }) : super(const LogOpen()) {
    settingsSubscription = settingsBloc.stream.listen((state) {
      limit = state.logLimit;
    });
  }

  @override
  Future<void> close() {
    LogProvider.db.close();
    return super.close();
  }

  @override
  Stream<LogState> mapEventToState(
    LogEvent event,
  ) async* {
    if (event is LogAdd) {
      await LogProvider.db.add(
        level: event.level,
        source: event.source,
        direction: event.direction,
        rawData: event.rawData,
      );
      if ((state as LogOpen).updateLogScreen != null &&
          (state as LogOpen).updateLogScreen == true) {
        add(const ShowLog());
        // log = await LogProvider.db.getLog(limit: limit);
        // yield LogOpen(
        //   log: log,
        //   updateLogScreen: true,
        // );
      }
    }
    if (event is ShowLog) {
      log = await LogProvider.db.getLog(limit: limit);
      yield LogOpen(
        log: log,
        updateLogScreen: true,
      );
    }
    if (event is HideLog) {
      yield LogOpen(
        log: log,
        updateLogScreen: false,
      );
    }
  }
}
