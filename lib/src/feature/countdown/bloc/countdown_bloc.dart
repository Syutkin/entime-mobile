import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../common/utils/helper.dart';
import '../../protocol/protocol.dart';
import '../../tab/tab.dart';

part 'countdown_bloc.freezed.dart';
part 'countdown_event.dart';
part 'countdown_state.dart';

class CountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  final IProtocolProvider protocolProvider;
  late final StreamSubscription<ProtocolState> protocolSubscription;
  late final StreamSubscription<AppTab> tabSubscription;

  Timer? _timer;
  List<StartItem> _participant = [];
  DateTime? _nextStartTime;
  bool _isFinished = false;

  CountdownBloc({
    required this.protocolProvider,
  }) : super(const CountdownInitialState()) {
    _startTimer();

    on<CountdownEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        reload: (event) async {
          _nextStartTime = await _getNextStarttime(DateTime.now());
          _isFinished = false;
          await _countdown();
        },
        tick: (event) {
          final nextStartTime = _nextStartTime;
          nextStartTime == null
              ? emit(CountdownWorkingState(text: event.text))
              : emit(
                  CountdownWorkingState(
                    text: event.text,
                    nextStartTime: DateFormat('HH:mm:ss').format(nextStartTime),
                  ),
                );
        },
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
    await protocolProvider.state.value.whenOrNull(
      selected: (updated) async {
        final now = DateTime.now();
        final nextStartTime = _nextStartTime;
        if (nextStartTime != null) {
          if (nextStartTime.isAfter(now)) {
            add(
              TickEvent(
                text: _formatDuration(nextStartTime.difference(now)),
              ),
            );
          } else {
            if (nextStartTime
                .isAfter(now.subtract(const Duration(seconds: 10)))) {
              add(const TickEvent(text: 'GO'));
            } else {
              _nextStartTime = null;
            }
          }
        } else {
          if (!_isFinished) {
            _nextStartTime = await _getNextStarttime(now);
            if (_nextStartTime == null) {
              _isFinished = true;
              add(const TickEvent(text: ''));
            }
          }
        }
      },
    );
  }

  Future<DateTime?> _getNextStarttime(DateTime time) async {
    _participant = await protocolProvider
        .getNextParticipants(DateFormat('HH:mm:ss').format(time));
    return _participant.isNotEmpty && _participant.first.starttime != null
        ? strTimeToDateTime(_participant.first.starttime!)
        : null;
  }

  String _formatDuration(Duration duration) {
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
