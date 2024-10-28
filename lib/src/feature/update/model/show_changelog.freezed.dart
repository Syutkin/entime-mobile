// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_changelog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowChangelog {
  String? get previousVersion => throw _privateConstructorUsedError;
  String? get currentVersion => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;

  /// Create a copy of ShowChangelog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShowChangelogCopyWith<ShowChangelog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowChangelogCopyWith<$Res> {
  factory $ShowChangelogCopyWith(
          ShowChangelog value, $Res Function(ShowChangelog) then) =
      _$ShowChangelogCopyWithImpl<$Res, ShowChangelog>;
  @useResult
  $Res call({String? previousVersion, String? currentVersion, bool show});
}

/// @nodoc
class _$ShowChangelogCopyWithImpl<$Res, $Val extends ShowChangelog>
    implements $ShowChangelogCopyWith<$Res> {
  _$ShowChangelogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShowChangelog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousVersion = freezed,
    Object? currentVersion = freezed,
    Object? show = null,
  }) {
    return _then(_value.copyWith(
      previousVersion: freezed == previousVersion
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      currentVersion: freezed == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowChangelogImplCopyWith<$Res>
    implements $ShowChangelogCopyWith<$Res> {
  factory _$$ShowChangelogImplCopyWith(
          _$ShowChangelogImpl value, $Res Function(_$ShowChangelogImpl) then) =
      __$$ShowChangelogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? previousVersion, String? currentVersion, bool show});
}

/// @nodoc
class __$$ShowChangelogImplCopyWithImpl<$Res>
    extends _$ShowChangelogCopyWithImpl<$Res, _$ShowChangelogImpl>
    implements _$$ShowChangelogImplCopyWith<$Res> {
  __$$ShowChangelogImplCopyWithImpl(
      _$ShowChangelogImpl _value, $Res Function(_$ShowChangelogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShowChangelog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousVersion = freezed,
    Object? currentVersion = freezed,
    Object? show = null,
  }) {
    return _then(_$ShowChangelogImpl(
      previousVersion: freezed == previousVersion
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      currentVersion: freezed == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowChangelogImpl implements _ShowChangelog {
  const _$ShowChangelogImpl(
      {this.previousVersion, this.currentVersion, this.show = false});

  @override
  final String? previousVersion;
  @override
  final String? currentVersion;
  @override
  @JsonKey()
  final bool show;

  @override
  String toString() {
    return 'ShowChangelog(previousVersion: $previousVersion, currentVersion: $currentVersion, show: $show)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowChangelogImpl &&
            (identical(other.previousVersion, previousVersion) ||
                other.previousVersion == previousVersion) &&
            (identical(other.currentVersion, currentVersion) ||
                other.currentVersion == currentVersion) &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, previousVersion, currentVersion, show);

  /// Create a copy of ShowChangelog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowChangelogImplCopyWith<_$ShowChangelogImpl> get copyWith =>
      __$$ShowChangelogImplCopyWithImpl<_$ShowChangelogImpl>(this, _$identity);
}

abstract class _ShowChangelog implements ShowChangelog {
  const factory _ShowChangelog(
      {final String? previousVersion,
      final String? currentVersion,
      final bool show}) = _$ShowChangelogImpl;

  @override
  String? get previousVersion;
  @override
  String? get currentVersion;
  @override
  bool get show;

  /// Create a copy of ShowChangelog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowChangelogImplCopyWith<_$ShowChangelogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
