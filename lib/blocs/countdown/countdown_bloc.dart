import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:intl/intl.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/data_providers/data/protocol_provider.dart';
import 'package:entime/models/models.dart';
import 'package:entime/utils/helper.dart';

part 'countdown_event.dart';

part 'countdown_state.dart';

class CountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  late final ProtocolBloc protocolBloc;
  late final StreamSubscription protocolSubscription;
  late final TabBloc tabBloc;
  late final StreamSubscription tabSubscription;
  late final SettingsBloc settingsBloc;
  late final StreamSubscription settingsSubscription;

  Timer? _timer;
  late List<StartItem> _participant;
  DateTime? _nextStartTime;
  bool isFinished = false;

  CountdownBloc({
    required this.protocolBloc,
    required this.tabBloc,
    required this.settingsBloc,
  }) : super(CountdownInitialState()) {
    protocolSubscription = protocolBloc.stream.listen((state) async {
      // обновляет отсчёт при событии в дб при открытом окне старта
      if (state is ProtocolSelectedState && tabBloc.state == AppTab.start) {
        _nextStartTime = await _getNextStarttime(DateTime.now());
        isFinished = false;
        await _countdown();
      }
    });
    tabSubscription = tabBloc.stream.listen((state) async {
      // обновляет отсчёт при переключении на окно старта
      if (state == AppTab.start) {
        _nextStartTime = await _getNextStarttime(DateTime.now());
        isFinished = false;
        await _countdown();
      }
    });
    settingsSubscription = settingsBloc.stream.listen((state) {
      if ((_timer == null || !_timer!.isActive) && state.countdown) {
        _startTimer();
      } else {
        _timer?.cancel();
      }
    });
    if (settingsBloc.state.countdown) {
      _startTimer();
    }
  }

  @override
  Future<void> close() {
    protocolSubscription.cancel();
    tabSubscription.cancel();
    settingsSubscription.cancel();
    _timer?.cancel();
    return super.close();
  }

  @override
  Stream<CountdownState> mapEventToState(
    CountdownEvent event,
  ) async* {
    if (event is Tick) {
      yield CountdownWorkingState(event.text);
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _countdown();
    });
  }

  Future<void> _countdown() async {
    if (protocolBloc.state is ProtocolSelectedState) {
      var now = DateTime.now();
      if (_nextStartTime != null) {
        if (_nextStartTime!.isAfter(now)) {
          add(Tick(_countdownDuration(_nextStartTime!.difference(now))));
        } else {
          if (_nextStartTime!.isAfter(now.subtract(const Duration(seconds: 10)))) {
            add(const Tick('GO'));
          } else {
            _nextStartTime = null;
          }
        }
      } else {
        if (!isFinished) {
          _nextStartTime = await _getNextStarttime(now);
          if (_nextStartTime == null) {
            isFinished = true;
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
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
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
