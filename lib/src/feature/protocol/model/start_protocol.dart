import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_protocol.freezed.dart';
part 'start_protocol.g.dart';

@freezed
class StartItemCsv with _$StartItemCsv{
  const factory StartItemCsv({
    String? category,
    required int number,
    String? name,
    String? nickname,
    String? age,
    String? team,
    String? city,
    String? starttime,
  }) = _StartItemCsv;

  factory StartItemCsv.fromJson(Map<String, dynamic> cvs) => _$StartItemCsvFromJson(cvs);
}
