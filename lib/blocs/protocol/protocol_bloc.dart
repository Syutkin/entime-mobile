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
  late final StreamSubscription settingsSubscription;

  final _protocol = ProtocolProvider();

  Event? _event;
  Stage? _stage;

  List<ParticipantsAtStartResult> _startProtocol = [];
  List<Finish> _finishProtocol = [];
  List<int> _numbersOnTraceProtocol = [];

  ProtocolBloc({
    required this.settingsBloc,
  }) : super(ProtocolNotSelectedState()) {
    settingsSubscription = settingsBloc.stream.listen((state) {
      // условия чтобы не дёргать запросами sqlite базу при каждом изменении настроек
      if (_hideMarked != state.hideMarked ||
          _hideNumbers != state.hideNumbers ||
          _hideManual != state.hideManual) {
        _hideMarked = state.hideMarked;
        _hideNumbers = state.hideNumbers;
        _hideManual = state.hideManual;
        _file = state.recentFile;
        add(SelectProtocol(_file));
        logger.v(
            'hideMarked: $_hideMarked, hideNumbers: $_hideNumbers, hideManual: $_hideManual, ');
      }
      if (_file != state.recentFile) {
        _file = state.recentFile;
        add(SelectProtocol(_file!));
      }
      _finishDelay = state.finishDelay;
      _substituteNumbers = state.substituteNumbers;
      _substituteNumbersDelay = state.substituteNumbersDelay;
    });

    // on<DeselectProtocol>((event, emit) => _handleDeselectProtocol(event, emit));
    on<SelectEvent>((event, emit) => _handleSelectEvent(event, emit));
    on<SelectStage>((event, emit) => _handleSelectStage(event, emit));
    // on<SelectProtocol>((event, emit) => _handleSelectProtocol(event, emit));
    on<ProtocolAddStartNumber>(
        (event, emit) => _handleProtocolAddStartNumber(event, emit));
    on<ProtocolUpdateAutomaticCorrection>(
        (event, emit) => _handleProtocolUpdateAutomaticCorrection(event, emit));
    on<ProtocolUpdateManualStartTime>(
        (event, emit) => _handleProtocolUpdateManualStartTime(event, emit));
    on<ProtocolAddFinishTime>(
        (event, emit) => _handleProtocolAddFinishTime(event, emit));
    on<ProtocolAddFinishTimeManual>(
        (event, emit) => _handleProtocolAddFinishTimeManual(event, emit));
    on<ProtocolUpdateItemInfoAtStart>(
        (event, emit) => _handleProtocolUpdateItemInfoAtStart(event, emit));
    on<ProtocolClearStartResultsDebug>(
        (event, emit) => _handleProtocolClearStartResultsDebug(event, emit));
    on<ProtocolClearFinishResultsDebug>(
        (event, emit) => _handleProtocolClearFinishResultsDebug(event, emit));
    on<ProtocolHideAllFinishResults>(
        (event, emit) => _handleProtocolHideAllFinishResults(event, emit));
    on<ProtocolClearNumberAtFinish>(
        (event, emit) => _handleProtocolClearNumberAtFinish(event, emit));
    on<ProtocolSetDNS>((event, emit) => _handleProtocolSetDNS(event, emit));
    on<ProtocolSetDNF>((event, emit) => _handleProtocolSetDNF(event, emit));
    on<ProtocolHideFinishTime>(
        (event, emit) => _handleProtocolHideFinishTime(event, emit));
    on<ProtocolSetNumberToFinishTime>(
        (event, emit) => _handleProtocolSetNumberToFinishTime(event, emit));
    on<ProtocolGetNumbersOnTrace>(
        (event, emit) => _handleProtocolGetNumbersOnTrace(event, emit));
    on<ProtocolLoadStartFromCsv>(
        (event, emit) => _handleProtocolLoadStartFromCsv(event, emit));
    on<ProtocolShareStart>(
        (event, emit) => _handleProtocolShareStart(event, emit));
    on<ProtocolShareFinish>(
        (event, emit) => _handleProtocolShareFinish(event, emit));
    on<ProtocolSelectAwaitingNumber>(
        (event, emit) => _handleProtocolSelectAwaitingNumber(event, emit));
    on<ProtocolDeselectAwaitingNumber>(
        (event, emit) => _handleProtocolDeselectAwaitingNumber(event, emit));
  }

  @override
  Future<void> close() {
    // ProtocolProvider.db.close();
    settingsSubscription.cancel();
    return super.close();
  }

  // void _handleSelectProtocol(
  //     SelectProtocol event, Emitter<ProtocolState> emit) async {
  //   if (event.file != null && event.file!.isNotEmpty) {
  //     await ProtocolProvider.db.setDbPath(event.file);
  //     // _startProtocol = await ProtocolProvider().getAllParticipantsAtStart();
  //     _startProtocol = await _protocol.participantsAtStart(1).get();
  //     _finishProtocol = await ProtocolProvider.db.getFinishTime(
  //         hideManual: _hideManual,
  //         hideMarked: _hideMarked,
  //         hideNumbers: _hideNumbers);
  //     _updateNumbersOnTraceProtocol();
  //     settingsBloc.add(SetStringValueEvent(recentFile: event.file));
  //     emit(_protocolSelectedState());
  //     logger.i('DatabaseConnect -> selected ${event.file}');
  //   } else {
  //     add(DeselectProtocol());
  //     logger.i('DatabaseConnect -> no file selected');
  //   }
  // }

  // void _handleDeselectProtocol(
  //     DeselectProtocol event, Emitter<ProtocolState> emit) async {
  //   await ProtocolProvider.db.setDbPath(null);
  //   settingsBloc.add(const SetStringValueEvent(recentFile: ''));
  //   emit(ProtocolNotSelectedState());
  // }

  void _handleSelectEvent(
      SelectEvent event, Emitter<ProtocolState> emit) async {
    _event = await _protocol.event(event.eventId).getSingle();
    if (_event != null) {
      emit(ProtocolSelectedEventState(event: _event!));
    }
  }

  void _handleSelectStage(
      SelectStage event, Emitter<ProtocolState> emit) async {
    _stage = await _protocol.stage(event.stageId).getSingle();
    _updateStartProtocol();
    _updateFinishProtocol();
    _updateNumbersOnTraceProtocol();
    // settingsBloc.add(SetStringValueEvent(recentFile: event.file));
    emit(_protocolSelectedState());
    // logger.i('DatabaseConnect -> selected ${event.file}');
  }

  // добавляет/заменяет номер и стартовое время в start
  void _handleProtocolAddStartNumber(
      ProtocolAddStartNumber event, Emitter<ProtocolState> emit) async {
    if (state is ProtocolSelectedState) {
      List<StartItem>? previousStart = await ProtocolProvider.db.addStartNumber(
        number: event.startTime.number,
        time: event.startTime.time,
        forceAdd: event.forceAdd,
      );

      if (previousStart == null) {
        _updateStartProtocol();
        _updateNumbersOnTraceProtocol();
      }
      emit(_protocolSelectedState(
        previousStart: previousStart,
        startTime: event.startTime,
      ));
    }
  }

  // обновляет поправку
  void _handleProtocolUpdateAutomaticCorrection(
      ProtocolUpdateAutomaticCorrection event,
      Emitter<ProtocolState> emit) async {
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
        _updateStartProtocol();
      } else {
        event.automaticStart.updating = true;
      }
      emit(_protocolSelectedState(
        automaticStart: event.automaticStart,
        previousStart: previousStart,
      ));
    }
  }

  void _handleProtocolUpdateManualStartTime(
      ProtocolUpdateManualStartTime event, Emitter<ProtocolState> emit) async {
    if (state is ProtocolSelectedState) {
      if (await ProtocolProvider.db.updateManualStartTime(event.time) > 0) {
        _updateStartProtocol();
        emit(_protocolSelectedState());
      }
    }
  }

  //вставить строку с финишным временем из bluetooth
  void _handleProtocolAddFinishTime(
      ProtocolAddFinishTime event, Emitter<ProtocolState> emit) async {
    if (state is ProtocolSelectedState) {
      int? autoFinishNumber = await ProtocolProvider.db.addFinishTime(
        finish: event.time,
        timeStamp: event.timeStamp,
        finishDelay: _finishDelay,
        substituteNumbers: _substituteNumbers,
        substituteNumbersDelay: _substituteNumbersDelay,
        number: _awaitingNumber,
      );
      _awaitingNumber = null;
      _updateFinishProtocol();
      _updateNumbersOnTraceProtocol();
      emit(_protocolSelectedState(
        autoFinishNumber: autoFinishNumber,
      ));
    }
  }

  //вставить строку с ручным финишным временем
  void _handleProtocolAddFinishTimeManual(
      ProtocolAddFinishTimeManual event, Emitter<ProtocolState> emit) async {
    if (state is ProtocolSelectedState) {
      await ProtocolProvider.db.addFinishTimeManual(event.time);
      _updateFinishProtocol();
      _updateNumbersOnTraceProtocol();
      emit(_protocolSelectedState());
    }
  }

  void _handleProtocolUpdateItemInfoAtStart(
      ProtocolUpdateItemInfoAtStart event, Emitter<ProtocolState> emit) async {
    if (state is ProtocolSelectedState) {
      await ProtocolProvider.db.updateItemInfoAtStart(event.item);
      _updateStartProtocol();
      _updateNumbersOnTraceProtocol();
      emit(_protocolSelectedState());
    }
  }

  //очищает результаты старта, используется только в debug
  void _handleProtocolClearStartResultsDebug(
      ProtocolClearStartResultsDebug event, Emitter<ProtocolState> emit) async {
    await ProtocolProvider.db.clearStartResultsDebug();
    _updateStartProtocol();
    _updateFinishProtocol();
    _updateNumbersOnTraceProtocol();
    emit(_protocolSelectedState());
  }

  //очищает результаты финиша, используется только в debug
  void _handleProtocolClearFinishResultsDebug(
      ProtocolClearFinishResultsDebug event,
      Emitter<ProtocolState> emit) async {
    await ProtocolProvider.db.clearFinishResultsDebug();
    _updateStartProtocol();
    _updateFinishProtocol();
    _updateNumbersOnTraceProtocol();
    emit(_protocolSelectedState());
  }

  //скрыть всё в финишном протоколе
  void _handleProtocolHideAllFinishResults(
      ProtocolHideAllFinishResults event, Emitter<ProtocolState> emit) async {
    await ProtocolProvider.db.hideAllFinish();
    _updateFinishProtocol();
    emit(_protocolSelectedState());
  }

  //очистить номер в finish
  void _handleProtocolClearNumberAtFinish(
      ProtocolClearNumberAtFinish event, Emitter<ProtocolState> emit) async {
    await ProtocolProvider.db.clearNumberAtFinish(event.number);
    _updateFinishProtocol();
    _updateNumbersOnTraceProtocol();
    emit(_protocolSelectedState());
  }

  void _handleProtocolSetDNS(
      ProtocolSetDNS event, Emitter<ProtocolState> emit) async {
    await ProtocolProvider.db.setDNS(event.number);
    _updateStartProtocol();
    _updateNumbersOnTraceProtocol();
    emit(_protocolSelectedState());
  }

  //ставит время финиша "DNF" для номера
  void _handleProtocolSetDNF(
      ProtocolSetDNF event, Emitter<ProtocolState> emit) async {
    await ProtocolProvider.db.setDNF(event.number);
    _updateFinishProtocol();
    _updateNumbersOnTraceProtocol();
    emit(_protocolSelectedState());
  }

  void _handleProtocolHideFinishTime(
      ProtocolHideFinishTime event, Emitter<ProtocolState> emit) async {
    await ProtocolProvider.db.hideFinish(event.id);
    _updateFinishProtocol();
    emit(_protocolSelectedState());
  }

  //добавить номер в finish и обновить финишное время в start у данного номера
  void _handleProtocolSetNumberToFinishTime(
      ProtocolSetNumberToFinishTime event, Emitter<ProtocolState> emit) async {
    var update = await ProtocolProvider.db
        .addNumber(event.id, event.number, event.finishTime);
    _updateFinishProtocol();
    _updateNumbersOnTraceProtocol();
    emit(_protocolSelectedState(
      updateFinishNumber: update,
    ));
  }

  void _handleProtocolGetNumbersOnTrace(
      ProtocolGetNumbersOnTrace event, Emitter<ProtocolState> emit) async {
    _updateNumbersOnTraceProtocol();
    emit(_protocolSelectedState());
  }

  void _handleProtocolLoadStartFromCsv(
      ProtocolLoadStartFromCsv event, Emitter<ProtocolState> emit) async {
    if (state is ProtocolSelectedState) {
      List<StartItemCsv> items = await getStartList();
      await ProtocolProvider.db.loadStartItem(items);
      _updateStartProtocol();
      _updateNumbersOnTraceProtocol();
      emit(_protocolSelectedState());
    }
  }

  void _handleProtocolShareStart(
      ProtocolShareStart event, Emitter<ProtocolState> emit) async {
    if (_event?.id != null && _stage?.id != null) {
      var result = _protocol.startResultsForExport(_stage!.id);
      var csv = mapListToCsv(result as List<Map<String, dynamic>>);
      if (csv != null) {
        var path = await saveCsv(
            csv, '${_event?.name ?? ""}-${_stage?.name ?? ""}-start');
        if (path != null) {
          await Share.shareFiles([path], text: 'Стартовый протокол');
        }
      }
    }
  }

  void _handleProtocolShareFinish(
      ProtocolShareFinish event, Emitter<ProtocolState> emit) async {
    if (_event?.id != null && _stage?.id != null) {
      var result = _protocol.finishResultsForExport(_stage!.id);
      var csv = mapListToCsv(result as List<Map<String, dynamic>>);
      if (csv != null) {
        var path = await saveCsv(
            csv, '${_event?.name ?? ""}-${_stage?.name ?? ""}-finish');
        if (path != null) {
          await Share.shareFiles([path], text: 'Финишный протокол');
        }
      }
    }
  }

  void _handleProtocolSelectAwaitingNumber(
      ProtocolSelectAwaitingNumber event, Emitter<ProtocolState> emit) async {
    if (state is ProtocolSelectedState) {
      _awaitingNumber = event.number;
      emit(_protocolSelectedState());
    }
  }

  void _handleProtocolDeselectAwaitingNumber(
      ProtocolDeselectAwaitingNumber event, Emitter<ProtocolState> emit) async {
    if (state is ProtocolSelectedState) {
      _awaitingNumber = null;
      emit(_protocolSelectedState());
    }
  }

  ProtocolSelectedState _protocolSelectedState({
    List<ParticipantsAtStartResult>? startProtocol,
    List<Finish>? finishProtocol,
    List<int>? numbersOnTraceProtocol,
    int? awaitingNumber,
    Event? event,
    Stage? stage,
    bool? updateFinishNumber,
    AutomaticStart? automaticStart,
    List<StartItem>? previousStart,
    StartTime? startTime,
    int? autoFinishNumber,
  }) {
    return ProtocolSelectedState(
      startProtocol: startProtocol ?? _startProtocol,
      finishProtocol: finishProtocol ?? _finishProtocol,
      numbersOnTraceProtocol: numbersOnTraceProtocol ?? _numbersOnTraceProtocol,
      awaitingNumber: awaitingNumber ?? _awaitingNumber,
      stage: stage ?? _stage!,
      event: event ?? _event!,
      updateFinishNumber: updateFinishNumber,
      automaticStart: automaticStart,
      previousStart: previousStart,
      startTime: startTime,
      autoFinishNumber: autoFinishNumber,
    );
  }

  void _updateStartProtocol() async {
    if (_stage?.id != null) {
      _startProtocol = await _protocol.participantsAtStart(_stage!.id).get();
    }
  }

  void _updateFinishProtocol() async {
    if (_stage?.id != null) {
      // 0 - hide, 1 - show
      _finishProtocol = await _protocol
          .finishStamps(_stage!.id, _hideMarked ? 0 : 1, _hideManual ? 0 : 1)
          .get();
    }
  }

  void _updateNumbersOnTraceProtocol() async {
    if (_stage?.id != null) {
      _numbersOnTraceProtocol =
          await _protocol.numbersOnTrace(_stage!.id).get() as List<int>;
    }
  }
}
