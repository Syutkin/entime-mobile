import 'package:flutter_bloc/flutter_bloc.dart';

abstract interface class AppMessageSink {
  void show(Object message);
}

final class NoopAppMessageSink implements AppMessageSink {
  const NoopAppMessageSink();

  @override
  void show(Object message) {}
}

class AppMessageCubit extends Cubit<Object?> implements AppMessageSink {
  AppMessageCubit() : super(null);

  @override
  void show(Object message) {
    emit(message);
  }

  void clear() {
    emit(null);
  }
}
