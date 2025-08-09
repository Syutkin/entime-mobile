// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEvent()';
}


}

/// @nodoc
class $UpdateEventCopyWith<$Res>  {
$UpdateEventCopyWith(UpdateEvent _, $Res Function(UpdateEvent) __);
}


/// Adds pattern-matching-related methods to [UpdateEvent].
extension UpdateEventPatterns on UpdateEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckUpdate value)?  checkUpdate,TResult Function( _PopupChangelog value)?  popupChangelog,TResult Function( _DownloadUpdate value)?  downloadUpdate,TResult Function( _Downloading value)?  downloading,TResult Function( _CancelDownload value)?  cancelDownload,TResult Function( _DownloadError value)?  downloadError,TResult Function( _UpdateFromFile value)?  updateFromFile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckUpdate() when checkUpdate != null:
return checkUpdate(_that);case _PopupChangelog() when popupChangelog != null:
return popupChangelog(_that);case _DownloadUpdate() when downloadUpdate != null:
return downloadUpdate(_that);case _Downloading() when downloading != null:
return downloading(_that);case _CancelDownload() when cancelDownload != null:
return cancelDownload(_that);case _DownloadError() when downloadError != null:
return downloadError(_that);case _UpdateFromFile() when updateFromFile != null:
return updateFromFile(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckUpdate value)  checkUpdate,required TResult Function( _PopupChangelog value)  popupChangelog,required TResult Function( _DownloadUpdate value)  downloadUpdate,required TResult Function( _Downloading value)  downloading,required TResult Function( _CancelDownload value)  cancelDownload,required TResult Function( _DownloadError value)  downloadError,required TResult Function( _UpdateFromFile value)  updateFromFile,}){
final _that = this;
switch (_that) {
case _CheckUpdate():
return checkUpdate(_that);case _PopupChangelog():
return popupChangelog(_that);case _DownloadUpdate():
return downloadUpdate(_that);case _Downloading():
return downloading(_that);case _CancelDownload():
return cancelDownload(_that);case _DownloadError():
return downloadError(_that);case _UpdateFromFile():
return updateFromFile(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckUpdate value)?  checkUpdate,TResult? Function( _PopupChangelog value)?  popupChangelog,TResult? Function( _DownloadUpdate value)?  downloadUpdate,TResult? Function( _Downloading value)?  downloading,TResult? Function( _CancelDownload value)?  cancelDownload,TResult? Function( _DownloadError value)?  downloadError,TResult? Function( _UpdateFromFile value)?  updateFromFile,}){
final _that = this;
switch (_that) {
case _CheckUpdate() when checkUpdate != null:
return checkUpdate(_that);case _PopupChangelog() when popupChangelog != null:
return popupChangelog(_that);case _DownloadUpdate() when downloadUpdate != null:
return downloadUpdate(_that);case _Downloading() when downloading != null:
return downloading(_that);case _CancelDownload() when cancelDownload != null:
return cancelDownload(_that);case _DownloadError() when downloadError != null:
return downloadError(_that);case _UpdateFromFile() when updateFromFile != null:
return updateFromFile(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkUpdate,TResult Function()?  popupChangelog,TResult Function()?  downloadUpdate,TResult Function( int bytes,  int total)?  downloading,TResult Function()?  cancelDownload,TResult Function( String error)?  downloadError,TResult Function()?  updateFromFile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckUpdate() when checkUpdate != null:
return checkUpdate();case _PopupChangelog() when popupChangelog != null:
return popupChangelog();case _DownloadUpdate() when downloadUpdate != null:
return downloadUpdate();case _Downloading() when downloading != null:
return downloading(_that.bytes,_that.total);case _CancelDownload() when cancelDownload != null:
return cancelDownload();case _DownloadError() when downloadError != null:
return downloadError(_that.error);case _UpdateFromFile() when updateFromFile != null:
return updateFromFile();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkUpdate,required TResult Function()  popupChangelog,required TResult Function()  downloadUpdate,required TResult Function( int bytes,  int total)  downloading,required TResult Function()  cancelDownload,required TResult Function( String error)  downloadError,required TResult Function()  updateFromFile,}) {final _that = this;
switch (_that) {
case _CheckUpdate():
return checkUpdate();case _PopupChangelog():
return popupChangelog();case _DownloadUpdate():
return downloadUpdate();case _Downloading():
return downloading(_that.bytes,_that.total);case _CancelDownload():
return cancelDownload();case _DownloadError():
return downloadError(_that.error);case _UpdateFromFile():
return updateFromFile();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkUpdate,TResult? Function()?  popupChangelog,TResult? Function()?  downloadUpdate,TResult? Function( int bytes,  int total)?  downloading,TResult? Function()?  cancelDownload,TResult? Function( String error)?  downloadError,TResult? Function()?  updateFromFile,}) {final _that = this;
switch (_that) {
case _CheckUpdate() when checkUpdate != null:
return checkUpdate();case _PopupChangelog() when popupChangelog != null:
return popupChangelog();case _DownloadUpdate() when downloadUpdate != null:
return downloadUpdate();case _Downloading() when downloading != null:
return downloading(_that.bytes,_that.total);case _CancelDownload() when cancelDownload != null:
return cancelDownload();case _DownloadError() when downloadError != null:
return downloadError(_that.error);case _UpdateFromFile() when updateFromFile != null:
return updateFromFile();case _:
  return null;

}
}

}

/// @nodoc


class _CheckUpdate implements UpdateEvent {
  const _CheckUpdate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckUpdate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEvent.checkUpdate()';
}


}




/// @nodoc


class _PopupChangelog implements UpdateEvent {
  const _PopupChangelog();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopupChangelog);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEvent.popupChangelog()';
}


}




/// @nodoc


class _DownloadUpdate implements UpdateEvent {
  const _DownloadUpdate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadUpdate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEvent.downloadUpdate()';
}


}




/// @nodoc


class _Downloading implements UpdateEvent {
  const _Downloading({required this.bytes, required this.total});
  

 final  int bytes;
 final  int total;

/// Create a copy of UpdateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadingCopyWith<_Downloading> get copyWith => __$DownloadingCopyWithImpl<_Downloading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Downloading&&(identical(other.bytes, bytes) || other.bytes == bytes)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,bytes,total);

@override
String toString() {
  return 'UpdateEvent.downloading(bytes: $bytes, total: $total)';
}


}

/// @nodoc
abstract mixin class _$DownloadingCopyWith<$Res> implements $UpdateEventCopyWith<$Res> {
  factory _$DownloadingCopyWith(_Downloading value, $Res Function(_Downloading) _then) = __$DownloadingCopyWithImpl;
@useResult
$Res call({
 int bytes, int total
});




}
/// @nodoc
class __$DownloadingCopyWithImpl<$Res>
    implements _$DownloadingCopyWith<$Res> {
  __$DownloadingCopyWithImpl(this._self, this._then);

  final _Downloading _self;
  final $Res Function(_Downloading) _then;

/// Create a copy of UpdateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bytes = null,Object? total = null,}) {
  return _then(_Downloading(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CancelDownload implements UpdateEvent {
  const _CancelDownload();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelDownload);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEvent.cancelDownload()';
}


}




/// @nodoc


class _DownloadError implements UpdateEvent {
  const _DownloadError({required this.error});
  

 final  String error;

/// Create a copy of UpdateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadErrorCopyWith<_DownloadError> get copyWith => __$DownloadErrorCopyWithImpl<_DownloadError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UpdateEvent.downloadError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$DownloadErrorCopyWith<$Res> implements $UpdateEventCopyWith<$Res> {
  factory _$DownloadErrorCopyWith(_DownloadError value, $Res Function(_DownloadError) _then) = __$DownloadErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$DownloadErrorCopyWithImpl<$Res>
    implements _$DownloadErrorCopyWith<$Res> {
  __$DownloadErrorCopyWithImpl(this._self, this._then);

  final _DownloadError _self;
  final $Res Function(_DownloadError) _then;

/// Create a copy of UpdateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_DownloadError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateFromFile implements UpdateEvent {
  const _UpdateFromFile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFromFile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEvent.updateFromFile()';
}


}




/// @nodoc
mixin _$UpdateState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateState()';
}


}

/// @nodoc
class $UpdateStateCopyWith<$Res>  {
$UpdateStateCopyWith(UpdateState _, $Res Function(UpdateState) __);
}


/// Adds pattern-matching-related methods to [UpdateState].
extension UpdateStatePatterns on UpdateState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateStateInitial value)?  initial,TResult Function( UpdateStateUpdateAvailable value)?  updateAvailable,TResult Function( UpdateStateConnecting value)?  connecting,TResult Function( UpdateStateDownloading value)?  downloading,TResult Function( UpdateStateDownloadError value)?  downloadError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateStateInitial() when initial != null:
return initial(_that);case UpdateStateUpdateAvailable() when updateAvailable != null:
return updateAvailable(_that);case UpdateStateConnecting() when connecting != null:
return connecting(_that);case UpdateStateDownloading() when downloading != null:
return downloading(_that);case UpdateStateDownloadError() when downloadError != null:
return downloadError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateStateInitial value)  initial,required TResult Function( UpdateStateUpdateAvailable value)  updateAvailable,required TResult Function( UpdateStateConnecting value)  connecting,required TResult Function( UpdateStateDownloading value)  downloading,required TResult Function( UpdateStateDownloadError value)  downloadError,}){
final _that = this;
switch (_that) {
case UpdateStateInitial():
return initial(_that);case UpdateStateUpdateAvailable():
return updateAvailable(_that);case UpdateStateConnecting():
return connecting(_that);case UpdateStateDownloading():
return downloading(_that);case UpdateStateDownloadError():
return downloadError(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateStateInitial value)?  initial,TResult? Function( UpdateStateUpdateAvailable value)?  updateAvailable,TResult? Function( UpdateStateConnecting value)?  connecting,TResult? Function( UpdateStateDownloading value)?  downloading,TResult? Function( UpdateStateDownloadError value)?  downloadError,}){
final _that = this;
switch (_that) {
case UpdateStateInitial() when initial != null:
return initial(_that);case UpdateStateUpdateAvailable() when updateAvailable != null:
return updateAvailable(_that);case UpdateStateConnecting() when connecting != null:
return connecting(_that);case UpdateStateDownloading() when downloading != null:
return downloading(_that);case UpdateStateDownloadError() when downloadError != null:
return downloadError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? changelog)?  initial,TResult Function( String version)?  updateAvailable,TResult Function()?  connecting,TResult Function( int bytes,  int total)?  downloading,TResult Function( String error)?  downloadError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateStateInitial() when initial != null:
return initial(_that.changelog);case UpdateStateUpdateAvailable() when updateAvailable != null:
return updateAvailable(_that.version);case UpdateStateConnecting() when connecting != null:
return connecting();case UpdateStateDownloading() when downloading != null:
return downloading(_that.bytes,_that.total);case UpdateStateDownloadError() when downloadError != null:
return downloadError(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? changelog)  initial,required TResult Function( String version)  updateAvailable,required TResult Function()  connecting,required TResult Function( int bytes,  int total)  downloading,required TResult Function( String error)  downloadError,}) {final _that = this;
switch (_that) {
case UpdateStateInitial():
return initial(_that.changelog);case UpdateStateUpdateAvailable():
return updateAvailable(_that.version);case UpdateStateConnecting():
return connecting();case UpdateStateDownloading():
return downloading(_that.bytes,_that.total);case UpdateStateDownloadError():
return downloadError(_that.error);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? changelog)?  initial,TResult? Function( String version)?  updateAvailable,TResult? Function()?  connecting,TResult? Function( int bytes,  int total)?  downloading,TResult? Function( String error)?  downloadError,}) {final _that = this;
switch (_that) {
case UpdateStateInitial() when initial != null:
return initial(_that.changelog);case UpdateStateUpdateAvailable() when updateAvailable != null:
return updateAvailable(_that.version);case UpdateStateConnecting() when connecting != null:
return connecting();case UpdateStateDownloading() when downloading != null:
return downloading(_that.bytes,_that.total);case UpdateStateDownloadError() when downloadError != null:
return downloadError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class UpdateStateInitial implements UpdateState {
  const UpdateStateInitial({this.changelog});
  

 final  String? changelog;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStateInitialCopyWith<UpdateStateInitial> get copyWith => _$UpdateStateInitialCopyWithImpl<UpdateStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStateInitial&&(identical(other.changelog, changelog) || other.changelog == changelog));
}


@override
int get hashCode => Object.hash(runtimeType,changelog);

@override
String toString() {
  return 'UpdateState.initial(changelog: $changelog)';
}


}

/// @nodoc
abstract mixin class $UpdateStateInitialCopyWith<$Res> implements $UpdateStateCopyWith<$Res> {
  factory $UpdateStateInitialCopyWith(UpdateStateInitial value, $Res Function(UpdateStateInitial) _then) = _$UpdateStateInitialCopyWithImpl;
@useResult
$Res call({
 String? changelog
});




}
/// @nodoc
class _$UpdateStateInitialCopyWithImpl<$Res>
    implements $UpdateStateInitialCopyWith<$Res> {
  _$UpdateStateInitialCopyWithImpl(this._self, this._then);

  final UpdateStateInitial _self;
  final $Res Function(UpdateStateInitial) _then;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? changelog = freezed,}) {
  return _then(UpdateStateInitial(
changelog: freezed == changelog ? _self.changelog : changelog // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UpdateStateUpdateAvailable implements UpdateState {
  const UpdateStateUpdateAvailable({required this.version});
  

 final  String version;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStateUpdateAvailableCopyWith<UpdateStateUpdateAvailable> get copyWith => _$UpdateStateUpdateAvailableCopyWithImpl<UpdateStateUpdateAvailable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStateUpdateAvailable&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString() {
  return 'UpdateState.updateAvailable(version: $version)';
}


}

/// @nodoc
abstract mixin class $UpdateStateUpdateAvailableCopyWith<$Res> implements $UpdateStateCopyWith<$Res> {
  factory $UpdateStateUpdateAvailableCopyWith(UpdateStateUpdateAvailable value, $Res Function(UpdateStateUpdateAvailable) _then) = _$UpdateStateUpdateAvailableCopyWithImpl;
@useResult
$Res call({
 String version
});




}
/// @nodoc
class _$UpdateStateUpdateAvailableCopyWithImpl<$Res>
    implements $UpdateStateUpdateAvailableCopyWith<$Res> {
  _$UpdateStateUpdateAvailableCopyWithImpl(this._self, this._then);

  final UpdateStateUpdateAvailable _self;
  final $Res Function(UpdateStateUpdateAvailable) _then;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? version = null,}) {
  return _then(UpdateStateUpdateAvailable(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateStateConnecting implements UpdateState {
  const UpdateStateConnecting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStateConnecting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateState.connecting()';
}


}




/// @nodoc


class UpdateStateDownloading implements UpdateState {
  const UpdateStateDownloading({required this.bytes, required this.total});
  

 final  int bytes;
 final  int total;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStateDownloadingCopyWith<UpdateStateDownloading> get copyWith => _$UpdateStateDownloadingCopyWithImpl<UpdateStateDownloading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStateDownloading&&(identical(other.bytes, bytes) || other.bytes == bytes)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,bytes,total);

@override
String toString() {
  return 'UpdateState.downloading(bytes: $bytes, total: $total)';
}


}

/// @nodoc
abstract mixin class $UpdateStateDownloadingCopyWith<$Res> implements $UpdateStateCopyWith<$Res> {
  factory $UpdateStateDownloadingCopyWith(UpdateStateDownloading value, $Res Function(UpdateStateDownloading) _then) = _$UpdateStateDownloadingCopyWithImpl;
@useResult
$Res call({
 int bytes, int total
});




}
/// @nodoc
class _$UpdateStateDownloadingCopyWithImpl<$Res>
    implements $UpdateStateDownloadingCopyWith<$Res> {
  _$UpdateStateDownloadingCopyWithImpl(this._self, this._then);

  final UpdateStateDownloading _self;
  final $Res Function(UpdateStateDownloading) _then;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bytes = null,Object? total = null,}) {
  return _then(UpdateStateDownloading(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateStateDownloadError implements UpdateState {
  const UpdateStateDownloadError({required this.error});
  

 final  String error;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStateDownloadErrorCopyWith<UpdateStateDownloadError> get copyWith => _$UpdateStateDownloadErrorCopyWithImpl<UpdateStateDownloadError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStateDownloadError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UpdateState.downloadError(error: $error)';
}


}

/// @nodoc
abstract mixin class $UpdateStateDownloadErrorCopyWith<$Res> implements $UpdateStateCopyWith<$Res> {
  factory $UpdateStateDownloadErrorCopyWith(UpdateStateDownloadError value, $Res Function(UpdateStateDownloadError) _then) = _$UpdateStateDownloadErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$UpdateStateDownloadErrorCopyWithImpl<$Res>
    implements $UpdateStateDownloadErrorCopyWith<$Res> {
  _$UpdateStateDownloadErrorCopyWithImpl(this._self, this._then);

  final UpdateStateDownloadError _self;
  final $Res Function(UpdateStateDownloadError) _then;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UpdateStateDownloadError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
