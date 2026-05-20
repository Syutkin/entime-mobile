// ignore_for_file: strict_raw_type

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/trails/bloc/trails_bloc.dart';
import '../logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    if ('$event'.contains('DatabaseEvent.emitState')) {
      logger.t('Event: DatabaseEvent.emitState');
    } else if (event is TrailsEvent) {
      event.maybeMap(
        emitTrack: (value) {
          final newTrack = value.track.copyWith(data: Uint8List(0));
          final newEvent = TrailsEvent.emitTrack(track: newTrack);
          logger.d('Event: $newEvent');
        },
        orElse: () {
          logger.d('Event: $event');
        },
      );
    } else if (bloc.toString() != "Instance of 'CountdownBloc'") {
      logger.d('Event: $event');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e('Bloc unknown error', error: error, stackTrace: stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if ('$transition'.contains('currentState: DatabaseState')) {
      logger.t('Transition: from old to new DatabaseState');
    } else if (transition.event is TrailsEvent) {
      (transition.event as TrailsEvent).maybeMap(
        emitTrack: (value) {
          final newTrack = value.track.copyWith(data: Uint8List(0));
          final newEvent = TrailsEvent.emitTrack(track: newTrack);
          final newNextState = (transition.nextState as TrailsState).whenOrNull(
            initialized: (trails, track) => TrailsState.initialized(trails: trails, track: newTrack),
          );
          final newTransition = Transition<TrailsEvent, dynamic>(
            currentState: transition.currentState,
            event: newEvent,
            nextState: newNextState,
          );
          logger.d('Transition: $newTransition');
        },
        orElse: () {
          logger.d('Transition: $transition');
        },
      );
    } else if (bloc.toString() != "Instance of 'CountdownBloc'") {
      logger.t('Transition: $transition');
    }
  }
}
