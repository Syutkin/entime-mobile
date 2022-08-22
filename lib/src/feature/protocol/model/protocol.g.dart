// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartItem _$$_StartItemFromJson(Map<String, dynamic> json) => _$_StartItem(
      automaticstarttime: json['automaticstarttime'] as String?,
      automaticcorrection: json['automaticcorrection'] as int?,
      automaticphonetime: json['automaticphonetime'] as String?,
      finishtime: json['finishtime'] as String?,
      id: json['id'] as int,
      manualcorrection: json['manualcorrection'] as int?,
      manualstarttime: json['manualstarttime'] as String?,
      name: json['name'] as String?,
      number: json['number'] as int,
      category: json['category'] as String?,
      nickname: json['nickname'] as String?,
      age: json['age'] as String?,
      team: json['team'] as String?,
      city: json['city'] as String?,
      starttime: json['starttime'] as String?,
    );

Map<String, dynamic> _$$_StartItemToJson(_$_StartItem instance) =>
    <String, dynamic>{
      'automaticstarttime': instance.automaticstarttime,
      'automaticcorrection': instance.automaticcorrection,
      'automaticphonetime': instance.automaticphonetime,
      'finishtime': instance.finishtime,
      'id': instance.id,
      'manualcorrection': instance.manualcorrection,
      'manualstarttime': instance.manualstarttime,
      'name': instance.name,
      'number': instance.number,
      'category': instance.category,
      'nickname': instance.nickname,
      'age': instance.age,
      'team': instance.team,
      'city': instance.city,
      'starttime': instance.starttime,
    };

_$_FinishItem _$$_FinishItemFromJson(Map<String, dynamic> json) =>
    _$_FinishItem(
      id: json['id'] as int,
      number: json['number'] as int?,
      finishtime: json['finishtime'] as String,
      phonetime: json['phonetime'] as String?,
      set: json['set'] as int?,
      manual: json['manual'] as int?,
    );

Map<String, dynamic> _$$_FinishItemToJson(_$_FinishItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'finishtime': instance.finishtime,
      'phonetime': instance.phonetime,
      'set': instance.set,
      'manual': instance.manual,
    };
