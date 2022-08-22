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

  // Map<String, dynamic> toMap() => {
  //       'category': category,
  //       'number': number,
  //       'name': name,
  //       'nickname': nickname,
  //       'age': age,
  //       'team': team,
  //       'city': city,
  //       'starttime': starttime,
  //     };
  //
  // factory StartItemCsv.fromMap(Map<String, dynamic> cvs) => StartItemCsv(
  //   category: cvs['category']?.toString(),
  //   number: cvs['number'] is int ? cvs['number'] : 0,
  //   name: cvs['name']?.toString(),
  //   nickname: cvs['nickname']?.toString(),
  //   age: cvs['age']?.toString(),
  //   team: cvs['team']?.toString(),
  //   city: cvs['city']?.toString(),
  //   starttime: cvs['starttime']?.toString(),
  // );
  //
  // @override
  // String toString() =>
  //     'StartItemCsv { category: $category, number: $number, name: $name, nickname: $nickname, age: $age, team: $team, city: $city, starttime: $starttime, }';
}
