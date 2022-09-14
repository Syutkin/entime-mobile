// ignore_for_file: strict_raw_type

import 'package:flutter_bloc/flutter_bloc.dart';

import '../logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    if (bloc.toString() != "Instance of 'CountdownBloc'") {
      logger.d('Event: $event');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e(error);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (bloc.toString() != "Instance of 'CountdownBloc'") {
      logger.d('Transition: $transition');
    }
  }
}
