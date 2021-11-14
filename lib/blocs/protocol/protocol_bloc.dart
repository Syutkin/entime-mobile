import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:share_plus/share_plus.dart';

import 'package:entime/data_providers/data/protocol_provider.dart';
import 'package:entime/data_providers/csv/startlist_provider.dart';
import 'package:entime/models/models.dart';
import 'package:entime/blocs/blocs.dart';
import 'package:entime/utils/csv_utils.dart';
import 'package:entime/utils/logger.dart';

part 'protocol_event.dart';

part 'protocol_state.dart';

class AutomaticStart {
  String time;
  int correction;
  DateTime timeStamp;
  bool updating;

  AutomaticStart(this.time, this.correction, this.timeStamp,
      [this.updating = false]);
}

class StartTime {
  String time;
  int number;

  StartTime(this.time, this.number);
}

class ProtocolBloc extends Bloc<ProtocolEvent, ProtocolState> {
  bool hideMarked = true;
  bool hideNumbers = false;
  bool hideManual = false;
  String? file;
  AutomaticStart? automaticStart;
  late int finishDelay;
  late bool substituteNumbers;
  late int substituteNumbersDelay;
  int? awaitingNumber;

  final SettingsBloc settingsBloc;
  late final StreamSubscription settingsSubscription;

  List<StartItem> startProtocol = [];
  List<FinishItem> finishProtocol = [];
  List<StartItem> numbersOnTraceProtocol = [];

  ProtocolBloc({
    required this.settingsBloc,
  }) : super(ProtocolNotSelectedState()) {
    settingsSubscription = settingsBloc.stream.listen((state) {
      // условия чтобы не дёргать запросами sqlite базу при каждом изменении настроек
      if (hideMarked != state.hideMarked ||
          hideNumbers != state.hideNumbers ||
          hideManual != state.hideManual) {
        hideMarked = state.hideMarked;
        hideNumbers = state.hideNumbers;
        hideManual = state.hideManual;
        file = state.recentFile;
        add(SelectProtocol(file));
        logger.v(
            'hideMarked: $hideMarked, hideNumbers: $hideNumbers, hideManual: $hideManual, ');
      }
      if (file != state.recentFile) {
        file = state.recentFile;
        add(SelectProtocol(file!));
      }
      finishDelay = state.finishDelay;
      substituteNumbers = state.substituteNumbers;
      substituteNumbersDelay = state.substituteNumbersDelay;
    });
  }

  @override
  Future<void> close() {
    ProtocolProvider.db.close();
    settingsSubscription.cancel();
    return super.close();
  }

  @override
  Stream<ProtocolState> mapEventToState(
    ProtocolEvent event,
  ) async* {
    if (event is SelectProtocol) {
      if (event.file != null && event.file!.isNotEmpty) {
        await ProtocolProvider.db.setDbPath(event.file);
        startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
        finishProtocol = await ProtocolProvider.db.getFinishTime(
            hideManual: hideManual,
            hideMarked: hideMarked,
            hideNumbers: hideNumbers);
        numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
        settingsBloc.add(SetStringValueEvent(recentFile: event.file));
        yield ProtocolSelectedState(
          startProtocol: startProtocol,
          finishProtocol: finishProtocol,
          numbersOnTraceProtocol: numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: awaitingNumber,
        );
        logger.i('DatabaseConnect -> selected ${event.file}');
      } else {
        add(DeselectProtocol());
        logger.i('DatabaseConnect -> no file selected');
      }
    } else if (event is DeselectProtocol) {
      await ProtocolProvider.db.setDbPath(null);
      settingsBloc.add(const SetStringValueEvent(recentFile: ''));
      yield ProtocolNotSelectedState();
    } else if (event is ProtocolAddStartNumber) {
      // добавляет/заменяет номер и стартовое время в start
      if (state is ProtocolSelectedState) {
        List<StartItem>? previousStart =
            await ProtocolProvider.db.addStartNumber(
          number: event.startTime.number,
          time: event.startTime.time,
          forceAdd: event.forceAdd,
        );

        if (previousStart == null) {
          startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
          numbersOnTraceProtocol =
              await ProtocolProvider.db.getNumbersOnTrace();
        }
        yield ProtocolSelectedState(
          startProtocol: startProtocol,
          finishProtocol: finishProtocol,
          numbersOnTraceProtocol: numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          previousStart: previousStart,
          startTime: event.startTime,
          awaitingNumber: awaitingNumber,
        );
      }
    } else if (event is ProtocolUpdateAutomaticCorrection) {
      // обновляет поправку
      if (state is ProtocolSelectedState) {
        List<StartItem>? previousStart =
            await ProtocolProvider.db.updateAutomaticCorrection(
          time: event.automaticStart.time,
          correction: event.automaticStart.correction,
          timeStamp: event.automaticStart.timeStamp,
          forceUpdate: event.forceUpdate,
        );
        if (previousStart == null) {
          event.automaticStart.updating = false;
          startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
        } else {
          event.automaticStart.updating = true;
        }
        yield ProtocolSelectedState(
          startProtocol: startProtocol,
          finishProtocol: finishProtocol,
          numbersOnTraceProtocol: numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          automaticStart: event.automaticStart,
          previousStart: previousStart,
          awaitingNumber: awaitingNumber,
        );
      }
    } else if (event is ProtocolUpdateManualStartTime) {
      if (state is ProtocolSelectedState) {
        if (await ProtocolProvider.db.updateManualStartTime(event.time) > 0) {
          startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
          yield ProtocolSelectedState(
            startProtocol: startProtocol,
            finishProtocol: finishProtocol,
            numbersOnTraceProtocol: numbersOnTraceProtocol,
            databasePath: ProtocolProvider.db.dbPath!,
            awaitingNumber: awaitingNumber,
          );
        }
      }
    } else if (event is ProtocolAddFinishTime) {
      //вставить строку с финишным временем из bluetooth
      if (state is ProtocolSelectedState) {
        int? autoFinishNumber = await ProtocolProvider.db.addFinishTime(
          finish: event.time,
          timeStamp: event.timeStamp,
          finishDelay: finishDelay,
          substituteNumbers: substituteNumbers,
          substituteNumbersDelay: substituteNumbersDelay,
          number: awaitingNumber,
        );
        awaitingNumber = null;
        finishProtocol = await ProtocolProvider.db.getFinishTime(
            hideManual: hideManual,
            hideMarked: hideMarked,
            hideNumbers: hideNumbers);
        numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
        yield ProtocolSelectedState(
          startProtocol: startProtocol,
          finishProtocol: finishProtocol,
          numbersOnTraceProtocol: numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          autoFinishNumber: autoFinishNumber,
          awaitingNumber: awaitingNumber,
        );
      }
    } else if (event is ProtocolAddFinishTimeManual) {
      //вставить строку с ручным финишным временем
      if (state is ProtocolSelectedState) {
        await ProtocolProvider.db.addFinishTimeManual(event.time);
        finishProtocol = await ProtocolProvider.db.getFinishTime(
            hideManual: hideManual,
            hideMarked: hideMarked,
            hideNumbers: hideNumbers);
        numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
        yield ProtocolSelectedState(
          startProtocol: startProtocol,
          finishProtocol: finishProtocol,
          numbersOnTraceProtocol: numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: awaitingNumber,
        );
      }
    } else if (event is ProtocolUpdateItemInfoAtStart) {
      if (state is ProtocolSelectedState) {
        await ProtocolProvider.db.updateItemInfoAtStart(event.item);
        startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
        numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
        yield ProtocolSelectedState(
          startProtocol: startProtocol,
          finishProtocol: finishProtocol,
          numbersOnTraceProtocol: numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: awaitingNumber,
        );
      }
    } else if (event is ProtocolClearStartResultsDebug) {
      //очищает результаты старта, используется только в debug
      await ProtocolProvider.db.clearStartResultsDebug();
      startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
      finishProtocol = await ProtocolProvider.db.getFinishTime(
          hideManual: hideManual,
          hideMarked: hideMarked,
          hideNumbers: hideNumbers);
      numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      yield ProtocolSelectedState(
        startProtocol: startProtocol,
        finishProtocol: finishProtocol,
        numbersOnTraceProtocol: numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: awaitingNumber,
      );
    } else if (event is ProtocolClearFinishResultsDebug) {
      //очищает результаты финиша, используется только в debug
      await ProtocolProvider.db.clearFinishResultsDebug();
      startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
      finishProtocol = await ProtocolProvider.db.getFinishTime(
          hideManual: hideManual,
          hideMarked: hideMarked,
          hideNumbers: hideNumbers);
      numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      yield ProtocolSelectedState(
        startProtocol: startProtocol,
        finishProtocol: finishProtocol,
        numbersOnTraceProtocol: numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: awaitingNumber,
      );
    } else if (event is ProtocolHideAllFinishResults) {
      //скрыть всё в финишном протоколе
      await ProtocolProvider.db.hideAllFinish();
      finishProtocol = await ProtocolProvider.db.getFinishTime(
          hideManual: hideManual,
          hideMarked: hideMarked,
          hideNumbers: hideNumbers);
      yield ProtocolSelectedState(
        startProtocol: startProtocol,
        finishProtocol: finishProtocol,
        numbersOnTraceProtocol: numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: awaitingNumber,
      );
    } else if (event is ProtocolClearNumberAtFinish) {
      //очистить номер в finish
      await ProtocolProvider.db.clearNumberAtFinish(event.number);
      finishProtocol = await ProtocolProvider.db.getFinishTime(
          hideManual: hideManual,
          hideMarked: hideMarked,
          hideNumbers: hideNumbers);
      numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      yield ProtocolSelectedState(
        startProtocol: startProtocol,
        finishProtocol: finishProtocol,
        numbersOnTraceProtocol: numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: awaitingNumber,
      );
    } else if (event is ProtocolSetDNS) {
      await ProtocolProvider.db.setDNS(event.number);
      startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
      numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      yield ProtocolSelectedState(
        startProtocol: startProtocol,
        finishProtocol: finishProtocol,
        numbersOnTraceProtocol: numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: awaitingNumber,
      );
    } else if (event is ProtocolSetDNF) {
      //ставит время финиша "DNF" для номера
      await ProtocolProvider.db.setDNF(event.number);
      finishProtocol = await ProtocolProvider.db.getFinishTime(
          hideManual: hideManual,
          hideMarked: hideMarked,
          hideNumbers: hideNumbers);
      numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      yield ProtocolSelectedState(
        startProtocol: startProtocol,
        finishProtocol: finishProtocol,
        numbersOnTraceProtocol: numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: awaitingNumber,
      );
    } else if (event is ProtocolHideFinishTime) {
      await ProtocolProvider.db.hideFinish(event.id);
      finishProtocol = await ProtocolProvider.db.getFinishTime(
          hideManual: hideManual,
          hideMarked: hideMarked,
          hideNumbers: hideNumbers);
      yield ProtocolSelectedState(
        startProtocol: startProtocol,
        finishProtocol: finishProtocol,
        numbersOnTraceProtocol: numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: awaitingNumber,
      );
    } else if (event is ProtocolSetNumberToFinishTime) {
      //добавить номер в finish и обновить финишное время в start у данного номера
      var update = await ProtocolProvider.db
          .addNumber(event.id, event.number, event.finishTime);
      finishProtocol = await ProtocolProvider.db.getFinishTime(
          hideManual: hideManual,
          hideMarked: hideMarked,
          hideNumbers: hideNumbers);
      numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      yield ProtocolSelectedState(
        startProtocol: startProtocol,
        finishProtocol: finishProtocol,
        numbersOnTraceProtocol: numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        updateFinishNumber: update,
        awaitingNumber: awaitingNumber,
      );
    } else if (event is ProtocolGetNumbersOnTrace) {
      if (ProtocolProvider.db.dbPath != null) {
        numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
        yield ProtocolSelectedState(
          startProtocol: startProtocol,
          finishProtocol: finishProtocol,
          numbersOnTraceProtocol: numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: awaitingNumber,
        );
      }
    } else if (event is ProtocolLoadStartFromCsv) {
      if (state is ProtocolSelectedState) {
        List<StartItemCsv> items = await getStartList();
        // for (var item in items) {
        await ProtocolProvider.db.loadStartItem(items);
        // }
        startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
        numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
        yield ProtocolSelectedState(
          startProtocol: startProtocol,
          finishProtocol: finishProtocol,
          numbersOnTraceProtocol: numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: awaitingNumber,
        );
      }
    } else if (event is ProtocolShareStart) {
      var result = await ProtocolProvider.db.getStartToCsv();
      var csv = mapListToCsv(result as List<Map<String, dynamic>>);
      if (csv != null && ProtocolProvider.db.dbPath != null) {
        var path = await saveCsv(csv, 'start', ProtocolProvider.db.dbPath!);
        if (path != null) {
          await Share.shareFiles([path], text: 'Стартовый протокол');
        }
      }
    } else if (event is ProtocolShareFinish) {
      var result = await ProtocolProvider.db.getFinishToCsv();
      var csv = mapListToCsv(result as List<Map<String, dynamic>>);
      if (csv != null && ProtocolProvider.db.dbPath != null) {
        var path = await saveCsv(csv, 'finish', ProtocolProvider.db.dbPath!);
        if (path != null) {
          await Share.shareFiles([path], text: 'Финишный протокол');
        }
      }
    } else if (event is ProtocolSelectAwaitingNumber) {
      if (state is ProtocolSelectedState) {
        awaitingNumber = event.number;
        yield ProtocolSelectedState(
          startProtocol: startProtocol,
          finishProtocol: finishProtocol,
          numbersOnTraceProtocol: numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: awaitingNumber,
        );
      }
    } else if (event is ProtocolDeselectAwaitingNumber) {
      if (state is ProtocolSelectedState) {
        awaitingNumber = null;
        yield ProtocolSelectedState(
          startProtocol: startProtocol,
          finishProtocol: finishProtocol,
          numbersOnTraceProtocol: numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: awaitingNumber,
        );
      }
    }
  }
}
