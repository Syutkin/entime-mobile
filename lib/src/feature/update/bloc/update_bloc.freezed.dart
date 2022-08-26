// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function()? updateFromFile,
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
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
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
      _$UpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateEventCopyWithImpl<$Res> implements $UpdateEventCopyWith<$Res> {
  _$UpdateEventCopyWithImpl(this._value, this._then);

  final UpdateEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateEvent) _then;
}

/// @nodoc
abstract class _$$CheckUpdateCopyWith<$Res> {
  factory _$$CheckUpdateCopyWith(
          _$CheckUpdate value, $Res Function(_$CheckUpdate) then) =
      __$$CheckUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUpdateCopyWithImpl<$Res> extends _$UpdateEventCopyWithImpl<$Res>
    implements _$$CheckUpdateCopyWith<$Res> {
  __$$CheckUpdateCopyWithImpl(
      _$CheckUpdate _value, $Res Function(_$CheckUpdate) _then)
      : super(_value, (v) => _then(v as _$CheckUpdate));

  @override
  _$CheckUpdate get _value => super._value as _$CheckUpdate;
}

/// @nodoc

class _$CheckUpdate implements CheckUpdate {
  const _$CheckUpdate();

  @override
  String toString() {
    return 'UpdateEvent.checkUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUpdate);
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
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function()? updateFromFile,
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
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
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
  const factory CheckUpdate() = _$CheckUpdate;
}

/// @nodoc
abstract class _$$PopupChangelogCopyWith<$Res> {
  factory _$$PopupChangelogCopyWith(
          _$PopupChangelog value, $Res Function(_$PopupChangelog) then) =
      __$$PopupChangelogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopupChangelogCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res>
    implements _$$PopupChangelogCopyWith<$Res> {
  __$$PopupChangelogCopyWithImpl(
      _$PopupChangelog _value, $Res Function(_$PopupChangelog) _then)
      : super(_value, (v) => _then(v as _$PopupChangelog));

  @override
  _$PopupChangelog get _value => super._value as _$PopupChangelog;
}

/// @nodoc

class _$PopupChangelog implements PopupChangelog {
  const _$PopupChangelog();

  @override
  String toString() {
    return 'UpdateEvent.popupChangelog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PopupChangelog);
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
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function()? updateFromFile,
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
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
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
  const factory PopupChangelog() = _$PopupChangelog;
}

/// @nodoc
abstract class _$$DownloadUpdateCopyWith<$Res> {
  factory _$$DownloadUpdateCopyWith(
          _$DownloadUpdate value, $Res Function(_$DownloadUpdate) then) =
      __$$DownloadUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadUpdateCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res>
    implements _$$DownloadUpdateCopyWith<$Res> {
  __$$DownloadUpdateCopyWithImpl(
      _$DownloadUpdate _value, $Res Function(_$DownloadUpdate) _then)
      : super(_value, (v) => _then(v as _$DownloadUpdate));

  @override
  _$DownloadUpdate get _value => super._value as _$DownloadUpdate;
}

/// @nodoc

class _$DownloadUpdate implements DownloadUpdate {
  const _$DownloadUpdate();

  @override
  String toString() {
    return 'UpdateEvent.downloadUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DownloadUpdate);
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
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function()? updateFromFile,
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
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
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
  const factory DownloadUpdate() = _$DownloadUpdate;
}

/// @nodoc
abstract class _$$UpdateDownloadingCopyWith<$Res> {
  factory _$$UpdateDownloadingCopyWith(
          _$UpdateDownloading value, $Res Function(_$UpdateDownloading) then) =
      __$$UpdateDownloadingCopyWithImpl<$Res>;
  $Res call({int bytes, int total});
}

/// @nodoc
class __$$UpdateDownloadingCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res>
    implements _$$UpdateDownloadingCopyWith<$Res> {
  __$$UpdateDownloadingCopyWithImpl(
      _$UpdateDownloading _value, $Res Function(_$UpdateDownloading) _then)
      : super(_value, (v) => _then(v as _$UpdateDownloading));

  @override
  _$UpdateDownloading get _value => super._value as _$UpdateDownloading;

  @override
  $Res call({
    Object? bytes = freezed,
    Object? total = freezed,
  }) {
    return _then(_$UpdateDownloading(
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateDownloading implements UpdateDownloading {
  const _$UpdateDownloading({required this.bytes, required this.total});

  @override
  final int bytes;
  @override
  final int total;

  @override
  String toString() {
    return 'UpdateEvent.downloading(bytes: $bytes, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDownloading &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bytes),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$UpdateDownloadingCopyWith<_$UpdateDownloading> get copyWith =>
      __$$UpdateDownloadingCopyWithImpl<_$UpdateDownloading>(this, _$identity);

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
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function()? updateFromFile,
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
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
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
      required final int total}) = _$UpdateDownloading;

  int get bytes;
  int get total;
  @JsonKey(ignore: true)
  _$$UpdateDownloadingCopyWith<_$UpdateDownloading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelDownloadCopyWith<$Res> {
  factory _$$CancelDownloadCopyWith(
          _$CancelDownload value, $Res Function(_$CancelDownload) then) =
      __$$CancelDownloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelDownloadCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res>
    implements _$$CancelDownloadCopyWith<$Res> {
  __$$CancelDownloadCopyWithImpl(
      _$CancelDownload _value, $Res Function(_$CancelDownload) _then)
      : super(_value, (v) => _then(v as _$CancelDownload));

  @override
  _$CancelDownload get _value => super._value as _$CancelDownload;
}

/// @nodoc

class _$CancelDownload implements CancelDownload {
  const _$CancelDownload();

  @override
  String toString() {
    return 'UpdateEvent.cancelDownload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelDownload);
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
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function()? updateFromFile,
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
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
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
  const factory CancelDownload() = _$CancelDownload;
}

/// @nodoc
abstract class _$$UpdateFromFileCopyWith<$Res> {
  factory _$$UpdateFromFileCopyWith(
          _$UpdateFromFile value, $Res Function(_$UpdateFromFile) then) =
      __$$UpdateFromFileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateFromFileCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res>
    implements _$$UpdateFromFileCopyWith<$Res> {
  __$$UpdateFromFileCopyWithImpl(
      _$UpdateFromFile _value, $Res Function(_$UpdateFromFile) _then)
      : super(_value, (v) => _then(v as _$UpdateFromFile));

  @override
  _$UpdateFromFile get _value => super._value as _$UpdateFromFile;
}

/// @nodoc

class _$UpdateFromFile implements UpdateFromFile {
  const _$UpdateFromFile();

  @override
  String toString() {
    return 'UpdateEvent.updateFromFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateFromFile);
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
    TResult Function()? checkUpdate,
    TResult Function()? popupChangelog,
    TResult Function()? downloadUpdate,
    TResult Function(int bytes, int total)? downloading,
    TResult Function()? cancelDownload,
    TResult Function()? updateFromFile,
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
    TResult Function(CheckUpdate value)? checkUpdate,
    TResult Function(PopupChangelog value)? popupChangelog,
    TResult Function(DownloadUpdate value)? downloadUpdate,
    TResult Function(UpdateDownloading value)? downloading,
    TResult Function(CancelDownload value)? cancelDownload,
    TResult Function(UpdateFromFile value)? updateFromFile,
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
  const factory UpdateFromFile() = _$UpdateFromFile;
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
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloadInProgress,
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
    TResult Function(UpdateInitial value)? initial,
    TResult Function(UpdateAvailable value)? updateAvailable,
    TResult Function(UpdateConnecting value)? connecting,
    TResult Function(UpdateDownloadInProgress value)? downloadInProgress,
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
      _$UpdateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateStateCopyWithImpl<$Res> implements $UpdateStateCopyWith<$Res> {
  _$UpdateStateCopyWithImpl(this._value, this._then);

  final UpdateState _value;
  // ignore: unused_field
  final $Res Function(UpdateState) _then;
}

/// @nodoc
abstract class _$$UpdateInitialCopyWith<$Res> {
  factory _$$UpdateInitialCopyWith(
          _$UpdateInitial value, $Res Function(_$UpdateInitial) then) =
      __$$UpdateInitialCopyWithImpl<$Res>;
  $Res call({ShowChangelog? showChangelog});

  $ShowChangelogCopyWith<$Res>? get showChangelog;
}

/// @nodoc
class __$$UpdateInitialCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res>
    implements _$$UpdateInitialCopyWith<$Res> {
  __$$UpdateInitialCopyWithImpl(
      _$UpdateInitial _value, $Res Function(_$UpdateInitial) _then)
      : super(_value, (v) => _then(v as _$UpdateInitial));

  @override
  _$UpdateInitial get _value => super._value as _$UpdateInitial;

  @override
  $Res call({
    Object? showChangelog = freezed,
  }) {
    return _then(_$UpdateInitial(
      showChangelog: showChangelog == freezed
          ? _value.showChangelog
          : showChangelog // ignore: cast_nullable_to_non_nullable
              as ShowChangelog?,
    ));
  }

  @override
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

class _$UpdateInitial implements UpdateInitial {
  const _$UpdateInitial({this.showChangelog});

  @override
  final ShowChangelog? showChangelog;

  @override
  String toString() {
    return 'UpdateState.initial(showChangelog: $showChangelog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInitial &&
            const DeepCollectionEquality()
                .equals(other.showChangelog, showChangelog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(showChangelog));

  @JsonKey(ignore: true)
  @override
  _$$UpdateInitialCopyWith<_$UpdateInitial> get copyWith =>
      __$$UpdateInitialCopyWithImpl<_$UpdateInitial>(this, _$identity);

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
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloadInProgress,
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
    TResult Function(UpdateInitial value)? initial,
    TResult Function(UpdateAvailable value)? updateAvailable,
    TResult Function(UpdateConnecting value)? connecting,
    TResult Function(UpdateDownloadInProgress value)? downloadInProgress,
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
      _$UpdateInitial;

  ShowChangelog? get showChangelog;
  @JsonKey(ignore: true)
  _$$UpdateInitialCopyWith<_$UpdateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAvailableCopyWith<$Res> {
  factory _$$UpdateAvailableCopyWith(
          _$UpdateAvailable value, $Res Function(_$UpdateAvailable) then) =
      __$$UpdateAvailableCopyWithImpl<$Res>;
  $Res call({String version});
}

/// @nodoc
class __$$UpdateAvailableCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res>
    implements _$$UpdateAvailableCopyWith<$Res> {
  __$$UpdateAvailableCopyWithImpl(
      _$UpdateAvailable _value, $Res Function(_$UpdateAvailable) _then)
      : super(_value, (v) => _then(v as _$UpdateAvailable));

  @override
  _$UpdateAvailable get _value => super._value as _$UpdateAvailable;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_$UpdateAvailable(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateAvailable implements UpdateAvailable {
  const _$UpdateAvailable({required this.version});

  @override
  final String version;

  @override
  String toString() {
    return 'UpdateState.updateAvailable(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAvailable &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$UpdateAvailableCopyWith<_$UpdateAvailable> get copyWith =>
      __$$UpdateAvailableCopyWithImpl<_$UpdateAvailable>(this, _$identity);

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
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloadInProgress,
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
    TResult Function(UpdateInitial value)? initial,
    TResult Function(UpdateAvailable value)? updateAvailable,
    TResult Function(UpdateConnecting value)? connecting,
    TResult Function(UpdateDownloadInProgress value)? downloadInProgress,
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
      _$UpdateAvailable;

  String get version;
  @JsonKey(ignore: true)
  _$$UpdateAvailableCopyWith<_$UpdateAvailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateConnectingCopyWith<$Res> {
  factory _$$UpdateConnectingCopyWith(
          _$UpdateConnecting value, $Res Function(_$UpdateConnecting) then) =
      __$$UpdateConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateConnectingCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res>
    implements _$$UpdateConnectingCopyWith<$Res> {
  __$$UpdateConnectingCopyWithImpl(
      _$UpdateConnecting _value, $Res Function(_$UpdateConnecting) _then)
      : super(_value, (v) => _then(v as _$UpdateConnecting));

  @override
  _$UpdateConnecting get _value => super._value as _$UpdateConnecting;
}

/// @nodoc

class _$UpdateConnecting implements UpdateConnecting {
  const _$UpdateConnecting();

  @override
  String toString() {
    return 'UpdateState.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateConnecting);
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
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloadInProgress,
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
    TResult Function(UpdateInitial value)? initial,
    TResult Function(UpdateAvailable value)? updateAvailable,
    TResult Function(UpdateConnecting value)? connecting,
    TResult Function(UpdateDownloadInProgress value)? downloadInProgress,
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
  const factory UpdateConnecting() = _$UpdateConnecting;
}

/// @nodoc
abstract class _$$UpdateDownloadInProgressCopyWith<$Res> {
  factory _$$UpdateDownloadInProgressCopyWith(_$UpdateDownloadInProgress value,
          $Res Function(_$UpdateDownloadInProgress) then) =
      __$$UpdateDownloadInProgressCopyWithImpl<$Res>;
  $Res call({int bytes, int total});
}

/// @nodoc
class __$$UpdateDownloadInProgressCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res>
    implements _$$UpdateDownloadInProgressCopyWith<$Res> {
  __$$UpdateDownloadInProgressCopyWithImpl(_$UpdateDownloadInProgress _value,
      $Res Function(_$UpdateDownloadInProgress) _then)
      : super(_value, (v) => _then(v as _$UpdateDownloadInProgress));

  @override
  _$UpdateDownloadInProgress get _value =>
      super._value as _$UpdateDownloadInProgress;

  @override
  $Res call({
    Object? bytes = freezed,
    Object? total = freezed,
  }) {
    return _then(_$UpdateDownloadInProgress(
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateDownloadInProgress implements UpdateDownloadInProgress {
  const _$UpdateDownloadInProgress({required this.bytes, required this.total});

  @override
  final int bytes;
  @override
  final int total;

  @override
  String toString() {
    return 'UpdateState.downloadInProgress(bytes: $bytes, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDownloadInProgress &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bytes),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$UpdateDownloadInProgressCopyWith<_$UpdateDownloadInProgress>
      get copyWith =>
          __$$UpdateDownloadInProgressCopyWithImpl<_$UpdateDownloadInProgress>(
              this, _$identity);

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
    TResult Function(ShowChangelog? showChangelog)? initial,
    TResult Function(String version)? updateAvailable,
    TResult Function()? connecting,
    TResult Function(int bytes, int total)? downloadInProgress,
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
    TResult Function(UpdateInitial value)? initial,
    TResult Function(UpdateAvailable value)? updateAvailable,
    TResult Function(UpdateConnecting value)? connecting,
    TResult Function(UpdateDownloadInProgress value)? downloadInProgress,
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
      required final int total}) = _$UpdateDownloadInProgress;

  int get bytes;
  int get total;
  @JsonKey(ignore: true)
  _$$UpdateDownloadInProgressCopyWith<_$UpdateDownloadInProgress>
      get copyWith => throw _privateConstructorUsedError;
}
