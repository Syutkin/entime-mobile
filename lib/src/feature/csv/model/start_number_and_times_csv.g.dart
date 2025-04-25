// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_number_and_times_csv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StartNumberAndTimesCsv _$StartNumberAndTimesCsvFromJson(
  Map<String, dynamic> json,
) => _StartNumberAndTimesCsv(
  number: (json['number'] as num).toInt(),
  startTimes: (json['startTimes'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
);

Map<String, dynamic> _$StartNumberAndTimesCsvToJson(
  _StartNumberAndTimesCsv instance,
) => <String, dynamic>{
  'number': instance.number,
  'startTimes': instance.startTimes,
};
