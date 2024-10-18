import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../constants/date_time_formats.dart';
import '../../audio/audio.dart';
import '../logic/countdown.dart';
import '../model/tick.dart';

part 'countdown_bloc.freezed.dart';
part 'countdown_event.dart';
part 'countdown_state.dart';

class CountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  final IAudioController _audioController;
  final CountdownAtStart _countdown;
  final int _stageId;

  CountdownBloc({
    required IAudioController audioController,
    required CountdownAtStart countdown,
    required int stageId,
  })  : _audioController = audioController,
        _countdown = countdown,
        _stageId = stageId,
        super(const CountdownState.initial()) {
    if (stageId > 0) {
      _countdown.start(_stageId);
    }
    _countdown.value.listen((value) {
      add(CountdownEvent.tick(value));
    });

    on<CountdownEvent>(transformer: sequential(), (event, emit) {
      event.map(
        start: (event) async {
          await _countdown.start(event.stageId);
          // _nextStartTime = await _getNextStarttime(DateTime.now());
          // _isFinished = false;
          // await _countdown(stageId: stageId);
        },
        tick: (event) {
          final nextStartTime = event.tick.nextStartTime;
          if (nextStartTime == null) {
            emit(CountdownState.working(
              text: event.tick.text,
            ));
          } else {
            emit(
              CountdownState.working(
                text: event.tick.text,
                nextStartTime:
                    DateFormat(shortTimeFormat).format(nextStartTime),
                number: event.tick.number,
              ),
            );
          }
        },
        beep: (_CountdownBeep event) {
          _audioController.beep();
        },
      );
    });
  }
}
