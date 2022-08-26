import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../../../common/utils/helper.dart';
import '../../protocol/protocol.dart';
import '../../tab/tab.dart';

part 'countdown_event.dart';
part 'countdown_state.dart';

class CountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  final ProtocolBloc protocolBloc;
  late final StreamSubscription<ProtocolState> protocolSubscription;
  final TabBloc tabBloc;
  late final StreamSubscription<AppTab> tabSubscription;

  Timer? _timer;
  List<StartItem> _participant = [];
  DateTime? _nextStartTime;
  bool _isFinished = false;

  CountdownBloc({
    required this.protocolBloc,
    required this.tabBloc,
  }) : super(CountdownInitialState()) {
    _startTimer();
    protocolSubscription = protocolBloc.stream.listen((state) async {
      // обновляет отсчёт при событии в дб при открытом окне старта
      if (state is ProtocolSelectedState && tabBloc.state == AppTab.start) {
        _nextStartTime = await _getNextStarttime(DateTime.now());
        _isFinished = false;
        await _countdown();
      }
    });
    tabSubscription = tabBloc.stream.listen((state) async {
      // обновляет отсчёт при переключении на окно старта
      if (state == AppTab.start &&
          protocolBloc.state is ProtocolSelectedState) {
        _nextStartTime = await _getNextStarttime(DateTime.now());
        _isFinished = false;
        await _countdown();
      }
    });
    on<Tick>((event, emit) async {
      _nextStartTime == null
          ? emit(CountdownWorkingState(event.text, null))
          : emit(
              CountdownWorkingState(
                event.text,
                DateFormat('HH:mm:ss').format(_nextStartTime!),
              ),
            );
    });
  }

  @override
  Future<void> close() {
    protocolSubscription.cancel();
    tabSubscription.cancel();
    _timer?.cancel();
    return super.close();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _countdown();
    });
  }

  Future<void> _countdown() async {
    if (protocolBloc.state is ProtocolSelectedState) {
      final now = DateTime.now();
      final nextStartTime = _nextStartTime;
      if (nextStartTime != null) {
        if (nextStartTime.isAfter(now)) {
          add(Tick(_countdownDuration(nextStartTime.difference(now))));
        } else {
          if (nextStartTime
              .isAfter(now.subtract(const Duration(seconds: 10)))) {
            add(const Tick('GO'));
          } else {
            _nextStartTime = null;
          }
        }
      } else {
        if (!_isFinished) {
          _nextStartTime = await _getNextStarttime(now);
          if (_nextStartTime == null) {
            _isFinished = true;
            add(const Tick(''));
          }
        }
      }
    }
  }

  Future<DateTime?> _getNextStarttime(DateTime time) async {
    _participant = await ProtocolProvider.db
        .getNextParticipants(DateFormat('HH:mm:ss').format(time));
    if (_participant.isNotEmpty && _participant.first.starttime != null) {
      return strTimeToDateTime(_participant.first.starttime!);
    } else {
      return null;
    }
  }

  String _countdownDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    final String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (duration.inHours > 0) {
      return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
    } else if (duration.inMinutes > 0) {
      return '$twoDigitMinutes:$twoDigitSeconds';
    } else if (duration.inSeconds > 0) {
      return '${duration.inSeconds}';
    } else {
      return 'GO';
    }
  }
}
