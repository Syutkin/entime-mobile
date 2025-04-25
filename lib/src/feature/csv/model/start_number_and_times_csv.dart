import 'package:freezed_annotation/freezed_annotation.dart';

import 'legend.dart';

part 'start_number_and_times_csv.freezed.dart';

part 'start_number_and_times_csv.g.dart';

@freezed
abstract class StartNumberAndTimesCsv with _$StartNumberAndTimesCsv {
  const factory StartNumberAndTimesCsv({required int number, Map<String, String>? startTimes}) =
      _StartNumberAndTimesCsv;

  factory StartNumberAndTimesCsv.fromJson(Map<String, dynamic> cvs) => _$StartNumberAndTimesCsvFromJson(cvs);

  factory StartNumberAndTimesCsv.fromMap(Map<String, dynamic> map) {
    late int number;
    final startTimes = <String, String>{};
    for (final key in map.keys) {
      final element = key.toLowerCase().trim();
      if (Legend.number.contains(element)) {
        number = map[key] as int;
      } else {
        startTimes[key] = map[key].toString().trim();
      }
    }

    return StartNumberAndTimesCsv(number: number, startTimes: startTimes);
  }
}
