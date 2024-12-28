// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TabEvent {
  AppTab get tab => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTab tab) updated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTab tab)? updated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTab tab)? updated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabEventUpdated value) updated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabEventUpdated value)? updated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabEventUpdated value)? updated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of TabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TabEventCopyWith<TabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabEventCopyWith<$Res> {
  factory $TabEventCopyWith(TabEvent value, $Res Function(TabEvent) then) =
      _$TabEventCopyWithImpl<$Res, TabEvent>;
  @useResult
  $Res call({AppTab tab});
}

/// @nodoc
class _$TabEventCopyWithImpl<$Res, $Val extends TabEvent>
    implements $TabEventCopyWith<$Res> {
  _$TabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tab = null}) {
    return _then(
      _value.copyWith(
            tab:
                null == tab
                    ? _value.tab
                    : tab // ignore: cast_nullable_to_non_nullable
                        as AppTab,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TabEventUpdatedImplCopyWith<$Res>
    implements $TabEventCopyWith<$Res> {
  factory _$$TabEventUpdatedImplCopyWith(
    _$TabEventUpdatedImpl value,
    $Res Function(_$TabEventUpdatedImpl) then,
  ) = __$$TabEventUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppTab tab});
}

/// @nodoc
class __$$TabEventUpdatedImplCopyWithImpl<$Res>
    extends _$TabEventCopyWithImpl<$Res, _$TabEventUpdatedImpl>
    implements _$$TabEventUpdatedImplCopyWith<$Res> {
  __$$TabEventUpdatedImplCopyWithImpl(
    _$TabEventUpdatedImpl _value,
    $Res Function(_$TabEventUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tab = null}) {
    return _then(
      _$TabEventUpdatedImpl(
        null == tab
            ? _value.tab
            : tab // ignore: cast_nullable_to_non_nullable
                as AppTab,
      ),
    );
  }
}

/// @nodoc

class _$TabEventUpdatedImpl implements TabEventUpdated {
  const _$TabEventUpdatedImpl(this.tab);

  @override
  final AppTab tab;

  @override
  String toString() {
    return 'TabEvent.updated(tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabEventUpdatedImpl &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  /// Create a copy of TabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabEventUpdatedImplCopyWith<_$TabEventUpdatedImpl> get copyWith =>
      __$$TabEventUpdatedImplCopyWithImpl<_$TabEventUpdatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTab tab) updated,
  }) {
    return updated(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTab tab)? updated,
  }) {
    return updated?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTab tab)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabEventUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabEventUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabEventUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class TabEventUpdated implements TabEvent {
  const factory TabEventUpdated(final AppTab tab) = _$TabEventUpdatedImpl;

  @override
  AppTab get tab;

  /// Create a copy of TabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabEventUpdatedImplCopyWith<_$TabEventUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
