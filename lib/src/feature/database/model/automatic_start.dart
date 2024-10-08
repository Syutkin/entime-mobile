import 'package:freezed_annotation/freezed_annotation.dart';

part 'automatic_start.freezed.dart';

@unfreezed
class AutomaticStart with _$AutomaticStart {
  factory AutomaticStart(
    final String time,
    final int correction,
    final DateTime timeStamp, {
    @Default(false) bool updating,
  }) = _AutomaticStart;
}
