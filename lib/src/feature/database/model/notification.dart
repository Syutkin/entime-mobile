import 'package:freezed_annotation/freezed_annotation.dart';

import '../drift/app_database.dart';

part 'notification.freezed.dart';

@freezed
class Notification with _$Notification {
  const factory Notification.updateNumber({
    required List<GetExistedStartingParticipantsResult>
        existedStartingParticipants,
    required int number,
    required String startTime,
  }) = _UpdateNumber;
}
