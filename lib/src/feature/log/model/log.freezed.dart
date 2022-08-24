// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Log _$LogFromJson(Map<String, dynamic> json) {
  return _Log.fromJson(json);
}

/// @nodoc
mixin _$Log {
  int get id => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get timeStamp => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String? get direction => throw _privateConstructorUsedError;
  String get rawData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogCopyWith<Log> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogCopyWith<$Res> {
  factory $LogCopyWith(Log value, $Res Function(Log) then) =
      _$LogCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String level,
      String timeStamp,
      String source,
      String? direction,
      String rawData});
}

/// @nodoc
class _$LogCopyWithImpl<$Res> implements $LogCopyWith<$Res> {
  _$LogCopyWithImpl(this._value, this._then);

  final Log _value;
  // ignore: unused_field
  final $Res Function(Log) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? level = freezed,
    Object? timeStamp = freezed,
    Object? source = freezed,
    Object? direction = freezed,
    Object? rawData = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      rawData: rawData == freezed
          ? _value.rawData
          : rawData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LogCopyWith<$Res> implements $LogCopyWith<$Res> {
  factory _$$_LogCopyWith(_$_Log value, $Res Function(_$_Log) then) =
      __$$_LogCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String level,
      String timeStamp,
      String source,
      String? direction,
      String rawData});
}

/// @nodoc
class __$$_LogCopyWithImpl<$Res> extends _$LogCopyWithImpl<$Res>
    implements _$$_LogCopyWith<$Res> {
  __$$_LogCopyWithImpl(_$_Log _value, $Res Function(_$_Log) _then)
      : super(_value, (v) => _then(v as _$_Log));

  @override
  _$_Log get _value => super._value as _$_Log;

  @override
  $Res call({
    Object? id = freezed,
    Object? level = freezed,
    Object? timeStamp = freezed,
    Object? source = freezed,
    Object? direction = freezed,
    Object? rawData = freezed,
  }) {
    return _then(_$_Log(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      rawData: rawData == freezed
          ? _value.rawData
          : rawData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Log implements _Log {
  const _$_Log(
      {required this.id,
      required this.level,
      required this.timeStamp,
      required this.source,
      this.direction,
      required this.rawData});

  factory _$_Log.fromJson(Map<String, dynamic> json) => _$$_LogFromJson(json);

  @override
  final int id;
  @override
  final String level;
  @override
  final String timeStamp;
  @override
  final String source;
  @override
  final String? direction;
  @override
  final String rawData;

  @override
  String toString() {
    return 'Log(id: $id, level: $level, timeStamp: $timeStamp, source: $source, direction: $direction, rawData: $rawData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Log &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.timeStamp, timeStamp) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality().equals(other.rawData, rawData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(timeStamp),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(rawData));

  @JsonKey(ignore: true)
  @override
  _$$_LogCopyWith<_$_Log> get copyWith =>
      __$$_LogCopyWithImpl<_$_Log>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogToJson(
      this,
    );
  }
}

abstract class _Log implements Log {
  const factory _Log(
      {required final int id,
      required final String level,
      required final String timeStamp,
      required final String source,
      final String? direction,
      required final String rawData}) = _$_Log;

  factory _Log.fromJson(Map<String, dynamic> json) = _$_Log.fromJson;

  @override
  int get id;
  @override
  String get level;
  @override
  String get timeStamp;
  @override
  String get source;
  @override
  String? get direction;
  @override
  String get rawData;
  @override
  @JsonKey(ignore: true)
  _$$_LogCopyWith<_$_Log> get copyWith => throw _privateConstructorUsedError;
}
