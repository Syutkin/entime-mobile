import 'package:freezed_annotation/freezed_annotation.dart';

import 'legend.dart';

part 'start_item_csv.freezed.dart';

part 'start_item_csv.g.dart';

@freezed
class StartItemCsv with _$StartItemCsv {
  const factory StartItemCsv({
    required int number,
    required String name,
    String? category,
    String? nickname,
    String? age,
    String? team,
    String? city,
    Map<String, String>? startTimes,
  }) = _StartItemCsv;

  factory StartItemCsv.fromJson(Map<String, dynamic> cvs) =>
      _$StartItemCsvFromJson(cvs);

  factory StartItemCsv.fromMap(Map<String, dynamic> map) {
    String? category;
    late int number;
    late String name;
    String? nickname;
    String? age;
    String? team;
    String? city;
    final startTimes = <String, String>{};
    for (final key in map.keys) {
      final element = key.toLowerCase().trim();
      if (Legend.category.contains(element)) {
        category = map[key].toString();
      } else if (Legend.number.contains(element)) {
        number = map[key] as int;
      } else if (Legend.name.contains(element)) {
        name = map[key].toString();
      } else if (Legend.nickname.contains(element)) {
        nickname = map[key].toString();
      } else if (Legend.age.contains(element)) {
        age = map[key].toString();
      } else if (Legend.team.contains(element)) {
        team = map[key].toString();
      } else if (Legend.city.contains(element)) {
        city = map[key].toString();
      } else {
        startTimes[key] = map[key].toString().trim();
      }
    }

    return StartItemCsv(
      category: category,
      number: number,
      name: name,
      nickname: nickname,
      age: age,
      team: team,
      city: city,
      startTimes: startTimes,
    );
  }
}
