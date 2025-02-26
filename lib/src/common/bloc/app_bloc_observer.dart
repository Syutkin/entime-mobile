// ignore_for_file: strict_raw_type

import 'package:flutter_bloc/flutter_bloc.dart';

import '../logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    if ('$event'.contains('DatabaseEvent.emitState')) {
      logger.t('Event: DatabaseEvent.emitState');
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
    } else if (bloc.toString() != "Instance of 'CountdownBloc'") {
      logger.t('Transition: $transition');
    }
  }
}
