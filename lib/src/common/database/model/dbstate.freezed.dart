// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dbstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DBState _$DBStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notSelected':
      return _DBStateNotSelected.fromJson(json);
    case 'selected':
      return _DBStateSelected.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DBState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DBState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSelected,
    required TResult Function(bool updated) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notSelected,
    TResult? Function(bool updated)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function(bool updated)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DBStateNotSelected value) notSelected,
    required TResult Function(_DBStateSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DBStateNotSelected value)? notSelected,
    TResult? Function(_DBStateSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DBStateNotSelected value)? notSelected,
    TResult Function(_DBStateSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DBState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DBStateCopyWith<$Res> {
  factory $DBStateCopyWith(DBState value, $Res Function(DBState) then) =
      _$DBStateCopyWithImpl<$Res, DBState>;
}

/// @nodoc
class _$DBStateCopyWithImpl<$Res, $Val extends DBState>
    implements $DBStateCopyWith<$Res> {
  _$DBStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DBState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DBStateNotSelectedImplCopyWith<$Res> {
  factory _$$DBStateNotSelectedImplCopyWith(_$DBStateNotSelectedImpl value,
          $Res Function(_$DBStateNotSelectedImpl) then) =
      __$$DBStateNotSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DBStateNotSelectedImplCopyWithImpl<$Res>
    extends _$DBStateCopyWithImpl<$Res, _$DBStateNotSelectedImpl>
    implements _$$DBStateNotSelectedImplCopyWith<$Res> {
  __$$DBStateNotSelectedImplCopyWithImpl(_$DBStateNotSelectedImpl _value,
      $Res Function(_$DBStateNotSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DBState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$DBStateNotSelectedImpl implements _DBStateNotSelected {
  const _$DBStateNotSelectedImpl({final String? $type})
      : $type = $type ?? 'notSelected';

  factory _$DBStateNotSelectedImpl.fromJson(Map<String, dynamic> json) =>
      _$$DBStateNotSelectedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DBState.notSelected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DBStateNotSelectedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSelected,
    required TResult Function(bool updated) selected,
  }) {
    return notSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notSelected,
    TResult? Function(bool updated)? selected,
  }) {
    return notSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function(bool updated)? selected,
    required TResult orElse(),
  }) {
    if (notSelected != null) {
      return notSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DBStateNotSelected value) notSelected,
    required TResult Function(_DBStateSelected value) selected,
  }) {
    return notSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DBStateNotSelected value)? notSelected,
    TResult? Function(_DBStateSelected value)? selected,
  }) {
    return notSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DBStateNotSelected value)? notSelected,
    TResult Function(_DBStateSelected value)? selected,
    required TResult orElse(),
  }) {
    if (notSelected != null) {
      return notSelected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DBStateNotSelectedImplToJson(
      this,
    );
  }
}

abstract class _DBStateNotSelected implements DBState {
  const factory _DBStateNotSelected() = _$DBStateNotSelectedImpl;

  factory _DBStateNotSelected.fromJson(Map<String, dynamic> json) =
      _$DBStateNotSelectedImpl.fromJson;
}

/// @nodoc
abstract class _$$DBStateSelectedImplCopyWith<$Res> {
  factory _$$DBStateSelectedImplCopyWith(_$DBStateSelectedImpl value,
          $Res Function(_$DBStateSelectedImpl) then) =
      __$$DBStateSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool updated});
}

/// @nodoc
class __$$DBStateSelectedImplCopyWithImpl<$Res>
    extends _$DBStateCopyWithImpl<$Res, _$DBStateSelectedImpl>
    implements _$$DBStateSelectedImplCopyWith<$Res> {
  __$$DBStateSelectedImplCopyWithImpl(
      _$DBStateSelectedImpl _value, $Res Function(_$DBStateSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DBState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updated = null,
  }) {
    return _then(_$DBStateSelectedImpl(
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DBStateSelectedImpl implements _DBStateSelected {
  const _$DBStateSelectedImpl({this.updated = false, final String? $type})
      : $type = $type ?? 'selected';

  factory _$DBStateSelectedImpl.fromJson(Map<String, dynamic> json) =>
      _$$DBStateSelectedImplFromJson(json);

  @override
  @JsonKey()
  final bool updated;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DBState.selected(updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DBStateSelectedImpl &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, updated);

  /// Create a copy of DBState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DBStateSelectedImplCopyWith<_$DBStateSelectedImpl> get copyWith =>
      __$$DBStateSelectedImplCopyWithImpl<_$DBStateSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSelected,
    required TResult Function(bool updated) selected,
  }) {
    return selected(updated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notSelected,
    TResult? Function(bool updated)? selected,
  }) {
    return selected?.call(updated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function(bool updated)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(updated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DBStateNotSelected value) notSelected,
    required TResult Function(_DBStateSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DBStateNotSelected value)? notSelected,
    TResult? Function(_DBStateSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DBStateNotSelected value)? notSelected,
    TResult Function(_DBStateSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DBStateSelectedImplToJson(
      this,
    );
  }
}

abstract class _DBStateSelected implements DBState {
  const factory _DBStateSelected({final bool updated}) = _$DBStateSelectedImpl;

  factory _DBStateSelected.fromJson(Map<String, dynamic> json) =
      _$DBStateSelectedImpl.fromJson;

  bool get updated;

  /// Create a copy of DBState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DBStateSelectedImplCopyWith<_$DBStateSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
