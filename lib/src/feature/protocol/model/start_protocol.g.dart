// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_protocol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartItemCsvImpl _$$StartItemCsvImplFromJson(Map<String, dynamic> json) =>
    _$StartItemCsvImpl(
      category: json['category'] as String?,
      number: (json['number'] as num).toInt(),
      name: json['name'] as String?,
      nickname: json['nickname'] as String?,
      age: json['age'] as String?,
      team: json['team'] as String?,
      city: json['city'] as String?,
      starttime: json['starttime'] as String?,
    );

Map<String, dynamic> _$$StartItemCsvImplToJson(_$StartItemCsvImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'number': instance.number,
      'name': instance.name,
      'nickname': instance.nickname,
      'age': instance.age,
      'team': instance.team,
      'city': instance.city,
      'starttime': instance.starttime,
    };
