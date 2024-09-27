import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../common/utils/consts.dart';
import '../logic/countdown.dart';

part 'countdown_bloc.freezed.dart';
part 'countdown_event.dart';
part 'countdown_state.dart';

class CountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  final CountdownAtStart _countdown;

  CountdownBloc({
    required CountdownAtStart countdown,
  })  : _countdown = countdown,
        super(const CountdownState.initial()) {
    _countdown.value.listen((value) {
      add(
        CountdownEvent.tick(
          text: value.text,
          nextStartTime: value.nextStartTime,
        ),
      );
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
          final nextStartTime = event.nextStartTime;
          if (nextStartTime == null) {
            emit(CountdownState.working(text: event.text));
          } else {
            emit(
              CountdownState.working(
                text: event.text,
                nextStartTime: DateFormat(shortTimeFormat).format(nextStartTime),
              ),
            );
          }
        },
      );
    });
  }
}
