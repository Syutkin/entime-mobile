import 'package:freezed_annotation/freezed_annotation.dart';

part 'dbstate.freezed.dart';
part 'dbstate.g.dart';

@freezed
class DBState with _$DBState {
  const factory DBState.notSelected() = _DBStateNotSelected;
  const factory DBState.selected({
    @Default(false) bool updated,
  }) = _DBStateSelected;

  factory DBState.fromJson(Map<String, dynamic> json) =>
      _$DBStateFromJson(json);
}
