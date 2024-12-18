// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function() popupChangelog,
    required TResult Function() downloadUpdate,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function() cancelDownload,
    required TResult Function(String error) downloadError,
    required TResult Function() updateFromFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function()? popupChangelog,
    TResult? Function()? downloadUpdate,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function()? cancelDownload,
    TResult? Function(String error)? downloadError,
    TResult? Function()? updateFromFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function(String error)? downloadError,
    TResult Function()? updateFromFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUpdateEvent value) checkUpdate,
    required TResult Function(_PopupChangelogEvent value) popupChangelog,
    required TResult Function(_DownloadUpdateEvent value) downloadUpdate,
    required TResult Function(_UpdateDownloadingEvent value) downloading,
    required TResult Function(_CancelDownloadEvent value) cancelDownload,
    required TResult Function(_DownloadErrorEvent value) downloadError,
    required TResult Function(_UpdateFromFileEvent value) updateFromFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUpdateEvent value)? checkUpdate,
    TResult? Function(_PopupChangelogEvent value)? popupChangelog,
    TResult? Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult? Function(_UpdateDownloadingEvent value)? downloading,
    TResult? Function(_CancelDownloadEvent value)? cancelDownload,
    TResult? Function(_DownloadErrorEvent value)? downloadError,
    TResult? Function(_UpdateFromFileEvent value)? updateFromFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUpdateEvent value)? checkUpdate,
    TResult Function(_PopupChangelogEvent value)? popupChangelog,
    TResult Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult Function(_UpdateDownloadingEvent value)? downloading,
    TResult Function(_CancelDownloadEvent value)? cancelDownload,
    TResult Function(_DownloadErrorEvent value)? downloadError,
    TResult Function(_UpdateFromFileEvent value)? updateFromFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEventCopyWith<$Res> {
  factory $UpdateEventCopyWith(
          UpdateEvent value, $Res Function(UpdateEvent) then) =
      _$UpdateEventCopyWithImpl<$Res, UpdateEvent>;
}

/// @nodoc
class _$UpdateEventCopyWithImpl<$Res, $Val extends UpdateEvent>
    implements $UpdateEventCopyWith<$Res> {
  _$UpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckUpdateEventImplCopyWith<$Res> {
  factory _$$CheckUpdateEventImplCopyWith(_$CheckUpdateEventImpl value,
          $Res Function(_$CheckUpdateEventImpl) then) =
      __$$CheckUpdateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUpdateEventImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$CheckUpdateEventImpl>
    implements _$$CheckUpdateEventImplCopyWith<$Res> {
  __$$CheckUpdateEventImplCopyWithImpl(_$CheckUpdateEventImpl _value,
      $Res Function(_$CheckUpdateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckUpdateEventImpl implements _CheckUpdateEvent {
  const _$CheckUpdateEventImpl();

  @override
  String toString() {
    return 'UpdateEvent.checkUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUpdateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function() popupChangelog,
    required TResult Function() downloadUpdate,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function() cancelDownload,
    required TResult Function(String error) downloadError,
    required TResult Function() updateFromFile,
  }) {
    return checkUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function()? popupChangelog,
    TResult? Function()? downloadUpdate,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function()? cancelDownload,
    TResult? Function(String error)? downloadError,
    TResult? Function()? updateFromFile,
  }) {
    return checkUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function(String error)? downloadError,
    TResult Function()? updateFromFile,
    required TResult orElse(),
  }) {
    if (checkUpdate != null) {
      return checkUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUpdateEvent value) checkUpdate,
    required TResult Function(_PopupChangelogEvent value) popupChangelog,
    required TResult Function(_DownloadUpdateEvent value) downloadUpdate,
    required TResult Function(_UpdateDownloadingEvent value) downloading,
    required TResult Function(_CancelDownloadEvent value) cancelDownload,
    required TResult Function(_DownloadErrorEvent value) downloadError,
    required TResult Function(_UpdateFromFileEvent value) updateFromFile,
  }) {
    return checkUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUpdateEvent value)? checkUpdate,
    TResult? Function(_PopupChangelogEvent value)? popupChangelog,
    TResult? Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult? Function(_UpdateDownloadingEvent value)? downloading,
    TResult? Function(_CancelDownloadEvent value)? cancelDownload,
    TResult? Function(_DownloadErrorEvent value)? downloadError,
    TResult? Function(_UpdateFromFileEvent value)? updateFromFile,
  }) {
    return checkUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUpdateEvent value)? checkUpdate,
    TResult Function(_PopupChangelogEvent value)? popupChangelog,
    TResult Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult Function(_UpdateDownloadingEvent value)? downloading,
    TResult Function(_CancelDownloadEvent value)? cancelDownload,
    TResult Function(_DownloadErrorEvent value)? downloadError,
    TResult Function(_UpdateFromFileEvent value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (checkUpdate != null) {
      return checkUpdate(this);
    }
    return orElse();
  }
}

abstract class _CheckUpdateEvent implements UpdateEvent {
  const factory _CheckUpdateEvent() = _$CheckUpdateEventImpl;
}

/// @nodoc
abstract class _$$PopupChangelogEventImplCopyWith<$Res> {
  factory _$$PopupChangelogEventImplCopyWith(_$PopupChangelogEventImpl value,
          $Res Function(_$PopupChangelogEventImpl) then) =
      __$$PopupChangelogEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopupChangelogEventImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$PopupChangelogEventImpl>
    implements _$$PopupChangelogEventImplCopyWith<$Res> {
  __$$PopupChangelogEventImplCopyWithImpl(_$PopupChangelogEventImpl _value,
      $Res Function(_$PopupChangelogEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PopupChangelogEventImpl implements _PopupChangelogEvent {
  const _$PopupChangelogEventImpl();

  @override
  String toString() {
    return 'UpdateEvent.popupChangelog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopupChangelogEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function() popupChangelog,
    required TResult Function() downloadUpdate,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function() cancelDownload,
    required TResult Function(String error) downloadError,
    required TResult Function() updateFromFile,
  }) {
    return popupChangelog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function()? popupChangelog,
    TResult? Function()? downloadUpdate,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function()? cancelDownload,
    TResult? Function(String error)? downloadError,
    TResult? Function()? updateFromFile,
  }) {
    return popupChangelog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function(String error)? downloadError,
    TResult Function()? updateFromFile,
    required TResult orElse(),
  }) {
    if (popupChangelog != null) {
      return popupChangelog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUpdateEvent value) checkUpdate,
    required TResult Function(_PopupChangelogEvent value) popupChangelog,
    required TResult Function(_DownloadUpdateEvent value) downloadUpdate,
    required TResult Function(_UpdateDownloadingEvent value) downloading,
    required TResult Function(_CancelDownloadEvent value) cancelDownload,
    required TResult Function(_DownloadErrorEvent value) downloadError,
    required TResult Function(_UpdateFromFileEvent value) updateFromFile,
  }) {
    return popupChangelog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUpdateEvent value)? checkUpdate,
    TResult? Function(_PopupChangelogEvent value)? popupChangelog,
    TResult? Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult? Function(_UpdateDownloadingEvent value)? downloading,
    TResult? Function(_CancelDownloadEvent value)? cancelDownload,
    TResult? Function(_DownloadErrorEvent value)? downloadError,
    TResult? Function(_UpdateFromFileEvent value)? updateFromFile,
  }) {
    return popupChangelog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUpdateEvent value)? checkUpdate,
    TResult Function(_PopupChangelogEvent value)? popupChangelog,
    TResult Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult Function(_UpdateDownloadingEvent value)? downloading,
    TResult Function(_CancelDownloadEvent value)? cancelDownload,
    TResult Function(_DownloadErrorEvent value)? downloadError,
    TResult Function(_UpdateFromFileEvent value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (popupChangelog != null) {
      return popupChangelog(this);
    }
    return orElse();
  }
}

abstract class _PopupChangelogEvent implements UpdateEvent {
  const factory _PopupChangelogEvent() = _$PopupChangelogEventImpl;
}

/// @nodoc
abstract class _$$DownloadUpdateEventImplCopyWith<$Res> {
  factory _$$DownloadUpdateEventImplCopyWith(_$DownloadUpdateEventImpl value,
          $Res Function(_$DownloadUpdateEventImpl) then) =
      __$$DownloadUpdateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadUpdateEventImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$DownloadUpdateEventImpl>
    implements _$$DownloadUpdateEventImplCopyWith<$Res> {
  __$$DownloadUpdateEventImplCopyWithImpl(_$DownloadUpdateEventImpl _value,
      $Res Function(_$DownloadUpdateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DownloadUpdateEventImpl implements _DownloadUpdateEvent {
  const _$DownloadUpdateEventImpl();

  @override
  String toString() {
    return 'UpdateEvent.downloadUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadUpdateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function() popupChangelog,
    required TResult Function() downloadUpdate,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function() cancelDownload,
    required TResult Function(String error) downloadError,
    required TResult Function() updateFromFile,
  }) {
    return downloadUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function()? popupChangelog,
    TResult? Function()? downloadUpdate,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function()? cancelDownload,
    TResult? Function(String error)? downloadError,
    TResult? Function()? updateFromFile,
  }) {
    return downloadUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function(String error)? downloadError,
    TResult Function()? updateFromFile,
    required TResult orElse(),
  }) {
    if (downloadUpdate != null) {
      return downloadUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUpdateEvent value) checkUpdate,
    required TResult Function(_PopupChangelogEvent value) popupChangelog,
    required TResult Function(_DownloadUpdateEvent value) downloadUpdate,
    required TResult Function(_UpdateDownloadingEvent value) downloading,
    required TResult Function(_CancelDownloadEvent value) cancelDownload,
    required TResult Function(_DownloadErrorEvent value) downloadError,
    required TResult Function(_UpdateFromFileEvent value) updateFromFile,
  }) {
    return downloadUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUpdateEvent value)? checkUpdate,
    TResult? Function(_PopupChangelogEvent value)? popupChangelog,
    TResult? Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult? Function(_UpdateDownloadingEvent value)? downloading,
    TResult? Function(_CancelDownloadEvent value)? cancelDownload,
    TResult? Function(_DownloadErrorEvent value)? downloadError,
    TResult? Function(_UpdateFromFileEvent value)? updateFromFile,
  }) {
    return downloadUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUpdateEvent value)? checkUpdate,
    TResult Function(_PopupChangelogEvent value)? popupChangelog,
    TResult Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult Function(_UpdateDownloadingEvent value)? downloading,
    TResult Function(_CancelDownloadEvent value)? cancelDownload,
    TResult Function(_DownloadErrorEvent value)? downloadError,
    TResult Function(_UpdateFromFileEvent value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (downloadUpdate != null) {
      return downloadUpdate(this);
    }
    return orElse();
  }
}

abstract class _DownloadUpdateEvent implements UpdateEvent {
  const factory _DownloadUpdateEvent() = _$DownloadUpdateEventImpl;
}

/// @nodoc
abstract class _$$UpdateDownloadingEventImplCopyWith<$Res> {
  factory _$$UpdateDownloadingEventImplCopyWith(
          _$UpdateDownloadingEventImpl value,
          $Res Function(_$UpdateDownloadingEventImpl) then) =
      __$$UpdateDownloadingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bytes, int total});
}

/// @nodoc
class __$$UpdateDownloadingEventImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$UpdateDownloadingEventImpl>
    implements _$$UpdateDownloadingEventImplCopyWith<$Res> {
  __$$UpdateDownloadingEventImplCopyWithImpl(
      _$UpdateDownloadingEventImpl _value,
      $Res Function(_$UpdateDownloadingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
    Object? total = null,
  }) {
    return _then(_$UpdateDownloadingEventImpl(
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateDownloadingEventImpl implements _UpdateDownloadingEvent {
  const _$UpdateDownloadingEventImpl(
      {required this.bytes, required this.total});

  @override
  final int bytes;
  @override
  final int total;

  @override
  String toString() {
    return 'UpdateEvent.downloading(bytes: $bytes, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDownloadingEventImpl &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bytes, total);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDownloadingEventImplCopyWith<_$UpdateDownloadingEventImpl>
      get copyWith => __$$UpdateDownloadingEventImplCopyWithImpl<
          _$UpdateDownloadingEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function() popupChangelog,
    required TResult Function() downloadUpdate,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function() cancelDownload,
    required TResult Function(String error) downloadError,
    required TResult Function() updateFromFile,
  }) {
    return downloading(bytes, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function()? popupChangelog,
    TResult? Function()? downloadUpdate,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function()? cancelDownload,
    TResult? Function(String error)? downloadError,
    TResult? Function()? updateFromFile,
  }) {
    return downloading?.call(bytes, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function(String error)? downloadError,
    TResult Function()? updateFromFile,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(bytes, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUpdateEvent value) checkUpdate,
    required TResult Function(_PopupChangelogEvent value) popupChangelog,
    required TResult Function(_DownloadUpdateEvent value) downloadUpdate,
    required TResult Function(_UpdateDownloadingEvent value) downloading,
    required TResult Function(_CancelDownloadEvent value) cancelDownload,
    required TResult Function(_DownloadErrorEvent value) downloadError,
    required TResult Function(_UpdateFromFileEvent value) updateFromFile,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUpdateEvent value)? checkUpdate,
    TResult? Function(_PopupChangelogEvent value)? popupChangelog,
    TResult? Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult? Function(_UpdateDownloadingEvent value)? downloading,
    TResult? Function(_CancelDownloadEvent value)? cancelDownload,
    TResult? Function(_DownloadErrorEvent value)? downloadError,
    TResult? Function(_UpdateFromFileEvent value)? updateFromFile,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUpdateEvent value)? checkUpdate,
    TResult Function(_PopupChangelogEvent value)? popupChangelog,
    TResult Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult Function(_UpdateDownloadingEvent value)? downloading,
    TResult Function(_CancelDownloadEvent value)? cancelDownload,
    TResult Function(_DownloadErrorEvent value)? downloadError,
    TResult Function(_UpdateFromFileEvent value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class _UpdateDownloadingEvent implements UpdateEvent {
  const factory _UpdateDownloadingEvent(
      {required final int bytes,
      required final int total}) = _$UpdateDownloadingEventImpl;

  int get bytes;
  int get total;

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDownloadingEventImplCopyWith<_$UpdateDownloadingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelDownloadEventImplCopyWith<$Res> {
  factory _$$CancelDownloadEventImplCopyWith(_$CancelDownloadEventImpl value,
          $Res Function(_$CancelDownloadEventImpl) then) =
      __$$CancelDownloadEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelDownloadEventImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$CancelDownloadEventImpl>
    implements _$$CancelDownloadEventImplCopyWith<$Res> {
  __$$CancelDownloadEventImplCopyWithImpl(_$CancelDownloadEventImpl _value,
      $Res Function(_$CancelDownloadEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelDownloadEventImpl implements _CancelDownloadEvent {
  const _$CancelDownloadEventImpl();

  @override
  String toString() {
    return 'UpdateEvent.cancelDownload()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelDownloadEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function() popupChangelog,
    required TResult Function() downloadUpdate,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function() cancelDownload,
    required TResult Function(String error) downloadError,
    required TResult Function() updateFromFile,
  }) {
    return cancelDownload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function()? popupChangelog,
    TResult? Function()? downloadUpdate,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function()? cancelDownload,
    TResult? Function(String error)? downloadError,
    TResult? Function()? updateFromFile,
  }) {
    return cancelDownload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function(String error)? downloadError,
    TResult Function()? updateFromFile,
    required TResult orElse(),
  }) {
    if (cancelDownload != null) {
      return cancelDownload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUpdateEvent value) checkUpdate,
    required TResult Function(_PopupChangelogEvent value) popupChangelog,
    required TResult Function(_DownloadUpdateEvent value) downloadUpdate,
    required TResult Function(_UpdateDownloadingEvent value) downloading,
    required TResult Function(_CancelDownloadEvent value) cancelDownload,
    required TResult Function(_DownloadErrorEvent value) downloadError,
    required TResult Function(_UpdateFromFileEvent value) updateFromFile,
  }) {
    return cancelDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUpdateEvent value)? checkUpdate,
    TResult? Function(_PopupChangelogEvent value)? popupChangelog,
    TResult? Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult? Function(_UpdateDownloadingEvent value)? downloading,
    TResult? Function(_CancelDownloadEvent value)? cancelDownload,
    TResult? Function(_DownloadErrorEvent value)? downloadError,
    TResult? Function(_UpdateFromFileEvent value)? updateFromFile,
  }) {
    return cancelDownload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUpdateEvent value)? checkUpdate,
    TResult Function(_PopupChangelogEvent value)? popupChangelog,
    TResult Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult Function(_UpdateDownloadingEvent value)? downloading,
    TResult Function(_CancelDownloadEvent value)? cancelDownload,
    TResult Function(_DownloadErrorEvent value)? downloadError,
    TResult Function(_UpdateFromFileEvent value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (cancelDownload != null) {
      return cancelDownload(this);
    }
    return orElse();
  }
}

abstract class _CancelDownloadEvent implements UpdateEvent {
  const factory _CancelDownloadEvent() = _$CancelDownloadEventImpl;
}

/// @nodoc
abstract class _$$DownloadErrorEventImplCopyWith<$Res> {
  factory _$$DownloadErrorEventImplCopyWith(_$DownloadErrorEventImpl value,
          $Res Function(_$DownloadErrorEventImpl) then) =
      __$$DownloadErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DownloadErrorEventImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$DownloadErrorEventImpl>
    implements _$$DownloadErrorEventImplCopyWith<$Res> {
  __$$DownloadErrorEventImplCopyWithImpl(_$DownloadErrorEventImpl _value,
      $Res Function(_$DownloadErrorEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DownloadErrorEventImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadErrorEventImpl implements _DownloadErrorEvent {
  const _$DownloadErrorEventImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UpdateEvent.downloadError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadErrorEventImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadErrorEventImplCopyWith<_$DownloadErrorEventImpl> get copyWith =>
      __$$DownloadErrorEventImplCopyWithImpl<_$DownloadErrorEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function() popupChangelog,
    required TResult Function() downloadUpdate,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function() cancelDownload,
    required TResult Function(String error) downloadError,
    required TResult Function() updateFromFile,
  }) {
    return downloadError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function()? popupChangelog,
    TResult? Function()? downloadUpdate,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function()? cancelDownload,
    TResult? Function(String error)? downloadError,
    TResult? Function()? updateFromFile,
  }) {
    return downloadError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function(String error)? downloadError,
    TResult Function()? updateFromFile,
    required TResult orElse(),
  }) {
    if (downloadError != null) {
      return downloadError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUpdateEvent value) checkUpdate,
    required TResult Function(_PopupChangelogEvent value) popupChangelog,
    required TResult Function(_DownloadUpdateEvent value) downloadUpdate,
    required TResult Function(_UpdateDownloadingEvent value) downloading,
    required TResult Function(_CancelDownloadEvent value) cancelDownload,
    required TResult Function(_DownloadErrorEvent value) downloadError,
    required TResult Function(_UpdateFromFileEvent value) updateFromFile,
  }) {
    return downloadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUpdateEvent value)? checkUpdate,
    TResult? Function(_PopupChangelogEvent value)? popupChangelog,
    TResult? Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult? Function(_UpdateDownloadingEvent value)? downloading,
    TResult? Function(_CancelDownloadEvent value)? cancelDownload,
    TResult? Function(_DownloadErrorEvent value)? downloadError,
    TResult? Function(_UpdateFromFileEvent value)? updateFromFile,
  }) {
    return downloadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUpdateEvent value)? checkUpdate,
    TResult Function(_PopupChangelogEvent value)? popupChangelog,
    TResult Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult Function(_UpdateDownloadingEvent value)? downloading,
    TResult Function(_CancelDownloadEvent value)? cancelDownload,
    TResult Function(_DownloadErrorEvent value)? downloadError,
    TResult Function(_UpdateFromFileEvent value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (downloadError != null) {
      return downloadError(this);
    }
    return orElse();
  }
}

abstract class _DownloadErrorEvent implements UpdateEvent {
  const factory _DownloadErrorEvent({required final String error}) =
      _$DownloadErrorEventImpl;

  String get error;

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadErrorEventImplCopyWith<_$DownloadErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFromFileEventImplCopyWith<$Res> {
  factory _$$UpdateFromFileEventImplCopyWith(_$UpdateFromFileEventImpl value,
          $Res Function(_$UpdateFromFileEventImpl) then) =
      __$$UpdateFromFileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateFromFileEventImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$UpdateFromFileEventImpl>
    implements _$$UpdateFromFileEventImplCopyWith<$Res> {
  __$$UpdateFromFileEventImplCopyWithImpl(_$UpdateFromFileEventImpl _value,
      $Res Function(_$UpdateFromFileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateFromFileEventImpl implements _UpdateFromFileEvent {
  const _$UpdateFromFileEventImpl();

  @override
  String toString() {
    return 'UpdateEvent.updateFromFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFromFileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function() popupChangelog,
    required TResult Function() downloadUpdate,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function() cancelDownload,
    required TResult Function(String error) downloadError,
    required TResult Function() updateFromFile,
  }) {
    return updateFromFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function()? popupChangelog,
    TResult? Function()? downloadUpdate,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function()? cancelDownload,
    TResult? Function(String error)? downloadError,
    TResult? Function()? updateFromFile,
  }) {
    return updateFromFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function(String error)? downloadError,
    TResult Function()? updateFromFile,
    required TResult orElse(),
  }) {
    if (updateFromFile != null) {
      return updateFromFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUpdateEvent value) checkUpdate,
    required TResult Function(_PopupChangelogEvent value) popupChangelog,
    required TResult Function(_DownloadUpdateEvent value) downloadUpdate,
    required TResult Function(_UpdateDownloadingEvent value) downloading,
    required TResult Function(_CancelDownloadEvent value) cancelDownload,
    required TResult Function(_DownloadErrorEvent value) downloadError,
    required TResult Function(_UpdateFromFileEvent value) updateFromFile,
  }) {
    return updateFromFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUpdateEvent value)? checkUpdate,
    TResult? Function(_PopupChangelogEvent value)? popupChangelog,
    TResult? Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult? Function(_UpdateDownloadingEvent value)? downloading,
    TResult? Function(_CancelDownloadEvent value)? cancelDownload,
    TResult? Function(_DownloadErrorEvent value)? downloadError,
    TResult? Function(_UpdateFromFileEvent value)? updateFromFile,
  }) {
    return updateFromFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUpdateEvent value)? checkUpdate,
    TResult Function(_PopupChangelogEvent value)? popupChangelog,
    TResult Function(_DownloadUpdateEvent value)? downloadUpdate,
    TResult Function(_UpdateDownloadingEvent value)? downloading,
    TResult Function(_CancelDownloadEvent value)? cancelDownload,
    TResult Function(_DownloadErrorEvent value)? downloadError,
    TResult Function(_UpdateFromFileEvent value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (updateFromFile != null) {
      return updateFromFile(this);
    }
    return orElse();
  }
}

abstract class _UpdateFromFileEvent implements UpdateEvent {
  const factory _UpdateFromFileEvent() = _$UpdateFromFileEventImpl;
}

/// @nodoc
mixin _$UpdateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowChangelog? showChangelog) initial,
    required TResult Function(String version) updateAvailable,
    required TResult Function() connecting,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function(String error) downloadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function(String error)? downloadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloading,
    TResult Function(String error)? downloadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInitial value) initial,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateConnecting value) connecting,
    required TResult Function(_UpdateDownloading value) downloading,
    required TResult Function(_UpdateDownloadError value) downloadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInitial value)? initial,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateConnecting value)? connecting,
    TResult? Function(_UpdateDownloading value)? downloading,
    TResult? Function(_UpdateDownloadError value)? downloadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInitial value)? initial,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateConnecting value)? connecting,
    TResult Function(_UpdateDownloading value)? downloading,
    TResult Function(_UpdateDownloadError value)? downloadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStateCopyWith<$Res> {
  factory $UpdateStateCopyWith(
          UpdateState value, $Res Function(UpdateState) then) =
      _$UpdateStateCopyWithImpl<$Res, UpdateState>;
}

/// @nodoc
class _$UpdateStateCopyWithImpl<$Res, $Val extends UpdateState>
    implements $UpdateStateCopyWith<$Res> {
  _$UpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateInitialImplCopyWith<$Res> {
  factory _$$UpdateInitialImplCopyWith(
          _$UpdateInitialImpl value, $Res Function(_$UpdateInitialImpl) then) =
      __$$UpdateInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShowChangelog? showChangelog});

  $ShowChangelogCopyWith<$Res>? get showChangelog;
}

/// @nodoc
class __$$UpdateInitialImplCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res, _$UpdateInitialImpl>
    implements _$$UpdateInitialImplCopyWith<$Res> {
  __$$UpdateInitialImplCopyWithImpl(
      _$UpdateInitialImpl _value, $Res Function(_$UpdateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showChangelog = freezed,
  }) {
    return _then(_$UpdateInitialImpl(
      showChangelog: freezed == showChangelog
          ? _value.showChangelog
          : showChangelog // ignore: cast_nullable_to_non_nullable
              as ShowChangelog?,
    ));
  }

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShowChangelogCopyWith<$Res>? get showChangelog {
    if (_value.showChangelog == null) {
      return null;
    }

    return $ShowChangelogCopyWith<$Res>(_value.showChangelog!, (value) {
      return _then(_value.copyWith(showChangelog: value));
    });
  }
}

/// @nodoc

class _$UpdateInitialImpl implements _UpdateInitial {
  const _$UpdateInitialImpl({this.showChangelog});

  @override
  final ShowChangelog? showChangelog;

  @override
  String toString() {
    return 'UpdateState.initial(showChangelog: $showChangelog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInitialImpl &&
            (identical(other.showChangelog, showChangelog) ||
                other.showChangelog == showChangelog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showChangelog);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInitialImplCopyWith<_$UpdateInitialImpl> get copyWith =>
      __$$UpdateInitialImplCopyWithImpl<_$UpdateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowChangelog? showChangelog) initial,
    required TResult Function(String version) updateAvailable,
    required TResult Function() connecting,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function(String error) downloadError,
  }) {
    return initial(showChangelog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function(String error)? downloadError,
  }) {
    return initial?.call(showChangelog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloading,
    TResult Function(String error)? downloadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(showChangelog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInitial value) initial,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateConnecting value) connecting,
    required TResult Function(_UpdateDownloading value) downloading,
    required TResult Function(_UpdateDownloadError value) downloadError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInitial value)? initial,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateConnecting value)? connecting,
    TResult? Function(_UpdateDownloading value)? downloading,
    TResult? Function(_UpdateDownloadError value)? downloadError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInitial value)? initial,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateConnecting value)? connecting,
    TResult Function(_UpdateDownloading value)? downloading,
    TResult Function(_UpdateDownloadError value)? downloadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UpdateInitial implements UpdateState {
  const factory _UpdateInitial({final ShowChangelog? showChangelog}) =
      _$UpdateInitialImpl;

  ShowChangelog? get showChangelog;

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInitialImplCopyWith<_$UpdateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAvailableImplCopyWith<$Res> {
  factory _$$UpdateAvailableImplCopyWith(_$UpdateAvailableImpl value,
          $Res Function(_$UpdateAvailableImpl) then) =
      __$$UpdateAvailableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String version});
}

/// @nodoc
class __$$UpdateAvailableImplCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res, _$UpdateAvailableImpl>
    implements _$$UpdateAvailableImplCopyWith<$Res> {
  __$$UpdateAvailableImplCopyWithImpl(
      _$UpdateAvailableImpl _value, $Res Function(_$UpdateAvailableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_$UpdateAvailableImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateAvailableImpl implements _UpdateAvailable {
  const _$UpdateAvailableImpl({required this.version});

  @override
  final String version;

  @override
  String toString() {
    return 'UpdateState.updateAvailable(version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAvailableImpl &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAvailableImplCopyWith<_$UpdateAvailableImpl> get copyWith =>
      __$$UpdateAvailableImplCopyWithImpl<_$UpdateAvailableImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowChangelog? showChangelog) initial,
    required TResult Function(String version) updateAvailable,
    required TResult Function() connecting,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function(String error) downloadError,
  }) {
    return updateAvailable(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function(String error)? downloadError,
  }) {
    return updateAvailable?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloading,
    TResult Function(String error)? downloadError,
    required TResult orElse(),
  }) {
    if (updateAvailable != null) {
      return updateAvailable(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInitial value) initial,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateConnecting value) connecting,
    required TResult Function(_UpdateDownloading value) downloading,
    required TResult Function(_UpdateDownloadError value) downloadError,
  }) {
    return updateAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInitial value)? initial,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateConnecting value)? connecting,
    TResult? Function(_UpdateDownloading value)? downloading,
    TResult? Function(_UpdateDownloadError value)? downloadError,
  }) {
    return updateAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInitial value)? initial,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateConnecting value)? connecting,
    TResult Function(_UpdateDownloading value)? downloading,
    TResult Function(_UpdateDownloadError value)? downloadError,
    required TResult orElse(),
  }) {
    if (updateAvailable != null) {
      return updateAvailable(this);
    }
    return orElse();
  }
}

abstract class _UpdateAvailable implements UpdateState {
  const factory _UpdateAvailable({required final String version}) =
      _$UpdateAvailableImpl;

  String get version;

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAvailableImplCopyWith<_$UpdateAvailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateConnectingImplCopyWith<$Res> {
  factory _$$UpdateConnectingImplCopyWith(_$UpdateConnectingImpl value,
          $Res Function(_$UpdateConnectingImpl) then) =
      __$$UpdateConnectingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateConnectingImplCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res, _$UpdateConnectingImpl>
    implements _$$UpdateConnectingImplCopyWith<$Res> {
  __$$UpdateConnectingImplCopyWithImpl(_$UpdateConnectingImpl _value,
      $Res Function(_$UpdateConnectingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateConnectingImpl implements _UpdateConnecting {
  const _$UpdateConnectingImpl();

  @override
  String toString() {
    return 'UpdateState.connecting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateConnectingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowChangelog? showChangelog) initial,
    required TResult Function(String version) updateAvailable,
    required TResult Function() connecting,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function(String error) downloadError,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function(String error)? downloadError,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloading,
    TResult Function(String error)? downloadError,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInitial value) initial,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateConnecting value) connecting,
    required TResult Function(_UpdateDownloading value) downloading,
    required TResult Function(_UpdateDownloadError value) downloadError,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInitial value)? initial,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateConnecting value)? connecting,
    TResult? Function(_UpdateDownloading value)? downloading,
    TResult? Function(_UpdateDownloadError value)? downloadError,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInitial value)? initial,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateConnecting value)? connecting,
    TResult Function(_UpdateDownloading value)? downloading,
    TResult Function(_UpdateDownloadError value)? downloadError,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class _UpdateConnecting implements UpdateState {
  const factory _UpdateConnecting() = _$UpdateConnectingImpl;
}

/// @nodoc
abstract class _$$UpdateDownloadingImplCopyWith<$Res> {
  factory _$$UpdateDownloadingImplCopyWith(_$UpdateDownloadingImpl value,
          $Res Function(_$UpdateDownloadingImpl) then) =
      __$$UpdateDownloadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bytes, int total});
}

/// @nodoc
class __$$UpdateDownloadingImplCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res, _$UpdateDownloadingImpl>
    implements _$$UpdateDownloadingImplCopyWith<$Res> {
  __$$UpdateDownloadingImplCopyWithImpl(_$UpdateDownloadingImpl _value,
      $Res Function(_$UpdateDownloadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
    Object? total = null,
  }) {
    return _then(_$UpdateDownloadingImpl(
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateDownloadingImpl implements _UpdateDownloading {
  const _$UpdateDownloadingImpl({required this.bytes, required this.total});

  @override
  final int bytes;
  @override
  final int total;

  @override
  String toString() {
    return 'UpdateState.downloading(bytes: $bytes, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDownloadingImpl &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bytes, total);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDownloadingImplCopyWith<_$UpdateDownloadingImpl> get copyWith =>
      __$$UpdateDownloadingImplCopyWithImpl<_$UpdateDownloadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowChangelog? showChangelog) initial,
    required TResult Function(String version) updateAvailable,
    required TResult Function() connecting,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function(String error) downloadError,
  }) {
    return downloading(bytes, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function(String error)? downloadError,
  }) {
    return downloading?.call(bytes, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloading,
    TResult Function(String error)? downloadError,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(bytes, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInitial value) initial,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateConnecting value) connecting,
    required TResult Function(_UpdateDownloading value) downloading,
    required TResult Function(_UpdateDownloadError value) downloadError,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInitial value)? initial,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateConnecting value)? connecting,
    TResult? Function(_UpdateDownloading value)? downloading,
    TResult? Function(_UpdateDownloadError value)? downloadError,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInitial value)? initial,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateConnecting value)? connecting,
    TResult Function(_UpdateDownloading value)? downloading,
    TResult Function(_UpdateDownloadError value)? downloadError,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class _UpdateDownloading implements UpdateState {
  const factory _UpdateDownloading(
      {required final int bytes,
      required final int total}) = _$UpdateDownloadingImpl;

  int get bytes;
  int get total;

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDownloadingImplCopyWith<_$UpdateDownloadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDownloadErrorImplCopyWith<$Res> {
  factory _$$UpdateDownloadErrorImplCopyWith(_$UpdateDownloadErrorImpl value,
          $Res Function(_$UpdateDownloadErrorImpl) then) =
      __$$UpdateDownloadErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UpdateDownloadErrorImplCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res, _$UpdateDownloadErrorImpl>
    implements _$$UpdateDownloadErrorImplCopyWith<$Res> {
  __$$UpdateDownloadErrorImplCopyWithImpl(_$UpdateDownloadErrorImpl _value,
      $Res Function(_$UpdateDownloadErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UpdateDownloadErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateDownloadErrorImpl implements _UpdateDownloadError {
  const _$UpdateDownloadErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UpdateState.downloadError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDownloadErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDownloadErrorImplCopyWith<_$UpdateDownloadErrorImpl> get copyWith =>
      __$$UpdateDownloadErrorImplCopyWithImpl<_$UpdateDownloadErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowChangelog? showChangelog) initial,
    required TResult Function(String version) updateAvailable,
    required TResult Function() connecting,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function(String error) downloadError,
  }) {
    return downloadError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloading,
    TResult? Function(String error)? downloadError,
  }) {
    return downloadError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloading,
    TResult Function(String error)? downloadError,
    required TResult orElse(),
  }) {
    if (downloadError != null) {
      return downloadError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateInitial value) initial,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateConnecting value) connecting,
    required TResult Function(_UpdateDownloading value) downloading,
    required TResult Function(_UpdateDownloadError value) downloadError,
  }) {
    return downloadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateInitial value)? initial,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateConnecting value)? connecting,
    TResult? Function(_UpdateDownloading value)? downloading,
    TResult? Function(_UpdateDownloadError value)? downloadError,
  }) {
    return downloadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateInitial value)? initial,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateConnecting value)? connecting,
    TResult Function(_UpdateDownloading value)? downloading,
    TResult Function(_UpdateDownloadError value)? downloadError,
    required TResult orElse(),
  }) {
    if (downloadError != null) {
      return downloadError(this);
    }
    return orElse();
  }
}

abstract class _UpdateDownloadError implements UpdateState {
  const factory _UpdateDownloadError({required final String error}) =
      _$UpdateDownloadErrorImpl;

  String get error;

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDownloadErrorImplCopyWith<_$UpdateDownloadErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
