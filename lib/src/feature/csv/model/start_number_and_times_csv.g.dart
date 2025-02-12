// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_number_and_times_csv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartNumberAndTimesCsvImpl _$$StartNumberAndTimesCsvImplFromJson(
  Map<String, dynamic> json,
) => _$StartNumberAndTimesCsvImpl(
  number: (json['number'] as num).toInt(),
  startTimes: (json['startTimes'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
);

Map<String, dynamic> _$$StartNumberAndTimesCsvImplToJson(
  _$StartNumberAndTimesCsvImpl instance,
) => <String, dynamic>{
  'number': instance.number,
  'startTimes': instance.startTimes,
};
