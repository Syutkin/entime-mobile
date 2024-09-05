// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogImpl _$$LogImplFromJson(Map<String, dynamic> json) => _$LogImpl(
      id: (json['id'] as num).toInt(),
      level: json['level'] as String,
      timeStamp: json['timeStamp'] as String,
      source: json['source'] as String,
      direction: json['direction'] as String?,
      rawData: json['rawData'] as String,
    );

Map<String, dynamic> _$$LogImplToJson(_$LogImpl instance) => <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'timeStamp': instance.timeStamp,
      'source': instance.source,
      'direction': instance.direction,
      'rawData': instance.rawData,
    };
