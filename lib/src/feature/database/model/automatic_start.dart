import 'package:freezed_annotation/freezed_annotation.dart';

part 'automatic_start.freezed.dart';

@unfreezed
class AutomaticStart with _$AutomaticStart {
  factory AutomaticStart(String time, int correction, DateTime timestamp, {@Default(false) bool updating}) =
      _AutomaticStart;
}
