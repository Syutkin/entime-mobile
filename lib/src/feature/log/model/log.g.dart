// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Log _$$_LogFromJson(Map<String, dynamic> json) => _$_Log(
      id: json['id'] as int,
      level: json['level'] as String,
      timeStamp: json['timeStamp'] as String,
      source: json['source'] as String,
      direction: json['direction'] as String?,
      rawData: json['rawData'] as String,
    );

Map<String, dynamic> _$$_LogToJson(_$_Log instance) => <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'timeStamp': instance.timeStamp,
      'source': instance.source,
      'direction': instance.direction,
      'rawData': instance.rawData,
    };
