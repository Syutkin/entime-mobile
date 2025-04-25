// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrailsEvent()';
}


}

/// @nodoc
class $TrailsEventCopyWith<$Res>  {
$TrailsEventCopyWith(TrailsEvent _, $Res Function(TrailsEvent) __);
}


/// @nodoc


class _GetTrails implements TrailsEvent {
  const _GetTrails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTrails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrailsEvent.getTrails()';
}


}




/// @nodoc


class _AddTrail implements TrailsEvent {
  const _AddTrail({required this.name, this.distance, this.elevation, this.url, this.description, this.filePath});
  

 final  String name;
 final  int? distance;
 final  int? elevation;
 final  String? url;
 final  String? description;
 final  String? filePath;

/// Create a copy of TrailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTrailCopyWith<_AddTrail> get copyWith => __$AddTrailCopyWithImpl<_AddTrail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTrail&&(identical(other.name, name) || other.name == name)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.elevation, elevation) || other.elevation == elevation)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,name,distance,elevation,url,description,filePath);

@override
String toString() {
  return 'TrailsEvent.addTrail(name: $name, distance: $distance, elevation: $elevation, url: $url, description: $description, filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class _$AddTrailCopyWith<$Res> implements $TrailsEventCopyWith<$Res> {
  factory _$AddTrailCopyWith(_AddTrail value, $Res Function(_AddTrail) _then) = __$AddTrailCopyWithImpl;
@useResult
$Res call({
 String name, int? distance, int? elevation, String? url, String? description, String? filePath
});




}
/// @nodoc
class __$AddTrailCopyWithImpl<$Res>
    implements _$AddTrailCopyWith<$Res> {
  __$AddTrailCopyWithImpl(this._self, this._then);

  final _AddTrail _self;
  final $Res Function(_AddTrail) _then;

/// Create a copy of TrailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? distance = freezed,Object? elevation = freezed,Object? url = freezed,Object? description = freezed,Object? filePath = freezed,}) {
  return _then(_AddTrail(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as int?,elevation: freezed == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpdateTrail implements TrailsEvent {
  const _UpdateTrail({required this.id, this.name, this.distance, this.elevation, this.url, this.description, this.filePath, this.fileId, this.deleteTrack = false});
  

 final  int id;
 final  String? name;
 final  int? distance;
 final  int? elevation;
 final  String? url;
 final  String? description;
 final  String? filePath;
 final  int? fileId;
@JsonKey() final  bool deleteTrack;

/// Create a copy of TrailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTrailCopyWith<_UpdateTrail> get copyWith => __$UpdateTrailCopyWithImpl<_UpdateTrail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTrail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.elevation, elevation) || other.elevation == elevation)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.fileId, fileId) || other.fileId == fileId)&&(identical(other.deleteTrack, deleteTrack) || other.deleteTrack == deleteTrack));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,distance,elevation,url,description,filePath,fileId,deleteTrack);

@override
String toString() {
  return 'TrailsEvent.updateTrail(id: $id, name: $name, distance: $distance, elevation: $elevation, url: $url, description: $description, filePath: $filePath, fileId: $fileId, deleteTrack: $deleteTrack)';
}


}

/// @nodoc
abstract mixin class _$UpdateTrailCopyWith<$Res> implements $TrailsEventCopyWith<$Res> {
  factory _$UpdateTrailCopyWith(_UpdateTrail value, $Res Function(_UpdateTrail) _then) = __$UpdateTrailCopyWithImpl;
@useResult
$Res call({
 int id, String? name, int? distance, int? elevation, String? url, String? description, String? filePath, int? fileId, bool deleteTrack
});




}
/// @nodoc
class __$UpdateTrailCopyWithImpl<$Res>
    implements _$UpdateTrailCopyWith<$Res> {
  __$UpdateTrailCopyWithImpl(this._self, this._then);

  final _UpdateTrail _self;
  final $Res Function(_UpdateTrail) _then;

/// Create a copy of TrailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? distance = freezed,Object? elevation = freezed,Object? url = freezed,Object? description = freezed,Object? filePath = freezed,Object? fileId = freezed,Object? deleteTrack = null,}) {
  return _then(_UpdateTrail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as int?,elevation: freezed == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,fileId: freezed == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as int?,deleteTrack: null == deleteTrack ? _self.deleteTrack : deleteTrack // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _DeleteTrail implements TrailsEvent {
  const _DeleteTrail(this.id);
  

 final  int id;

/// Create a copy of TrailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTrailCopyWith<_DeleteTrail> get copyWith => __$DeleteTrailCopyWithImpl<_DeleteTrail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTrail&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TrailsEvent.deleteTrail(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTrailCopyWith<$Res> implements $TrailsEventCopyWith<$Res> {
  factory _$DeleteTrailCopyWith(_DeleteTrail value, $Res Function(_DeleteTrail) _then) = __$DeleteTrailCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteTrailCopyWithImpl<$Res>
    implements _$DeleteTrailCopyWith<$Res> {
  __$DeleteTrailCopyWithImpl(this._self, this._then);

  final _DeleteTrail _self;
  final $Res Function(_DeleteTrail) _then;

/// Create a copy of TrailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTrail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadTrack implements TrailsEvent {
  const _LoadTrack({required this.filePath});
  

 final  String filePath;

/// Create a copy of TrailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadTrackCopyWith<_LoadTrack> get copyWith => __$LoadTrackCopyWithImpl<_LoadTrack>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadTrack&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,filePath);

@override
String toString() {
  return 'TrailsEvent.loadTrack(filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class _$LoadTrackCopyWith<$Res> implements $TrailsEventCopyWith<$Res> {
  factory _$LoadTrackCopyWith(_LoadTrack value, $Res Function(_LoadTrack) _then) = __$LoadTrackCopyWithImpl;
@useResult
$Res call({
 String filePath
});




}
/// @nodoc
class __$LoadTrackCopyWithImpl<$Res>
    implements _$LoadTrackCopyWith<$Res> {
  __$LoadTrackCopyWithImpl(this._self, this._then);

  final _LoadTrack _self;
  final $Res Function(_LoadTrack) _then;

/// Create a copy of TrailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,}) {
  return _then(_LoadTrack(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UnloadTrack implements TrailsEvent {
  const _UnloadTrack();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnloadTrack);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrailsEvent.unloadTrack()';
}


}




/// @nodoc


class _EmitTrack implements TrailsEvent {
  const _EmitTrack({required this.track});
  

 final  TrackFile track;

/// Create a copy of TrailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmitTrackCopyWith<_EmitTrack> get copyWith => __$EmitTrackCopyWithImpl<_EmitTrack>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmitTrack&&const DeepCollectionEquality().equals(other.track, track));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(track));

@override
String toString() {
  return 'TrailsEvent.emitTrack(track: $track)';
}


}

/// @nodoc
abstract mixin class _$EmitTrackCopyWith<$Res> implements $TrailsEventCopyWith<$Res> {
  factory _$EmitTrackCopyWith(_EmitTrack value, $Res Function(_EmitTrack) _then) = __$EmitTrackCopyWithImpl;
@useResult
$Res call({
 TrackFile track
});




}
/// @nodoc
class __$EmitTrackCopyWithImpl<$Res>
    implements _$EmitTrackCopyWith<$Res> {
  __$EmitTrackCopyWithImpl(this._self, this._then);

  final _EmitTrack _self;
  final $Res Function(_EmitTrack) _then;

/// Create a copy of TrailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? track = freezed,}) {
  return _then(_EmitTrack(
track: freezed == track ? _self.track : track // ignore: cast_nullable_to_non_nullable
as TrackFile,
  ));
}


}

/// @nodoc
mixin _$TrailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrailsState()';
}


}

/// @nodoc
class $TrailsStateCopyWith<$Res>  {
$TrailsStateCopyWith(TrailsState _, $Res Function(TrailsState) __);
}


/// @nodoc


class Initial implements TrailsState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrailsState.initial()';
}


}




/// @nodoc


class Initialized implements TrailsState {
  const Initialized({required final  List<TrailInfo> trails, this.track}): _trails = trails;
  

 final  List<TrailInfo> _trails;
 List<TrailInfo> get trails {
  if (_trails is EqualUnmodifiableListView) return _trails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trails);
}

 final  TrackFile? track;

/// Create a copy of TrailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitializedCopyWith<Initialized> get copyWith => _$InitializedCopyWithImpl<Initialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initialized&&const DeepCollectionEquality().equals(other._trails, _trails)&&const DeepCollectionEquality().equals(other.track, track));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trails),const DeepCollectionEquality().hash(track));

@override
String toString() {
  return 'TrailsState.initialized(trails: $trails, track: $track)';
}


}

/// @nodoc
abstract mixin class $InitializedCopyWith<$Res> implements $TrailsStateCopyWith<$Res> {
  factory $InitializedCopyWith(Initialized value, $Res Function(Initialized) _then) = _$InitializedCopyWithImpl;
@useResult
$Res call({
 List<TrailInfo> trails, TrackFile? track
});




}
/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(this._self, this._then);

  final Initialized _self;
  final $Res Function(Initialized) _then;

/// Create a copy of TrailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trails = null,Object? track = freezed,}) {
  return _then(Initialized(
trails: null == trails ? _self._trails : trails // ignore: cast_nullable_to_non_nullable
as List<TrailInfo>,track: freezed == track ? _self.track : track // ignore: cast_nullable_to_non_nullable
as TrackFile?,
  ));
}


}

/// @nodoc


class LoadingTrack implements TrailsState {
  const LoadingTrack({required final  List<TrailInfo> trails}): _trails = trails;
  

 final  List<TrailInfo> _trails;
 List<TrailInfo> get trails {
  if (_trails is EqualUnmodifiableListView) return _trails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trails);
}


/// Create a copy of TrailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingTrackCopyWith<LoadingTrack> get copyWith => _$LoadingTrackCopyWithImpl<LoadingTrack>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingTrack&&const DeepCollectionEquality().equals(other._trails, _trails));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trails));

@override
String toString() {
  return 'TrailsState.loadingTrack(trails: $trails)';
}


}

/// @nodoc
abstract mixin class $LoadingTrackCopyWith<$Res> implements $TrailsStateCopyWith<$Res> {
  factory $LoadingTrackCopyWith(LoadingTrack value, $Res Function(LoadingTrack) _then) = _$LoadingTrackCopyWithImpl;
@useResult
$Res call({
 List<TrailInfo> trails
});




}
/// @nodoc
class _$LoadingTrackCopyWithImpl<$Res>
    implements $LoadingTrackCopyWith<$Res> {
  _$LoadingTrackCopyWithImpl(this._self, this._then);

  final LoadingTrack _self;
  final $Res Function(LoadingTrack) _then;

/// Create a copy of TrailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trails = null,}) {
  return _then(LoadingTrack(
trails: null == trails ? _self._trails : trails // ignore: cast_nullable_to_non_nullable
as List<TrailInfo>,
  ));
}


}

// dart format on
