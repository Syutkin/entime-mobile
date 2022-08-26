import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_plus/share_plus.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/csv_utils.dart';
import '../../csv/logic/startlist_provider.dart';
import '../../settings/bloc/settings_bloc.dart';
import '../logic/protocol_provider.dart';
import '../model/automatic_start.dart';
import '../model/protocol.dart';
import '../model/start_protocol.dart';
import '../model/start_time.dart';

part 'protocol_bloc.freezed.dart';
part 'protocol_event.dart';
part 'protocol_state.dart';

class ProtocolBloc extends Bloc<ProtocolEvent, ProtocolState> {
  bool _hideMarked = true;
  bool _hideNumbers = false;
  bool _hideManual = false;
  String? _file;
  late int _finishDelay;
  late bool _substituteNumbers;
  late int _substituteNumbersDelay;
  int? _awaitingNumber;

  final SettingsBloc settingsBloc;
  late final StreamSubscription<SettingsState> settingsSubscription;

  List<StartItem> _startProtocol = [];
  List<FinishItem> _finishProtocol = [];
  List<StartItem> _numbersOnTraceProtocol = [];

  ProtocolBloc({
    required this.settingsBloc,
  }) : super(const ProtocolNotSelectedState()) {
    settingsSubscription = settingsBloc.stream.listen((state) {
      // условия чтобы не дёргать запросами sqlite базу при каждом изменении настроек
      if (_hideMarked != state.settings.hideMarked ||
          _hideNumbers != state.settings.hideNumbers ||
          _hideManual != state.settings.hideManual) {
        _hideMarked = state.settings.hideMarked;
        _hideNumbers = state.settings.hideNumbers;
        _hideManual = state.settings.hideManual;
        _file = state.settings.recentFile;
        add(SelectProtocol(file: _file));
        logger.v(
          'hideMarked: $_hideMarked, hideNumbers: $_hideNumbers, hideManual: $_hideManual, ',
        );
      }
      if (_file != state.settings.recentFile) {
        _file = state.settings.recentFile;
        add(SelectProtocol(file: _file));
      }
      _finishDelay = state.settings.finishDelay;
      _substituteNumbers = state.settings.substituteNumbers;
      _substituteNumbersDelay = state.settings.substituteNumbersDelay;
    });

    on<SelectProtocol>((event, emit) => _handleSelectProtocol(event, emit));
    on<DeselectProtocol>((event, emit) => _handleDeselectProtocol(event, emit));
    on<ProtocolAddStartNumber>(
      (event, emit) => _handleProtocolAddStartNumber(event, emit),
    );
    on<ProtocolUpdateAutomaticCorrection>(
      (event, emit) => _handleProtocolUpdateAutomaticCorrection(event, emit),
    );
    on<ProtocolUpdateManualStartTime>(
      (event, emit) => _handleProtocolUpdateManualStartTime(event, emit),
    );
    on<ProtocolAddFinishTime>(
      (event, emit) => _handleProtocolAddFinishTime(event, emit),
    );
    on<ProtocolAddFinishTimeManual>(
      (event, emit) => _handleProtocolAddFinishTimeManual(event, emit),
    );
    on<ProtocolUpdateItemInfoAtStart>(
      (event, emit) => _handleProtocolUpdateItemInfoAtStart(event, emit),
    );
    on<ProtocolClearStartResultsDebug>(
      (event, emit) => _handleProtocolClearStartResultsDebug(event, emit),
    );
    on<ProtocolClearFinishResultsDebug>(
      (event, emit) => _handleProtocolClearFinishResultsDebug(event, emit),
    );
    on<ProtocolHideAllFinishResults>(
      (event, emit) => _handleProtocolHideAllFinishResults(event, emit),
    );
    on<ProtocolClearNumberAtFinish>(
      (event, emit) => _handleProtocolClearNumberAtFinish(event, emit),
    );
    on<ProtocolSetDNS>((event, emit) => _handleProtocolSetDNS(event, emit));
    on<ProtocolSetDNF>((event, emit) => _handleProtocolSetDNF(event, emit));
    on<ProtocolHideFinishTime>(
      (event, emit) => _handleProtocolHideFinishTime(event, emit),
    );
    on<ProtocolSetNumberToFinishTime>(
      (event, emit) => _handleProtocolSetNumberToFinishTime(event, emit),
    );
    on<ProtocolGetNumbersOnTrace>(
      (event, emit) => _handleProtocolGetNumbersOnTrace(event, emit),
    );
    on<ProtocolLoadStartFromCsv>(
      (event, emit) => _handleProtocolLoadStartFromCsv(event, emit),
    );
    on<ProtocolShareStart>(
      (event, emit) => _handleProtocolShareStart(event, emit),
    );
    on<ProtocolShareFinish>(
      (event, emit) => _handleProtocolShareFinish(event, emit),
    );
    on<ProtocolSelectAwaitingNumber>(
      (event, emit) => _handleProtocolSelectAwaitingNumber(event, emit),
    );
    on<ProtocolDeselectAwaitingNumber>(
      (event, emit) => _handleProtocolDeselectAwaitingNumber(event, emit),
    );
  }

  @override
  Future<void> close() {
    ProtocolProvider.db.close();
    settingsSubscription.cancel();
    return super.close();
  }

  Future<void> _handleSelectProtocol(
    SelectProtocol event,
    Emitter<ProtocolState> emit,
  ) async {
    final file = event.file;
    if (file != null && file.isNotEmpty) {
      await ProtocolProvider.db.setDbPath(file);
      if (event.csv != null) {
        await _updateFromCsv(event.csv);
      }
      _startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
      _finishProtocol = await ProtocolProvider.db.getFinishTime(
        hideManual: _hideManual,
        hideMarked: _hideMarked,
        hideNumbers: _hideNumbers,
      );
      _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      settingsBloc.add(
        SettingsEventUpdate(
          settings: settingsBloc.state.settings.copyWith(recentFile: file),
        ),
      );
      emit(
        ProtocolSelectedState(
          startProtocol: _startProtocol,
          finishProtocol: _finishProtocol,
          numbersOnTraceProtocol: _numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: _awaitingNumber,
        ),
      );
      logger.i('DatabaseConnect -> selected $file');
    } else {
      add(const DeselectProtocol());
      logger.i('DatabaseConnect -> no file selected');
    }
  }

  Future<void> _handleDeselectProtocol(
    DeselectProtocol event,
    Emitter<ProtocolState> emit,
  ) async {
    await ProtocolProvider.db.setDbPath(null);
    settingsBloc.add(
      SettingsEventUpdate(
        settings: settingsBloc.state.settings.copyWith(recentFile: ''),
      ),
    );
    emit(const ProtocolNotSelectedState());
  }

  // добавляет/заменяет номер и стартовое время в start
  Future<void> _handleProtocolAddStartNumber(
    ProtocolAddStartNumber event,
    Emitter<ProtocolState> emit,
  ) async {
    if (state is ProtocolSelectedState) {
      final List<StartItem>? previousStart =
          await ProtocolProvider.db.addStartNumber(
        number: event.startTime.number,
        time: event.startTime.time,
        forceAdd: event.forceAdd,
      );

      if (previousStart == null) {
        _startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
        _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      }
      emit(
        ProtocolSelectedState(
          startProtocol: _startProtocol,
          finishProtocol: _finishProtocol,
          numbersOnTraceProtocol: _numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          previousStart: previousStart,
          startTime: event.startTime,
          awaitingNumber: _awaitingNumber,
        ),
      );
    }
  }

  // обновляет поправку
  Future<void> _handleProtocolUpdateAutomaticCorrection(
    ProtocolUpdateAutomaticCorrection event,
    Emitter<ProtocolState> emit,
  ) async {
    if (state is ProtocolSelectedState) {
      final List<StartItem>? previousStart =
          await ProtocolProvider.db.updateAutomaticCorrection(
        time: event.automaticStart.time,
        correction: event.automaticStart.correction,
        timeStamp: event.automaticStart.timeStamp,
        forceUpdate: event.forceUpdate,
      );
      if (previousStart == null) {
        event.automaticStart.updating = false;
        _startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
      } else {
        event.automaticStart.updating = true;
      }
      emit(
        ProtocolSelectedState(
          startProtocol: _startProtocol,
          finishProtocol: _finishProtocol,
          numbersOnTraceProtocol: _numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          automaticStart: event.automaticStart,
          previousStart: previousStart,
          awaitingNumber: _awaitingNumber,
        ),
      );
    }
  }

  Future<void> _handleProtocolUpdateManualStartTime(
    ProtocolUpdateManualStartTime event,
    Emitter<ProtocolState> emit,
  ) async {
    if (state is ProtocolSelectedState) {
      if (await ProtocolProvider.db.updateManualStartTime(event.time) > 0) {
        _startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
        emit(
          ProtocolSelectedState(
            startProtocol: _startProtocol,
            finishProtocol: _finishProtocol,
            numbersOnTraceProtocol: _numbersOnTraceProtocol,
            databasePath: ProtocolProvider.db.dbPath!,
            awaitingNumber: _awaitingNumber,
          ),
        );
      }
    }
  }

  //вставить строку с финишным временем из bluetooth
  Future<void> _handleProtocolAddFinishTime(
    ProtocolAddFinishTime event,
    Emitter<ProtocolState> emit,
  ) async {
    if (state is ProtocolSelectedState) {
      final int? autoFinishNumber = await ProtocolProvider.db.addFinishTime(
        finish: event.time,
        timeStamp: event.timeStamp,
        finishDelay: _finishDelay,
        substituteNumbers: _substituteNumbers,
        substituteNumbersDelay: _substituteNumbersDelay,
        number: _awaitingNumber,
      );
      _awaitingNumber = null;
      _finishProtocol = await ProtocolProvider.db.getFinishTime(
        hideManual: _hideManual,
        hideMarked: _hideMarked,
        hideNumbers: _hideNumbers,
      );
      _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      emit(
        ProtocolSelectedState(
          startProtocol: _startProtocol,
          finishProtocol: _finishProtocol,
          numbersOnTraceProtocol: _numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          autoFinishNumber: autoFinishNumber,
          awaitingNumber: _awaitingNumber,
        ),
      );
    }
  }

  //вставить строку с ручным финишным временем
  Future<void> _handleProtocolAddFinishTimeManual(
    ProtocolAddFinishTimeManual event,
    Emitter<ProtocolState> emit,
  ) async {
    if (state is ProtocolSelectedState) {
      await ProtocolProvider.db.addFinishTimeManual(event.time);
      _finishProtocol = await ProtocolProvider.db.getFinishTime(
        hideManual: _hideManual,
        hideMarked: _hideMarked,
        hideNumbers: _hideNumbers,
      );
      _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      emit(
        ProtocolSelectedState(
          startProtocol: _startProtocol,
          finishProtocol: _finishProtocol,
          numbersOnTraceProtocol: _numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: _awaitingNumber,
        ),
      );
    }
  }

  Future<void> _handleProtocolUpdateItemInfoAtStart(
    ProtocolUpdateItemInfoAtStart event,
    Emitter<ProtocolState> emit,
  ) async {
    if (state is ProtocolSelectedState) {
      await ProtocolProvider.db.updateItemInfoAtStart(event.item);
      _startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
      _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      emit(
        ProtocolSelectedState(
          startProtocol: _startProtocol,
          finishProtocol: _finishProtocol,
          numbersOnTraceProtocol: _numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: _awaitingNumber,
        ),
      );
    }
  }

  //очищает результаты старта, используется только в debug
  Future<void> _handleProtocolClearStartResultsDebug(
    ProtocolClearStartResultsDebug event,
    Emitter<ProtocolState> emit,
  ) async {
    await ProtocolProvider.db.clearStartResultsDebug();
    _startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
    _finishProtocol = await ProtocolProvider.db.getFinishTime(
      hideManual: _hideManual,
      hideMarked: _hideMarked,
      hideNumbers: _hideNumbers,
    );
    _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
    emit(
      ProtocolSelectedState(
        startProtocol: _startProtocol,
        finishProtocol: _finishProtocol,
        numbersOnTraceProtocol: _numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: _awaitingNumber,
      ),
    );
  }

  //очищает результаты финиша, используется только в debug
  Future<void> _handleProtocolClearFinishResultsDebug(
    ProtocolClearFinishResultsDebug event,
    Emitter<ProtocolState> emit,
  ) async {
    await ProtocolProvider.db.clearFinishResultsDebug();
    _startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
    _finishProtocol = await ProtocolProvider.db.getFinishTime(
      hideManual: _hideManual,
      hideMarked: _hideMarked,
      hideNumbers: _hideNumbers,
    );
    _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
    emit(
      ProtocolSelectedState(
        startProtocol: _startProtocol,
        finishProtocol: _finishProtocol,
        numbersOnTraceProtocol: _numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: _awaitingNumber,
      ),
    );
  }

  //скрыть всё в финишном протоколе
  Future<void> _handleProtocolHideAllFinishResults(
    ProtocolHideAllFinishResults event,
    Emitter<ProtocolState> emit,
  ) async {
    await ProtocolProvider.db.hideAllFinish();
    _finishProtocol = await ProtocolProvider.db.getFinishTime(
      hideManual: _hideManual,
      hideMarked: _hideMarked,
      hideNumbers: _hideNumbers,
    );
    emit(
      ProtocolSelectedState(
        startProtocol: _startProtocol,
        finishProtocol: _finishProtocol,
        numbersOnTraceProtocol: _numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: _awaitingNumber,
      ),
    );
  }

  //очистить номер в finish
  Future<void> _handleProtocolClearNumberAtFinish(
    ProtocolClearNumberAtFinish event,
    Emitter<ProtocolState> emit,
  ) async {
    await ProtocolProvider.db.clearNumberAtFinish(event.number);
    _finishProtocol = await ProtocolProvider.db.getFinishTime(
      hideManual: _hideManual,
      hideMarked: _hideMarked,
      hideNumbers: _hideNumbers,
    );
    _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
    emit(
      ProtocolSelectedState(
        startProtocol: _startProtocol,
        finishProtocol: _finishProtocol,
        numbersOnTraceProtocol: _numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: _awaitingNumber,
      ),
    );
  }

  Future<void> _handleProtocolSetDNS(
    ProtocolSetDNS event,
    Emitter<ProtocolState> emit,
  ) async {
    await ProtocolProvider.db.setDNS(event.number);
    _startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
    _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
    emit(
      ProtocolSelectedState(
        startProtocol: _startProtocol,
        finishProtocol: _finishProtocol,
        numbersOnTraceProtocol: _numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: _awaitingNumber,
      ),
    );
  }

  //ставит время финиша "DNF" для номера
  Future<void> _handleProtocolSetDNF(
    ProtocolSetDNF event,
    Emitter<ProtocolState> emit,
  ) async {
    await ProtocolProvider.db.setDNF(event.number);
    _finishProtocol = await ProtocolProvider.db.getFinishTime(
      hideManual: _hideManual,
      hideMarked: _hideMarked,
      hideNumbers: _hideNumbers,
    );
    _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
    emit(
      ProtocolSelectedState(
        startProtocol: _startProtocol,
        finishProtocol: _finishProtocol,
        numbersOnTraceProtocol: _numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: _awaitingNumber,
      ),
    );
  }

  Future<void> _handleProtocolHideFinishTime(
    ProtocolHideFinishTime event,
    Emitter<ProtocolState> emit,
  ) async {
    await ProtocolProvider.db.hideFinish(event.id);
    _finishProtocol = await ProtocolProvider.db.getFinishTime(
      hideManual: _hideManual,
      hideMarked: _hideMarked,
      hideNumbers: _hideNumbers,
    );
    emit(
      ProtocolSelectedState(
        startProtocol: _startProtocol,
        finishProtocol: _finishProtocol,
        numbersOnTraceProtocol: _numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        awaitingNumber: _awaitingNumber,
      ),
    );
  }

  //добавить номер в finish и обновить финишное время в start у данного номера
  Future<void> _handleProtocolSetNumberToFinishTime(
    ProtocolSetNumberToFinishTime event,
    Emitter<ProtocolState> emit,
  ) async {
    final update = await ProtocolProvider.db
        .addNumber(event.id, event.number, event.finishTime);
    _finishProtocol = await ProtocolProvider.db.getFinishTime(
      hideManual: _hideManual,
      hideMarked: _hideMarked,
      hideNumbers: _hideNumbers,
    );
    _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
    emit(
      ProtocolSelectedState(
        startProtocol: _startProtocol,
        finishProtocol: _finishProtocol,
        numbersOnTraceProtocol: _numbersOnTraceProtocol,
        databasePath: ProtocolProvider.db.dbPath!,
        updateFinishNumber: update,
        awaitingNumber: _awaitingNumber,
      ),
    );
  }

  Future<void> _handleProtocolGetNumbersOnTrace(
    ProtocolGetNumbersOnTrace event,
    Emitter<ProtocolState> emit,
  ) async {
    if (ProtocolProvider.db.dbPath != null) {
      _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      emit(
        ProtocolSelectedState(
          startProtocol: _startProtocol,
          finishProtocol: _finishProtocol,
          numbersOnTraceProtocol: _numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: _awaitingNumber,
        ),
      );
    }
  }

  Future<void> _handleProtocolLoadStartFromCsv(
    ProtocolLoadStartFromCsv event,
    Emitter<ProtocolState> emit,
  ) async {
    if (state is ProtocolSelectedState) {
      await _updateFromCsv(event.csv);
      _startProtocol = await ProtocolProvider.db.getAllParticipantsAtStart();
      _numbersOnTraceProtocol = await ProtocolProvider.db.getNumbersOnTrace();
      emit(
        ProtocolSelectedState(
          startProtocol: _startProtocol,
          finishProtocol: _finishProtocol,
          numbersOnTraceProtocol: _numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: _awaitingNumber,
        ),
      );
    }
  }

  Future<void> _handleProtocolShareStart(
    ProtocolShareStart event,
    Emitter<ProtocolState> emit,
  ) async {
    final result = await ProtocolProvider.db.getStartToCsv();
    final csv = mapListToCsv(result);
    if (csv != null && ProtocolProvider.db.dbPath != null) {
      final file = await saveCsv(csv, 'start', ProtocolProvider.db.dbPath!);
      if (file != null) {
        await Share.shareFiles([file.path], text: 'Стартовый протокол');
      }
    }
  }

  Future<void> _handleProtocolShareFinish(
    ProtocolShareFinish event,
    Emitter<ProtocolState> emit,
  ) async {
    final result = await ProtocolProvider.db.getFinishToCsv();
    final csv = mapListToCsv(result);
    if (csv != null && ProtocolProvider.db.dbPath != null) {
      final file = await saveCsv(csv, 'finish', ProtocolProvider.db.dbPath!);
      if (file != null) {
        await Share.shareFiles([file.path], text: 'Финишный протокол');
      }
    }
  }

  Future<void> _handleProtocolSelectAwaitingNumber(
    ProtocolSelectAwaitingNumber event,
    Emitter<ProtocolState> emit,
  ) async {
    if (state is ProtocolSelectedState) {
      _awaitingNumber = event.number;
      emit(
        ProtocolSelectedState(
          startProtocol: _startProtocol,
          finishProtocol: _finishProtocol,
          numbersOnTraceProtocol: _numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: _awaitingNumber,
        ),
      );
    }
  }

  Future<void> _handleProtocolDeselectAwaitingNumber(
    ProtocolDeselectAwaitingNumber event,
    Emitter<ProtocolState> emit,
  ) async {
    if (state is ProtocolSelectedState) {
      _awaitingNumber = null;
      emit(
        ProtocolSelectedState(
          startProtocol: _startProtocol,
          finishProtocol: _finishProtocol,
          numbersOnTraceProtocol: _numbersOnTraceProtocol,
          databasePath: ProtocolProvider.db.dbPath!,
          awaitingNumber: _awaitingNumber,
        ),
      );
    }
  }

  Future<void> _updateFromCsv(PlatformFile? csv) async {
    final List<StartItemCsv> items = await getStartList(csv);
    await ProtocolProvider.db.loadStartItem(items);
  }
}
