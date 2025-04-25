import 'package:freezed_annotation/freezed_annotation.dart';

import '../drift/app_database.dart';

part 'notification.freezed.dart';

@freezed
sealed class Notification with _$Notification {
  /// Добавление нового стартового времени
  /// если стартовое время уже присвоено другому номеру
  const factory Notification.updateStartNumber({
    required List<StartingParticipant> existedStartingParticipants,
    required int number,
    required String startTime,
  }) = NotificationUpdateStartNumber;

  /// Обновить автоматическую стартовую отсечку
  const factory Notification.updateAutomaticCorrection({
    required List<StartingParticipant> previousStarts,
    required int number,
    required String startTime,
    required DateTime timestamp,
    required int correction,
  }) = NotificationUpdateAutomaticCorrection;

  /// Изменить время финиша для номера
  const factory Notification.changeFinishTimeToNumber({
    required int finishId,
    required int number,
    required String finishTime,
    required Stage stage,
  }) = NotificationChangeFinishTimeToNumber;
}
