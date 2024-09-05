// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dbstate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DBStateNotSelectedImpl _$$DBStateNotSelectedImplFromJson(
        Map<String, dynamic> json) =>
    _$DBStateNotSelectedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DBStateNotSelectedImplToJson(
        _$DBStateNotSelectedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$DBStateSelectedImpl _$$DBStateSelectedImplFromJson(
        Map<String, dynamic> json) =>
    _$DBStateSelectedImpl(
      updated: json['updated'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DBStateSelectedImplToJson(
        _$DBStateSelectedImpl instance) =>
    <String, dynamic>{
      'updated': instance.updated,
      'runtimeType': instance.$type,
    };
