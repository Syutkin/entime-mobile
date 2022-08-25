// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'show_changelog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShowChangelog {
  String? get previousVersion => throw _privateConstructorUsedError;
  String? get currentVersion => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowChangelogCopyWith<ShowChangelog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowChangelogCopyWith<$Res> {
  factory $ShowChangelogCopyWith(
          ShowChangelog value, $Res Function(ShowChangelog) then) =
      _$ShowChangelogCopyWithImpl<$Res>;
  $Res call({String? previousVersion, String? currentVersion, bool show});
}

/// @nodoc
class _$ShowChangelogCopyWithImpl<$Res>
    implements $ShowChangelogCopyWith<$Res> {
  _$ShowChangelogCopyWithImpl(this._value, this._then);

  final ShowChangelog _value;
  // ignore: unused_field
  final $Res Function(ShowChangelog) _then;

  @override
  $Res call({
    Object? previousVersion = freezed,
    Object? currentVersion = freezed,
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      previousVersion: previousVersion == freezed
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      currentVersion: currentVersion == freezed
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ShowChangelogCopyWith<$Res>
    implements $ShowChangelogCopyWith<$Res> {
  factory _$$_ShowChangelogCopyWith(
          _$_ShowChangelog value, $Res Function(_$_ShowChangelog) then) =
      __$$_ShowChangelogCopyWithImpl<$Res>;
  @override
  $Res call({String? previousVersion, String? currentVersion, bool show});
}

/// @nodoc
class __$$_ShowChangelogCopyWithImpl<$Res>
    extends _$ShowChangelogCopyWithImpl<$Res>
    implements _$$_ShowChangelogCopyWith<$Res> {
  __$$_ShowChangelogCopyWithImpl(
      _$_ShowChangelog _value, $Res Function(_$_ShowChangelog) _then)
      : super(_value, (v) => _then(v as _$_ShowChangelog));

  @override
  _$_ShowChangelog get _value => super._value as _$_ShowChangelog;

  @override
  $Res call({
    Object? previousVersion = freezed,
    Object? currentVersion = freezed,
    Object? show = freezed,
  }) {
    return _then(_$_ShowChangelog(
      previousVersion: previousVersion == freezed
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      currentVersion: currentVersion == freezed
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowChangelog implements _ShowChangelog {
  const _$_ShowChangelog(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowChangelog &&
            const DeepCollectionEquality()
                .equals(other.previousVersion, previousVersion) &&
            const DeepCollectionEquality()
                .equals(other.currentVersion, currentVersion) &&
            const DeepCollectionEquality().equals(other.show, show));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(previousVersion),
      const DeepCollectionEquality().hash(currentVersion),
      const DeepCollectionEquality().hash(show));

  @JsonKey(ignore: true)
  @override
  _$$_ShowChangelogCopyWith<_$_ShowChangelog> get copyWith =>
      __$$_ShowChangelogCopyWithImpl<_$_ShowChangelog>(this, _$identity);
}

abstract class _ShowChangelog implements ShowChangelog {
  const factory _ShowChangelog(
      {final String? previousVersion,
      final String? currentVersion,
      final bool show}) = _$_ShowChangelog;

  @override
  String? get previousVersion;
  @override
  String? get currentVersion;
  @override
  bool get show;
  @override
  @JsonKey(ignore: true)
  _$$_ShowChangelogCopyWith<_$_ShowChangelog> get copyWith =>
      throw _privateConstructorUsedError;
}
