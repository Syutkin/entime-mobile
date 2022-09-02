// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dbstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function()? notSelected,
    TResult Function(bool updated)? selected,
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
    TResult Function(_DBStateNotSelected value)? notSelected,
    TResult Function(_DBStateSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DBStateNotSelected value)? notSelected,
    TResult Function(_DBStateSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DBStateCopyWith<$Res> {
  factory $DBStateCopyWith(DBState value, $Res Function(DBState) then) =
      _$DBStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DBStateCopyWithImpl<$Res> implements $DBStateCopyWith<$Res> {
  _$DBStateCopyWithImpl(this._value, this._then);

  final DBState _value;
  // ignore: unused_field
  final $Res Function(DBState) _then;
}

/// @nodoc
abstract class _$$_DBStateNotSelectedCopyWith<$Res> {
  factory _$$_DBStateNotSelectedCopyWith(_$_DBStateNotSelected value,
          $Res Function(_$_DBStateNotSelected) then) =
      __$$_DBStateNotSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DBStateNotSelectedCopyWithImpl<$Res>
    extends _$DBStateCopyWithImpl<$Res>
    implements _$$_DBStateNotSelectedCopyWith<$Res> {
  __$$_DBStateNotSelectedCopyWithImpl(
      _$_DBStateNotSelected _value, $Res Function(_$_DBStateNotSelected) _then)
      : super(_value, (v) => _then(v as _$_DBStateNotSelected));

  @override
  _$_DBStateNotSelected get _value => super._value as _$_DBStateNotSelected;
}

/// @nodoc
@JsonSerializable()
class _$_DBStateNotSelected implements _DBStateNotSelected {
  const _$_DBStateNotSelected({final String? $type})
      : $type = $type ?? 'notSelected';

  factory _$_DBStateNotSelected.fromJson(Map<String, dynamic> json) =>
      _$$_DBStateNotSelectedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DBState.notSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DBStateNotSelected);
  }

  @JsonKey(ignore: true)
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
    TResult Function()? notSelected,
    TResult Function(bool updated)? selected,
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
    TResult Function(_DBStateNotSelected value)? notSelected,
    TResult Function(_DBStateSelected value)? selected,
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
    return _$$_DBStateNotSelectedToJson(
      this,
    );
  }
}

abstract class _DBStateNotSelected implements DBState {
  const factory _DBStateNotSelected() = _$_DBStateNotSelected;

  factory _DBStateNotSelected.fromJson(Map<String, dynamic> json) =
      _$_DBStateNotSelected.fromJson;
}

/// @nodoc
abstract class _$$_DBStateSelectedCopyWith<$Res> {
  factory _$$_DBStateSelectedCopyWith(
          _$_DBStateSelected value, $Res Function(_$_DBStateSelected) then) =
      __$$_DBStateSelectedCopyWithImpl<$Res>;
  $Res call({bool updated});
}

/// @nodoc
class __$$_DBStateSelectedCopyWithImpl<$Res> extends _$DBStateCopyWithImpl<$Res>
    implements _$$_DBStateSelectedCopyWith<$Res> {
  __$$_DBStateSelectedCopyWithImpl(
      _$_DBStateSelected _value, $Res Function(_$_DBStateSelected) _then)
      : super(_value, (v) => _then(v as _$_DBStateSelected));

  @override
  _$_DBStateSelected get _value => super._value as _$_DBStateSelected;

  @override
  $Res call({
    Object? updated = freezed,
  }) {
    return _then(_$_DBStateSelected(
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DBStateSelected implements _DBStateSelected {
  const _$_DBStateSelected({this.updated = false, final String? $type})
      : $type = $type ?? 'selected';

  factory _$_DBStateSelected.fromJson(Map<String, dynamic> json) =>
      _$$_DBStateSelectedFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DBStateSelected &&
            const DeepCollectionEquality().equals(other.updated, updated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(updated));

  @JsonKey(ignore: true)
  @override
  _$$_DBStateSelectedCopyWith<_$_DBStateSelected> get copyWith =>
      __$$_DBStateSelectedCopyWithImpl<_$_DBStateSelected>(this, _$identity);

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
    TResult Function()? notSelected,
    TResult Function(bool updated)? selected,
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
    TResult Function(_DBStateNotSelected value)? notSelected,
    TResult Function(_DBStateSelected value)? selected,
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
    return _$$_DBStateSelectedToJson(
      this,
    );
  }
}

abstract class _DBStateSelected implements DBState {
  const factory _DBStateSelected({final bool updated}) = _$_DBStateSelected;

  factory _DBStateSelected.fromJson(Map<String, dynamic> json) =
      _$_DBStateSelected.fromJson;

  bool get updated;
  @JsonKey(ignore: true)
  _$$_DBStateSelectedCopyWith<_$_DBStateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
