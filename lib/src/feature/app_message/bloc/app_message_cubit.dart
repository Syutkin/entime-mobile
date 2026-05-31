import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/app_message.dart';

abstract interface class AppMessageSink {
  void show(AppMessage message);
}

final class NoopAppMessageSink implements AppMessageSink {
  const NoopAppMessageSink();

  @override
  void show(AppMessage message) {}
}

class AppMessageCubit extends Cubit<AppMessage?> implements AppMessageSink {
  AppMessageCubit() : super(null);

  @override
  void show(AppMessage message) {
    emit(message);
  }

  void clear() {
    emit(null);
  }
}
