import 'package:freezed_annotation/freezed_annotation.dart';

import '../drift/app_database.dart';

part 'notification.freezed.dart';

@freezed
class Notification with _$Notification {
  const factory Notification.updateNumber({
    required List<StartingParticipant> existedStartingParticipants,
    required int number,
    required String startTime,
  }) = _UpdateNumber;

  const factory Notification.updateAutomaticCorrection({
    required List<StartingParticipant> previousStarts,
    required int number,
    required String startTime,
    required DateTime timestamp,
    required int correction,
  }) = _UpdateAutomaticCorrection;
}
