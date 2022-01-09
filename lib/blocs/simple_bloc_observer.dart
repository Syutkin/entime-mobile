import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:entime/utils/logger.dart';

class SimpleBlocObserver extends BlocObserver {
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
