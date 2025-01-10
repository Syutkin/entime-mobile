// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_item_csv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartItemCsvImpl _$$StartItemCsvImplFromJson(Map<String, dynamic> json) =>
    _$StartItemCsvImpl(
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
      category: json['category'] as String?,
      nickname: json['nickname'] as String?,
      birthday: json['birthday'] as String?,
      team: json['team'] as String?,
      city: json['city'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      comment: json['comment'] as String?,
      startTimes: (json['startTimes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$StartItemCsvImplToJson(_$StartItemCsvImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'category': instance.category,
      'nickname': instance.nickname,
      'birthday': instance.birthday,
      'team': instance.team,
      'city': instance.city,
      'phone': instance.phone,
      'email': instance.email,
      'comment': instance.comment,
      'startTimes': instance.startTimes,
    };
