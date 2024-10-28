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
    TResult Function()? updateFromFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckUpdate value) checkUpdate,
    required TResult Function(PopupChangelog value) popupChangelog,
    required TResult Function(DownloadUpdate value) downloadUpdate,
    required TResult Function(UpdateDownloading value) downloading,
    required TResult Function(CancelDownload value) cancelDownload,
    required TResult Function(UpdateFromFile value) updateFromFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckUpdate value)? checkUpdate,
    TResult? Function(PopupChangelog value)? popupChangelog,
    TResult? Function(DownloadUpdate value)? downloadUpdate,
    TResult? Function(UpdateDownloading value)? downloading,
    TResult? Function(CancelDownload value)? cancelDownload,
    TResult? Function(UpdateFromFile value)? updateFromFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
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
abstract class _$$CheckUpdateImplCopyWith<$Res> {
  factory _$$CheckUpdateImplCopyWith(
          _$CheckUpdateImpl value, $Res Function(_$CheckUpdateImpl) then) =
      __$$CheckUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUpdateImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$CheckUpdateImpl>
    implements _$$CheckUpdateImplCopyWith<$Res> {
  __$$CheckUpdateImplCopyWithImpl(
      _$CheckUpdateImpl _value, $Res Function(_$CheckUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckUpdateImpl implements CheckUpdate {
  const _$CheckUpdateImpl();

  @override
  String toString() {
    return 'UpdateEvent.checkUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUpdateImpl);
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
    required TResult Function(CheckUpdate value) checkUpdate,
    required TResult Function(PopupChangelog value) popupChangelog,
    required TResult Function(DownloadUpdate value) downloadUpdate,
    required TResult Function(UpdateDownloading value) downloading,
    required TResult Function(CancelDownload value) cancelDownload,
    required TResult Function(UpdateFromFile value) updateFromFile,
  }) {
    return checkUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckUpdate value)? checkUpdate,
    TResult? Function(PopupChangelog value)? popupChangelog,
    TResult? Function(DownloadUpdate value)? downloadUpdate,
    TResult? Function(UpdateDownloading value)? downloading,
    TResult? Function(CancelDownload value)? cancelDownload,
    TResult? Function(UpdateFromFile value)? updateFromFile,
  }) {
    return checkUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (checkUpdate != null) {
      return checkUpdate(this);
    }
    return orElse();
  }
}

abstract class CheckUpdate implements UpdateEvent {
  const factory CheckUpdate() = _$CheckUpdateImpl;
}

/// @nodoc
abstract class _$$PopupChangelogImplCopyWith<$Res> {
  factory _$$PopupChangelogImplCopyWith(_$PopupChangelogImpl value,
          $Res Function(_$PopupChangelogImpl) then) =
      __$$PopupChangelogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopupChangelogImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$PopupChangelogImpl>
    implements _$$PopupChangelogImplCopyWith<$Res> {
  __$$PopupChangelogImplCopyWithImpl(
      _$PopupChangelogImpl _value, $Res Function(_$PopupChangelogImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PopupChangelogImpl implements PopupChangelog {
  const _$PopupChangelogImpl();

  @override
  String toString() {
    return 'UpdateEvent.popupChangelog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PopupChangelogImpl);
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
    required TResult Function(CheckUpdate value) checkUpdate,
    required TResult Function(PopupChangelog value) popupChangelog,
    required TResult Function(DownloadUpdate value) downloadUpdate,
    required TResult Function(UpdateDownloading value) downloading,
    required TResult Function(CancelDownload value) cancelDownload,
    required TResult Function(UpdateFromFile value) updateFromFile,
  }) {
    return popupChangelog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckUpdate value)? checkUpdate,
    TResult? Function(PopupChangelog value)? popupChangelog,
    TResult? Function(DownloadUpdate value)? downloadUpdate,
    TResult? Function(UpdateDownloading value)? downloading,
    TResult? Function(CancelDownload value)? cancelDownload,
    TResult? Function(UpdateFromFile value)? updateFromFile,
  }) {
    return popupChangelog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (popupChangelog != null) {
      return popupChangelog(this);
    }
    return orElse();
  }
}

abstract class PopupChangelog implements UpdateEvent {
  const factory PopupChangelog() = _$PopupChangelogImpl;
}

/// @nodoc
abstract class _$$DownloadUpdateImplCopyWith<$Res> {
  factory _$$DownloadUpdateImplCopyWith(_$DownloadUpdateImpl value,
          $Res Function(_$DownloadUpdateImpl) then) =
      __$$DownloadUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadUpdateImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$DownloadUpdateImpl>
    implements _$$DownloadUpdateImplCopyWith<$Res> {
  __$$DownloadUpdateImplCopyWithImpl(
      _$DownloadUpdateImpl _value, $Res Function(_$DownloadUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DownloadUpdateImpl implements DownloadUpdate {
  const _$DownloadUpdateImpl();

  @override
  String toString() {
    return 'UpdateEvent.downloadUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DownloadUpdateImpl);
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
    required TResult Function(CheckUpdate value) checkUpdate,
    required TResult Function(PopupChangelog value) popupChangelog,
    required TResult Function(DownloadUpdate value) downloadUpdate,
    required TResult Function(UpdateDownloading value) downloading,
    required TResult Function(CancelDownload value) cancelDownload,
    required TResult Function(UpdateFromFile value) updateFromFile,
  }) {
    return downloadUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckUpdate value)? checkUpdate,
    TResult? Function(PopupChangelog value)? popupChangelog,
    TResult? Function(DownloadUpdate value)? downloadUpdate,
    TResult? Function(UpdateDownloading value)? downloading,
    TResult? Function(CancelDownload value)? cancelDownload,
    TResult? Function(UpdateFromFile value)? updateFromFile,
  }) {
    return downloadUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (downloadUpdate != null) {
      return downloadUpdate(this);
    }
    return orElse();
  }
}

abstract class DownloadUpdate implements UpdateEvent {
  const factory DownloadUpdate() = _$DownloadUpdateImpl;
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
    extends _$UpdateEventCopyWithImpl<$Res, _$UpdateDownloadingImpl>
    implements _$$UpdateDownloadingImplCopyWith<$Res> {
  __$$UpdateDownloadingImplCopyWithImpl(_$UpdateDownloadingImpl _value,
      $Res Function(_$UpdateDownloadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
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

class _$UpdateDownloadingImpl implements UpdateDownloading {
  const _$UpdateDownloadingImpl({required this.bytes, required this.total});

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
            other is _$UpdateDownloadingImpl &&
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
  _$$UpdateDownloadingImplCopyWith<_$UpdateDownloadingImpl> get copyWith =>
      __$$UpdateDownloadingImplCopyWithImpl<_$UpdateDownloadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function() popupChangelog,
    required TResult Function() downloadUpdate,
    required TResult Function(int bytes, int total) downloading,
    required TResult Function() cancelDownload,
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
    required TResult Function(CheckUpdate value) checkUpdate,
    required TResult Function(PopupChangelog value) popupChangelog,
    required TResult Function(DownloadUpdate value) downloadUpdate,
    required TResult Function(UpdateDownloading value) downloading,
    required TResult Function(CancelDownload value) cancelDownload,
    required TResult Function(UpdateFromFile value) updateFromFile,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckUpdate value)? checkUpdate,
    TResult? Function(PopupChangelog value)? popupChangelog,
    TResult? Function(DownloadUpdate value)? downloadUpdate,
    TResult? Function(UpdateDownloading value)? downloading,
    TResult? Function(CancelDownload value)? cancelDownload,
    TResult? Function(UpdateFromFile value)? updateFromFile,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class UpdateDownloading implements UpdateEvent {
  const factory UpdateDownloading(
      {required final int bytes,
      required final int total}) = _$UpdateDownloadingImpl;

  int get bytes;
  int get total;

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDownloadingImplCopyWith<_$UpdateDownloadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelDownloadImplCopyWith<$Res> {
  factory _$$CancelDownloadImplCopyWith(_$CancelDownloadImpl value,
          $Res Function(_$CancelDownloadImpl) then) =
      __$$CancelDownloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelDownloadImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$CancelDownloadImpl>
    implements _$$CancelDownloadImplCopyWith<$Res> {
  __$$CancelDownloadImplCopyWithImpl(
      _$CancelDownloadImpl _value, $Res Function(_$CancelDownloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelDownloadImpl implements CancelDownload {
  const _$CancelDownloadImpl();

  @override
  String toString() {
    return 'UpdateEvent.cancelDownload()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelDownloadImpl);
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
    required TResult Function(CheckUpdate value) checkUpdate,
    required TResult Function(PopupChangelog value) popupChangelog,
    required TResult Function(DownloadUpdate value) downloadUpdate,
    required TResult Function(UpdateDownloading value) downloading,
    required TResult Function(CancelDownload value) cancelDownload,
    required TResult Function(UpdateFromFile value) updateFromFile,
  }) {
    return cancelDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckUpdate value)? checkUpdate,
    TResult? Function(PopupChangelog value)? popupChangelog,
    TResult? Function(DownloadUpdate value)? downloadUpdate,
    TResult? Function(UpdateDownloading value)? downloading,
    TResult? Function(CancelDownload value)? cancelDownload,
    TResult? Function(UpdateFromFile value)? updateFromFile,
  }) {
    return cancelDownload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (cancelDownload != null) {
      return cancelDownload(this);
    }
    return orElse();
  }
}

abstract class CancelDownload implements UpdateEvent {
  const factory CancelDownload() = _$CancelDownloadImpl;
}

/// @nodoc
abstract class _$$UpdateFromFileImplCopyWith<$Res> {
  factory _$$UpdateFromFileImplCopyWith(_$UpdateFromFileImpl value,
          $Res Function(_$UpdateFromFileImpl) then) =
      __$$UpdateFromFileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateFromFileImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$UpdateFromFileImpl>
    implements _$$UpdateFromFileImplCopyWith<$Res> {
  __$$UpdateFromFileImplCopyWithImpl(
      _$UpdateFromFileImpl _value, $Res Function(_$UpdateFromFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateFromFileImpl implements UpdateFromFile {
  const _$UpdateFromFileImpl();

  @override
  String toString() {
    return 'UpdateEvent.updateFromFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateFromFileImpl);
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
    required TResult Function(CheckUpdate value) checkUpdate,
    required TResult Function(PopupChangelog value) popupChangelog,
    required TResult Function(DownloadUpdate value) downloadUpdate,
    required TResult Function(UpdateDownloading value) downloading,
    required TResult Function(CancelDownload value) cancelDownload,
    required TResult Function(UpdateFromFile value) updateFromFile,
  }) {
    return updateFromFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckUpdate value)? checkUpdate,
    TResult? Function(PopupChangelog value)? popupChangelog,
    TResult? Function(DownloadUpdate value)? downloadUpdate,
    TResult? Function(UpdateDownloading value)? downloading,
    TResult? Function(CancelDownload value)? cancelDownload,
    TResult? Function(UpdateFromFile value)? updateFromFile,
  }) {
    return updateFromFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
    required TResult orElse(),
  }) {
    if (updateFromFile != null) {
      return updateFromFile(this);
    }
    return orElse();
  }
}

abstract class UpdateFromFile implements UpdateEvent {
  const factory UpdateFromFile() = _$UpdateFromFileImpl;
}

/// @nodoc
mixin _$UpdateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowChangelog? showChangelog) initial,
    required TResult Function(String version) updateAvailable,
    required TResult Function() connecting,
    required TResult Function(int bytes, int total) downloadInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloadInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloadInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInitial value) initial,
    required TResult Function(UpdateAvailable value) updateAvailable,
    required TResult Function(UpdateConnecting value) connecting,
    required TResult Function(UpdateDownloadInProgress value)
        downloadInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInitial value)? initial,
    TResult? Function(UpdateAvailable value)? updateAvailable,
    TResult? Function(UpdateConnecting value)? connecting,
    TResult? Function(UpdateDownloadInProgress value)? downloadInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInitial value)? initial,
    TResult Function(UpdateAvailable value)? updateAvailable,
    TResult Function(UpdateConnecting value)? connecting,
    TResult Function(UpdateDownloadInProgress value)? downloadInProgress,
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

class _$UpdateInitialImpl implements UpdateInitial {
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
    required TResult Function(int bytes, int total) downloadInProgress,
  }) {
    return initial(showChangelog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloadInProgress,
  }) {
    return initial?.call(showChangelog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloadInProgress,
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
    required TResult Function(UpdateInitial value) initial,
    required TResult Function(UpdateAvailable value) updateAvailable,
    required TResult Function(UpdateConnecting value) connecting,
    required TResult Function(UpdateDownloadInProgress value)
        downloadInProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInitial value)? initial,
    TResult? Function(UpdateAvailable value)? updateAvailable,
    TResult? Function(UpdateConnecting value)? connecting,
    TResult? Function(UpdateDownloadInProgress value)? downloadInProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInitial value)? initial,
    TResult Function(UpdateAvailable value)? updateAvailable,
    TResult Function(UpdateConnecting value)? connecting,
    TResult Function(UpdateDownloadInProgress value)? downloadInProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateInitial implements UpdateState {
  const factory UpdateInitial({final ShowChangelog? showChangelog}) =
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

class _$UpdateAvailableImpl implements UpdateAvailable {
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
    required TResult Function(int bytes, int total) downloadInProgress,
  }) {
    return updateAvailable(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloadInProgress,
  }) {
    return updateAvailable?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloadInProgress,
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
    required TResult Function(UpdateInitial value) initial,
    required TResult Function(UpdateAvailable value) updateAvailable,
    required TResult Function(UpdateConnecting value) connecting,
    required TResult Function(UpdateDownloadInProgress value)
        downloadInProgress,
  }) {
    return updateAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInitial value)? initial,
    TResult? Function(UpdateAvailable value)? updateAvailable,
    TResult? Function(UpdateConnecting value)? connecting,
    TResult? Function(UpdateDownloadInProgress value)? downloadInProgress,
  }) {
    return updateAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInitial value)? initial,
    TResult Function(UpdateAvailable value)? updateAvailable,
    TResult Function(UpdateConnecting value)? connecting,
    TResult Function(UpdateDownloadInProgress value)? downloadInProgress,
    required TResult orElse(),
  }) {
    if (updateAvailable != null) {
      return updateAvailable(this);
    }
    return orElse();
  }
}

abstract class UpdateAvailable implements UpdateState {
  const factory UpdateAvailable({required final String version}) =
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

class _$UpdateConnectingImpl implements UpdateConnecting {
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
    required TResult Function(int bytes, int total) downloadInProgress,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloadInProgress,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloadInProgress,
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
    required TResult Function(UpdateInitial value) initial,
    required TResult Function(UpdateAvailable value) updateAvailable,
    required TResult Function(UpdateConnecting value) connecting,
    required TResult Function(UpdateDownloadInProgress value)
        downloadInProgress,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInitial value)? initial,
    TResult? Function(UpdateAvailable value)? updateAvailable,
    TResult? Function(UpdateConnecting value)? connecting,
    TResult? Function(UpdateDownloadInProgress value)? downloadInProgress,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInitial value)? initial,
    TResult Function(UpdateAvailable value)? updateAvailable,
    TResult Function(UpdateConnecting value)? connecting,
    TResult Function(UpdateDownloadInProgress value)? downloadInProgress,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class UpdateConnecting implements UpdateState {
  const factory UpdateConnecting() = _$UpdateConnectingImpl;
}

/// @nodoc
abstract class _$$UpdateDownloadInProgressImplCopyWith<$Res> {
  factory _$$UpdateDownloadInProgressImplCopyWith(
          _$UpdateDownloadInProgressImpl value,
          $Res Function(_$UpdateDownloadInProgressImpl) then) =
      __$$UpdateDownloadInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bytes, int total});
}

/// @nodoc
class __$$UpdateDownloadInProgressImplCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res, _$UpdateDownloadInProgressImpl>
    implements _$$UpdateDownloadInProgressImplCopyWith<$Res> {
  __$$UpdateDownloadInProgressImplCopyWithImpl(
      _$UpdateDownloadInProgressImpl _value,
      $Res Function(_$UpdateDownloadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
    Object? total = null,
  }) {
    return _then(_$UpdateDownloadInProgressImpl(
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

class _$UpdateDownloadInProgressImpl implements UpdateDownloadInProgress {
  const _$UpdateDownloadInProgressImpl(
      {required this.bytes, required this.total});

  @override
  final int bytes;
  @override
  final int total;

  @override
  String toString() {
    return 'UpdateState.downloadInProgress(bytes: $bytes, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDownloadInProgressImpl &&
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
  _$$UpdateDownloadInProgressImplCopyWith<_$UpdateDownloadInProgressImpl>
      get copyWith => __$$UpdateDownloadInProgressImplCopyWithImpl<
          _$UpdateDownloadInProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowChangelog? showChangelog) initial,
    required TResult Function(String version) updateAvailable,
    required TResult Function() connecting,
    required TResult Function(int bytes, int total) downloadInProgress,
  }) {
    return downloadInProgress(bytes, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShowChangelog? showChangelog)? initial,
    TResult? Function(String version)? updateAvailable,
    TResult? Function()? connecting,
    TResult? Function(int bytes, int total)? downloadInProgress,
  }) {
    return downloadInProgress?.call(bytes, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloadInProgress,
    required TResult orElse(),
  }) {
    if (downloadInProgress != null) {
      return downloadInProgress(bytes, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateInitial value) initial,
    required TResult Function(UpdateAvailable value) updateAvailable,
    required TResult Function(UpdateConnecting value) connecting,
    required TResult Function(UpdateDownloadInProgress value)
        downloadInProgress,
  }) {
    return downloadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateInitial value)? initial,
    TResult? Function(UpdateAvailable value)? updateAvailable,
    TResult? Function(UpdateConnecting value)? connecting,
    TResult? Function(UpdateDownloadInProgress value)? downloadInProgress,
  }) {
    return downloadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateInitial value)? initial,
    TResult Function(UpdateAvailable value)? updateAvailable,
    TResult Function(UpdateConnecting value)? connecting,
    TResult Function(UpdateDownloadInProgress value)? downloadInProgress,
    required TResult orElse(),
  }) {
    if (downloadInProgress != null) {
      return downloadInProgress(this);
    }
    return orElse();
  }
}

abstract class UpdateDownloadInProgress implements UpdateState {
  const factory UpdateDownloadInProgress(
      {required final int bytes,
      required final int total}) = _$UpdateDownloadInProgressImpl;

  int get bytes;
  int get total;

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDownloadInProgressImplCopyWith<_$UpdateDownloadInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}
