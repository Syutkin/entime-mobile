// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocol_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartItemImpl _$$StartItemImplFromJson(Map<String, dynamic> json) =>
    _$StartItemImpl(
      automaticstarttime: json['automaticstarttime'] as String?,
      automaticcorrection: (json['automaticcorrection'] as num?)?.toInt(),
      automaticphonetime: json['automaticphonetime'] as String?,
      finishtime: json['finishtime'] as String?,
      id: (json['id'] as num).toInt(),
      manualcorrection: (json['manualcorrection'] as num?)?.toInt(),
      manualstarttime: json['manualstarttime'] as String?,
      name: json['name'] as String?,
      number: (json['number'] as num).toInt(),
      category: json['category'] as String?,
      nickname: json['nickname'] as String?,
      age: json['age'] as String?,
      team: json['team'] as String?,
      city: json['city'] as String?,
      starttime: json['starttime'] as String?,
    );

Map<String, dynamic> _$$StartItemImplToJson(_$StartItemImpl instance) =>
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

_$FinishItemImpl _$$FinishItemImplFromJson(Map<String, dynamic> json) =>
    _$FinishItemImpl(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num?)?.toInt(),
      finishtime: json['finishtime'] as String,
      phonetime: json['phonetime'] as String?,
      set: (json['set'] as num?)?.toInt(),
      manual: (json['manual'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FinishItemImplToJson(_$FinishItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'finishtime': instance.finishtime,
      'phonetime': instance.phonetime,
      'set': instance.set,
      'manual': instance.manual,
    };
