import 'package:freezed_annotation/freezed_annotation.dart';

part 'protocol.freezed.dart';
part 'protocol.g.dart';

/// Start time with correction
@freezed
class StartItem with _$StartItem{
  const factory StartItem({
    String? automaticstarttime,
    int? automaticcorrection,
    String? automaticphonetime,
    String? finishtime,
    required int id,
    int? manualcorrection,
    String? manualstarttime,
    String? name,
    required int number,
    String? category,
    String? nickname,
    String? age,
    String? team,
    String? city,
    String? starttime,
  }) = _StartItem;

  factory StartItem.fromJson(Map<String, Object?> json) => _$StartItemFromJson(json);
}

@freezed
class FinishItem with _$FinishItem{
  const factory FinishItem({
    required int id,
    int? number,
    required String finishtime,
    String? phonetime,
    int? set,
    int? manual,
  })= _FinishItem;

  factory FinishItem.fromJson(Map<String, Object?> json) => _$FinishItemFromJson(json);
}
