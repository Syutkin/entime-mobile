import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../constants/date_time_formats.dart';
import '../../audio/audio.dart';
import '../logic/countdown_at_start.dart';
import '../model/tick.dart';

part 'countdown_bloc.freezed.dart';
part 'countdown_event.dart';
part 'countdown_state.dart';

class CountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  CountdownBloc({required this._audioController, required this._countdown, required int stageId})
    : super(const CountdownState.initial()) {
    if (stageId > 0) {
      unawaited(_countdown.start(stageId));
    }
    _ticksSubscription = _countdown.ticks.listen((value) {
      add(CountdownEvent.tick(value));
    });

    on<CountdownEvent>(transformer: sequential(), (event, emit) async {
      switch (event) {
        case _Tick():
          final nextStartTime = event.tick.nextStartTime;
          if (nextStartTime == null) {
            emit(
              CountdownState.working(
                tick: Tick(text: event.tick.text, second: event.tick.second),
              ),
            );
          } else {
            emit(CountdownState.working(tick: event.tick));
          }
        case _Start():
          await _countdown.start(event.stageId);
        case _Beep():
          await _audioController.beep();
        case _CallParticipant():
          await _audioController.callParticipant(
            time: DateFormat(shortTimeFormat).format(DateTime.now()),
            stageId: event.stageId,
          );
        case _Stop():
          _countdown.stop();
          emit(const CountdownState.initial());
      }
    });
  }

  @override
  Future<void> close() async {
    await _ticksSubscription.cancel();
    return super.close();
  }

  final IAudioController _audioController;
  final ICountdownAtStart _countdown;
  late final StreamSubscription<Tick> _ticksSubscription;
}
