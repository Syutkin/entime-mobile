import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_time.freezed.dart';

@freezed
class StartTime with _$StartTime {
  const factory StartTime(
    String time,
    int number,
  ) = _StartTime;
}
