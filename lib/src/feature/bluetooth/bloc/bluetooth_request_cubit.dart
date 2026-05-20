import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/bluetooth_protocol_models.dart';
import '../model/bluetooth_protocol_types.dart';

/// Назначение Bluetooth JSON запроса внутри приложения.
enum BluetoothRequestPurpose {
  /// Загрузка настроек модуля через `load_config`.
  moduleSettingsLoad,

  /// Сохранение настроек модуля через `save_config`.
  moduleSettingsSave,
}

/// Состояние трекера исходящих Bluetooth JSON запросов.
sealed class BluetoothRequestState {
  const BluetoothRequestState();
}

/// Нет новых событий по ожидающим Bluetooth JSON запросам.
final class BluetoothRequestIdle extends BluetoothRequestState {
  const BluetoothRequestIdle();
}

/// Ожидаемый Bluetooth JSON ответ не пришел за отведенное время.
final class BluetoothRequestTimedOut extends BluetoothRequestState {
  const BluetoothRequestTimedOut(this.request);

  /// Запрос, для которого истек timeout.
  final PendingBluetoothRequest request;
}

/// Bluetooth JSON запрос, по которому приложение ожидает ответ.
final class PendingBluetoothRequest {
  const PendingBluetoothRequest({
    required this.id,
    required this.command,
    required this.purpose,
  });

  /// Числовой request id, отправленный в JSON поле `id`.
  final int id;

  /// Команда, ответ на которую ожидается.
  final BluetoothProtocolCommandType command;

  /// Локальный сценарий, который должен обработать ответ или timeout.
  final BluetoothRequestPurpose purpose;
}

final class _PendingBluetoothRequestEntry {
  const _PendingBluetoothRequestEntry({
    required this.request,
    required this.timer,
  });

  final PendingBluetoothRequest request;
  final Timer timer;
}

/// Хранит pending Bluetooth JSON запросы и завершает их по ответу или timeout.
class BluetoothRequestCubit extends Cubit<BluetoothRequestState> {
  BluetoothRequestCubit() : super(const BluetoothRequestIdle());

  final _pending = <Object, _PendingBluetoothRequestEntry>{};
  var _lastId = 0;

  /// Регистрирует новый ожидающий запрос и возвращает id для JSON поля `id`.
  int track({
    required BluetoothProtocolCommandType command,
    required BluetoothRequestPurpose purpose,
    required Duration timeout,
  }) {
    final id = ++_lastId;
    final request = PendingBluetoothRequest(
      id: id,
      command: command,
      purpose: purpose,
    );
    final timer = Timer(timeout, () {
      final entry = _pending.remove(id);
      if (entry == null) {
        return;
      }
      emit(BluetoothRequestTimedOut(entry.request));
    });
    _pending[id] = _PendingBluetoothRequestEntry(request: request, timer: timer);
    return id;
  }

  /// Завершает запрос, если ответ совпал по `id` и `cmd`.
  PendingBluetoothRequest? complete(BluetoothJsonResponse response) {
    final entry = _pending[response.id];
    if (entry == null || entry.request.command != response.command) {
      return null;
    }

    entry.timer.cancel();
    _pending.remove(response.id);
    return entry.request;
  }

  /// Проверяет, есть ли pending запрос с указанным `id`.
  bool isPending(Object? id) => _pending.containsKey(id);

  @override
  Future<void> close() {
    for (final entry in _pending.values) {
      entry.timer.cancel();
    }
    _pending.clear();
    return super.close();
  }
}
