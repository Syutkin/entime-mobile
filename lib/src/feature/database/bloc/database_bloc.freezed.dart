// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DatabaseEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatabaseEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent()';
}


}

/// @nodoc
class $DatabaseEventCopyWith<$Res>  {
$DatabaseEventCopyWith(DatabaseEvent _, $Res Function(DatabaseEvent) __);
}


/// @nodoc


class _Initialize with DiagnosticableTreeMixin implements DatabaseEvent {
  const _Initialize();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.initialize'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.initialize()';
}


}




/// @nodoc


class _EmitState with DiagnosticableTreeMixin implements DatabaseEvent {
  const _EmitState({required this.race, required this.stage, required final  List<Race> races, required final  List<Stage> stages, required final  List<String?> categories, required final  List<Rider> riders, required final  List<ParticipantAtStart> participants, required final  List<Finish> finishes, required final  List<StartingParticipant> numbersOnTrace, required this.notification, required this.autoFinishNumber, required this.awaitingNumber, required this.updateFinishNumber}): _races = races,_stages = stages,_categories = categories,_riders = riders,_participants = participants,_finishes = finishes,_numbersOnTrace = numbersOnTrace;
  

 final  Race? race;
 final  Stage? stage;
 final  List<Race> _races;
 List<Race> get races {
  if (_races is EqualUnmodifiableListView) return _races;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_races);
}

 final  List<Stage> _stages;
 List<Stage> get stages {
  if (_stages is EqualUnmodifiableListView) return _stages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stages);
}

 final  List<String?> _categories;
 List<String?> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<Rider> _riders;
 List<Rider> get riders {
  if (_riders is EqualUnmodifiableListView) return _riders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riders);
}

 final  List<ParticipantAtStart> _participants;
 List<ParticipantAtStart> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}

// required List<Start> starts,
 final  List<Finish> _finishes;
// required List<Start> starts,
 List<Finish> get finishes {
  if (_finishes is EqualUnmodifiableListView) return _finishes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_finishes);
}

 final  List<StartingParticipant> _numbersOnTrace;
 List<StartingParticipant> get numbersOnTrace {
  if (_numbersOnTrace is EqualUnmodifiableListView) return _numbersOnTrace;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_numbersOnTrace);
}

 final  Notification? notification;
 final  int? autoFinishNumber;
 final  int? awaitingNumber;
 final  bool? updateFinishNumber;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmitStateCopyWith<_EmitState> get copyWith => __$EmitStateCopyWithImpl<_EmitState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.emitState'))
    ..add(DiagnosticsProperty('race', race))..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('races', races))..add(DiagnosticsProperty('stages', stages))..add(DiagnosticsProperty('categories', categories))..add(DiagnosticsProperty('riders', riders))..add(DiagnosticsProperty('participants', participants))..add(DiagnosticsProperty('finishes', finishes))..add(DiagnosticsProperty('numbersOnTrace', numbersOnTrace))..add(DiagnosticsProperty('notification', notification))..add(DiagnosticsProperty('autoFinishNumber', autoFinishNumber))..add(DiagnosticsProperty('awaitingNumber', awaitingNumber))..add(DiagnosticsProperty('updateFinishNumber', updateFinishNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmitState&&const DeepCollectionEquality().equals(other.race, race)&&const DeepCollectionEquality().equals(other.stage, stage)&&const DeepCollectionEquality().equals(other._races, _races)&&const DeepCollectionEquality().equals(other._stages, _stages)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._riders, _riders)&&const DeepCollectionEquality().equals(other._participants, _participants)&&const DeepCollectionEquality().equals(other._finishes, _finishes)&&const DeepCollectionEquality().equals(other._numbersOnTrace, _numbersOnTrace)&&(identical(other.notification, notification) || other.notification == notification)&&(identical(other.autoFinishNumber, autoFinishNumber) || other.autoFinishNumber == autoFinishNumber)&&(identical(other.awaitingNumber, awaitingNumber) || other.awaitingNumber == awaitingNumber)&&(identical(other.updateFinishNumber, updateFinishNumber) || other.updateFinishNumber == updateFinishNumber));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(race),const DeepCollectionEquality().hash(stage),const DeepCollectionEquality().hash(_races),const DeepCollectionEquality().hash(_stages),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_riders),const DeepCollectionEquality().hash(_participants),const DeepCollectionEquality().hash(_finishes),const DeepCollectionEquality().hash(_numbersOnTrace),notification,autoFinishNumber,awaitingNumber,updateFinishNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.emitState(race: $race, stage: $stage, races: $races, stages: $stages, categories: $categories, riders: $riders, participants: $participants, finishes: $finishes, numbersOnTrace: $numbersOnTrace, notification: $notification, autoFinishNumber: $autoFinishNumber, awaitingNumber: $awaitingNumber, updateFinishNumber: $updateFinishNumber)';
}


}

/// @nodoc
abstract mixin class _$EmitStateCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$EmitStateCopyWith(_EmitState value, $Res Function(_EmitState) _then) = __$EmitStateCopyWithImpl;
@useResult
$Res call({
 Race? race, Stage? stage, List<Race> races, List<Stage> stages, List<String?> categories, List<Rider> riders, List<ParticipantAtStart> participants, List<Finish> finishes, List<StartingParticipant> numbersOnTrace, Notification? notification, int? autoFinishNumber, int? awaitingNumber, bool? updateFinishNumber
});


$NotificationCopyWith<$Res>? get notification;

}
/// @nodoc
class __$EmitStateCopyWithImpl<$Res>
    implements _$EmitStateCopyWith<$Res> {
  __$EmitStateCopyWithImpl(this._self, this._then);

  final _EmitState _self;
  final $Res Function(_EmitState) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? race = freezed,Object? stage = freezed,Object? races = null,Object? stages = null,Object? categories = null,Object? riders = null,Object? participants = null,Object? finishes = null,Object? numbersOnTrace = null,Object? notification = freezed,Object? autoFinishNumber = freezed,Object? awaitingNumber = freezed,Object? updateFinishNumber = freezed,}) {
  return _then(_EmitState(
race: freezed == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as Race?,stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage?,races: null == races ? _self._races : races // ignore: cast_nullable_to_non_nullable
as List<Race>,stages: null == stages ? _self._stages : stages // ignore: cast_nullable_to_non_nullable
as List<Stage>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String?>,riders: null == riders ? _self._riders : riders // ignore: cast_nullable_to_non_nullable
as List<Rider>,participants: null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantAtStart>,finishes: null == finishes ? _self._finishes : finishes // ignore: cast_nullable_to_non_nullable
as List<Finish>,numbersOnTrace: null == numbersOnTrace ? _self._numbersOnTrace : numbersOnTrace // ignore: cast_nullable_to_non_nullable
as List<StartingParticipant>,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as Notification?,autoFinishNumber: freezed == autoFinishNumber ? _self.autoFinishNumber : autoFinishNumber // ignore: cast_nullable_to_non_nullable
as int?,awaitingNumber: freezed == awaitingNumber ? _self.awaitingNumber : awaitingNumber // ignore: cast_nullable_to_non_nullable
as int?,updateFinishNumber: freezed == updateFinishNumber ? _self.updateFinishNumber : updateFinishNumber // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationCopyWith<$Res>? get notification {
    if (_self.notification == null) {
    return null;
  }

  return $NotificationCopyWith<$Res>(_self.notification!, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

/// @nodoc


class _AddRace with DiagnosticableTreeMixin implements DatabaseEvent {
  const _AddRace({required this.name, this.startDate, this.finishDate, this.location, this.url, this.description});
  

 final  String name;
 final  DateTime? startDate;
 final  DateTime? finishDate;
 final  String? location;
 final  String? url;
 final  String? description;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddRaceCopyWith<_AddRace> get copyWith => __$AddRaceCopyWithImpl<_AddRace>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.addRace'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('finishDate', finishDate))..add(DiagnosticsProperty('location', location))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddRace&&(identical(other.name, name) || other.name == name)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.finishDate, finishDate) || other.finishDate == finishDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,name,startDate,finishDate,location,url,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.addRace(name: $name, startDate: $startDate, finishDate: $finishDate, location: $location, url: $url, description: $description)';
}


}

/// @nodoc
abstract mixin class _$AddRaceCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$AddRaceCopyWith(_AddRace value, $Res Function(_AddRace) _then) = __$AddRaceCopyWithImpl;
@useResult
$Res call({
 String name, DateTime? startDate, DateTime? finishDate, String? location, String? url, String? description
});




}
/// @nodoc
class __$AddRaceCopyWithImpl<$Res>
    implements _$AddRaceCopyWith<$Res> {
  __$AddRaceCopyWithImpl(this._self, this._then);

  final _AddRace _self;
  final $Res Function(_AddRace) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? startDate = freezed,Object? finishDate = freezed,Object? location = freezed,Object? url = freezed,Object? description = freezed,}) {
  return _then(_AddRace(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,finishDate: freezed == finishDate ? _self.finishDate : finishDate // ignore: cast_nullable_to_non_nullable
as DateTime?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpdateRace with DiagnosticableTreeMixin implements DatabaseEvent {
  const _UpdateRace({required this.id, this.name, this.startDate, this.finishDate, this.location, this.url, this.description});
  

 final  int id;
 final  String? name;
 final  DateTime? startDate;
 final  DateTime? finishDate;
 final  String? location;
 final  String? url;
 final  String? description;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateRaceCopyWith<_UpdateRace> get copyWith => __$UpdateRaceCopyWithImpl<_UpdateRace>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.updateRace'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('finishDate', finishDate))..add(DiagnosticsProperty('location', location))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateRace&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.finishDate, finishDate) || other.finishDate == finishDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,startDate,finishDate,location,url,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.updateRace(id: $id, name: $name, startDate: $startDate, finishDate: $finishDate, location: $location, url: $url, description: $description)';
}


}

/// @nodoc
abstract mixin class _$UpdateRaceCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$UpdateRaceCopyWith(_UpdateRace value, $Res Function(_UpdateRace) _then) = __$UpdateRaceCopyWithImpl;
@useResult
$Res call({
 int id, String? name, DateTime? startDate, DateTime? finishDate, String? location, String? url, String? description
});




}
/// @nodoc
class __$UpdateRaceCopyWithImpl<$Res>
    implements _$UpdateRaceCopyWith<$Res> {
  __$UpdateRaceCopyWithImpl(this._self, this._then);

  final _UpdateRace _self;
  final $Res Function(_UpdateRace) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? startDate = freezed,Object? finishDate = freezed,Object? location = freezed,Object? url = freezed,Object? description = freezed,}) {
  return _then(_UpdateRace(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,finishDate: freezed == finishDate ? _self.finishDate : finishDate // ignore: cast_nullable_to_non_nullable
as DateTime?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpsertRace with DiagnosticableTreeMixin implements DatabaseEvent {
  const _UpsertRace({this.id, this.name, this.startDate, this.finishDate, this.location, this.url, this.description});
  

 final  int? id;
 final  String? name;
 final  DateTime? startDate;
 final  DateTime? finishDate;
 final  String? location;
 final  String? url;
 final  String? description;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpsertRaceCopyWith<_UpsertRace> get copyWith => __$UpsertRaceCopyWithImpl<_UpsertRace>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.upsertRace'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('finishDate', finishDate))..add(DiagnosticsProperty('location', location))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpsertRace&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.finishDate, finishDate) || other.finishDate == finishDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,startDate,finishDate,location,url,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.upsertRace(id: $id, name: $name, startDate: $startDate, finishDate: $finishDate, location: $location, url: $url, description: $description)';
}


}

/// @nodoc
abstract mixin class _$UpsertRaceCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$UpsertRaceCopyWith(_UpsertRace value, $Res Function(_UpsertRace) _then) = __$UpsertRaceCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, DateTime? startDate, DateTime? finishDate, String? location, String? url, String? description
});




}
/// @nodoc
class __$UpsertRaceCopyWithImpl<$Res>
    implements _$UpsertRaceCopyWith<$Res> {
  __$UpsertRaceCopyWithImpl(this._self, this._then);

  final _UpsertRace _self;
  final $Res Function(_UpsertRace) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? startDate = freezed,Object? finishDate = freezed,Object? location = freezed,Object? url = freezed,Object? description = freezed,}) {
  return _then(_UpsertRace(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,finishDate: freezed == finishDate ? _self.finishDate : finishDate // ignore: cast_nullable_to_non_nullable
as DateTime?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _DeleteRace with DiagnosticableTreeMixin implements DatabaseEvent {
  const _DeleteRace(this.id);
  

 final  int id;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteRaceCopyWith<_DeleteRace> get copyWith => __$DeleteRaceCopyWithImpl<_DeleteRace>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.deleteRace'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteRace&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.deleteRace(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteRaceCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$DeleteRaceCopyWith(_DeleteRace value, $Res Function(_DeleteRace) _then) = __$DeleteRaceCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteRaceCopyWithImpl<$Res>
    implements _$DeleteRaceCopyWith<$Res> {
  __$DeleteRaceCopyWithImpl(this._self, this._then);

  final _DeleteRace _self;
  final $Res Function(_DeleteRace) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteRace(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _GetRaces with DiagnosticableTreeMixin implements DatabaseEvent {
  const _GetRaces();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.getRaces'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRaces);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.getRaces()';
}


}




/// @nodoc


class _SelectRace with DiagnosticableTreeMixin implements DatabaseEvent {
  const _SelectRace(this.race);
  

 final  Race race;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectRaceCopyWith<_SelectRace> get copyWith => __$SelectRaceCopyWithImpl<_SelectRace>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.selectRace'))
    ..add(DiagnosticsProperty('race', race));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectRace&&const DeepCollectionEquality().equals(other.race, race));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(race));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.selectRace(race: $race)';
}


}

/// @nodoc
abstract mixin class _$SelectRaceCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$SelectRaceCopyWith(_SelectRace value, $Res Function(_SelectRace) _then) = __$SelectRaceCopyWithImpl;
@useResult
$Res call({
 Race race
});




}
/// @nodoc
class __$SelectRaceCopyWithImpl<$Res>
    implements _$SelectRaceCopyWith<$Res> {
  __$SelectRaceCopyWithImpl(this._self, this._then);

  final _SelectRace _self;
  final $Res Function(_SelectRace) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? race = freezed,}) {
  return _then(_SelectRace(
freezed == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as Race,
  ));
}


}

/// @nodoc


class _DeselectRace with DiagnosticableTreeMixin implements DatabaseEvent {
  const _DeselectRace();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.deselectRace'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeselectRace);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.deselectRace()';
}


}




/// @nodoc


class _AddStage with DiagnosticableTreeMixin implements DatabaseEvent {
  const _AddStage({required this.name, required this.raceId, this.trailId});
  

 final  String name;
 final  int raceId;
 final  int? trailId;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddStageCopyWith<_AddStage> get copyWith => __$AddStageCopyWithImpl<_AddStage>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.addStage'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('raceId', raceId))..add(DiagnosticsProperty('trailId', trailId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddStage&&(identical(other.name, name) || other.name == name)&&(identical(other.raceId, raceId) || other.raceId == raceId)&&(identical(other.trailId, trailId) || other.trailId == trailId));
}


@override
int get hashCode => Object.hash(runtimeType,name,raceId,trailId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.addStage(name: $name, raceId: $raceId, trailId: $trailId)';
}


}

/// @nodoc
abstract mixin class _$AddStageCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$AddStageCopyWith(_AddStage value, $Res Function(_AddStage) _then) = __$AddStageCopyWithImpl;
@useResult
$Res call({
 String name, int raceId, int? trailId
});




}
/// @nodoc
class __$AddStageCopyWithImpl<$Res>
    implements _$AddStageCopyWith<$Res> {
  __$AddStageCopyWithImpl(this._self, this._then);

  final _AddStage _self;
  final $Res Function(_AddStage) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? raceId = null,Object? trailId = freezed,}) {
  return _then(_AddStage(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,raceId: null == raceId ? _self.raceId : raceId // ignore: cast_nullable_to_non_nullable
as int,trailId: freezed == trailId ? _self.trailId : trailId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _UpsertStage with DiagnosticableTreeMixin implements DatabaseEvent {
  const _UpsertStage({this.id, this.name, this.description, this.raceId, this.trailId, this.isActive, this.isDeleted, this.removeTrailId = false});
  

 final  int? id;
 final  String? name;
 final  String? description;
 final  int? raceId;
 final  int? trailId;
 final  bool? isActive;
 final  bool? isDeleted;
@JsonKey() final  bool removeTrailId;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpsertStageCopyWith<_UpsertStage> get copyWith => __$UpsertStageCopyWithImpl<_UpsertStage>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.upsertStage'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('raceId', raceId))..add(DiagnosticsProperty('trailId', trailId))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('isDeleted', isDeleted))..add(DiagnosticsProperty('removeTrailId', removeTrailId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpsertStage&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.raceId, raceId) || other.raceId == raceId)&&(identical(other.trailId, trailId) || other.trailId == trailId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.removeTrailId, removeTrailId) || other.removeTrailId == removeTrailId));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,raceId,trailId,isActive,isDeleted,removeTrailId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.upsertStage(id: $id, name: $name, description: $description, raceId: $raceId, trailId: $trailId, isActive: $isActive, isDeleted: $isDeleted, removeTrailId: $removeTrailId)';
}


}

/// @nodoc
abstract mixin class _$UpsertStageCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$UpsertStageCopyWith(_UpsertStage value, $Res Function(_UpsertStage) _then) = __$UpsertStageCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? description, int? raceId, int? trailId, bool? isActive, bool? isDeleted, bool removeTrailId
});




}
/// @nodoc
class __$UpsertStageCopyWithImpl<$Res>
    implements _$UpsertStageCopyWith<$Res> {
  __$UpsertStageCopyWithImpl(this._self, this._then);

  final _UpsertStage _self;
  final $Res Function(_UpsertStage) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? raceId = freezed,Object? trailId = freezed,Object? isActive = freezed,Object? isDeleted = freezed,Object? removeTrailId = null,}) {
  return _then(_UpsertStage(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,raceId: freezed == raceId ? _self.raceId : raceId // ignore: cast_nullable_to_non_nullable
as int?,trailId: freezed == trailId ? _self.trailId : trailId // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,removeTrailId: null == removeTrailId ? _self.removeTrailId : removeTrailId // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _DeleteStage with DiagnosticableTreeMixin implements DatabaseEvent {
  const _DeleteStage(this.id);
  

 final  int id;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteStageCopyWith<_DeleteStage> get copyWith => __$DeleteStageCopyWithImpl<_DeleteStage>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.deleteStage'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteStage&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.deleteStage(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteStageCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$DeleteStageCopyWith(_DeleteStage value, $Res Function(_DeleteStage) _then) = __$DeleteStageCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteStageCopyWithImpl<$Res>
    implements _$DeleteStageCopyWith<$Res> {
  __$DeleteStageCopyWithImpl(this._self, this._then);

  final _DeleteStage _self;
  final $Res Function(_DeleteStage) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteStage(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _GetStages with DiagnosticableTreeMixin implements DatabaseEvent {
  const _GetStages(this.raceId);
  

 final  int raceId;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetStagesCopyWith<_GetStages> get copyWith => __$GetStagesCopyWithImpl<_GetStages>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.getStages'))
    ..add(DiagnosticsProperty('raceId', raceId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStages&&(identical(other.raceId, raceId) || other.raceId == raceId));
}


@override
int get hashCode => Object.hash(runtimeType,raceId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.getStages(raceId: $raceId)';
}


}

/// @nodoc
abstract mixin class _$GetStagesCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$GetStagesCopyWith(_GetStages value, $Res Function(_GetStages) _then) = __$GetStagesCopyWithImpl;
@useResult
$Res call({
 int raceId
});




}
/// @nodoc
class __$GetStagesCopyWithImpl<$Res>
    implements _$GetStagesCopyWith<$Res> {
  __$GetStagesCopyWithImpl(this._self, this._then);

  final _GetStages _self;
  final $Res Function(_GetStages) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? raceId = null,}) {
  return _then(_GetStages(
null == raceId ? _self.raceId : raceId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SelectStage with DiagnosticableTreeMixin implements DatabaseEvent {
  const _SelectStage(this.stage);
  

 final  Stage stage;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectStageCopyWith<_SelectStage> get copyWith => __$SelectStageCopyWithImpl<_SelectStage>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.selectStage'))
    ..add(DiagnosticsProperty('stage', stage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectStage&&const DeepCollectionEquality().equals(other.stage, stage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stage));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.selectStage(stage: $stage)';
}


}

/// @nodoc
abstract mixin class _$SelectStageCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$SelectStageCopyWith(_SelectStage value, $Res Function(_SelectStage) _then) = __$SelectStageCopyWithImpl;
@useResult
$Res call({
 Stage stage
});




}
/// @nodoc
class __$SelectStageCopyWithImpl<$Res>
    implements _$SelectStageCopyWith<$Res> {
  __$SelectStageCopyWithImpl(this._self, this._then);

  final _SelectStage _self;
  final $Res Function(_SelectStage) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stage = freezed,}) {
  return _then(_SelectStage(
freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage,
  ));
}


}

/// @nodoc


class _GetParticipantsAtStart with DiagnosticableTreeMixin implements DatabaseEvent {
  const _GetParticipantsAtStart(this.stageId);
  

 final  int stageId;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetParticipantsAtStartCopyWith<_GetParticipantsAtStart> get copyWith => __$GetParticipantsAtStartCopyWithImpl<_GetParticipantsAtStart>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.getParticipantsAtStart'))
    ..add(DiagnosticsProperty('stageId', stageId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetParticipantsAtStart&&(identical(other.stageId, stageId) || other.stageId == stageId));
}


@override
int get hashCode => Object.hash(runtimeType,stageId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.getParticipantsAtStart(stageId: $stageId)';
}


}

/// @nodoc
abstract mixin class _$GetParticipantsAtStartCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$GetParticipantsAtStartCopyWith(_GetParticipantsAtStart value, $Res Function(_GetParticipantsAtStart) _then) = __$GetParticipantsAtStartCopyWithImpl;
@useResult
$Res call({
 int stageId
});




}
/// @nodoc
class __$GetParticipantsAtStartCopyWithImpl<$Res>
    implements _$GetParticipantsAtStartCopyWith<$Res> {
  __$GetParticipantsAtStartCopyWithImpl(this._self, this._then);

  final _GetParticipantsAtStart _self;
  final $Res Function(_GetParticipantsAtStart) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,}) {
  return _then(_GetParticipantsAtStart(
null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddStartNumber with DiagnosticableTreeMixin implements DatabaseEvent {
  const _AddStartNumber({required this.stage, required this.number, required this.startTime, this.forceAdd = false});
  

 final  Stage stage;
 final  int number;
 final  String startTime;
@JsonKey() final  bool forceAdd;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddStartNumberCopyWith<_AddStartNumber> get copyWith => __$AddStartNumberCopyWithImpl<_AddStartNumber>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.addStartNumber'))
    ..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('startTime', startTime))..add(DiagnosticsProperty('forceAdd', forceAdd));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddStartNumber&&const DeepCollectionEquality().equals(other.stage, stage)&&(identical(other.number, number) || other.number == number)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.forceAdd, forceAdd) || other.forceAdd == forceAdd));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stage),number,startTime,forceAdd);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.addStartNumber(stage: $stage, number: $number, startTime: $startTime, forceAdd: $forceAdd)';
}


}

/// @nodoc
abstract mixin class _$AddStartNumberCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$AddStartNumberCopyWith(_AddStartNumber value, $Res Function(_AddStartNumber) _then) = __$AddStartNumberCopyWithImpl;
@useResult
$Res call({
 Stage stage, int number, String startTime, bool forceAdd
});




}
/// @nodoc
class __$AddStartNumberCopyWithImpl<$Res>
    implements _$AddStartNumberCopyWith<$Res> {
  __$AddStartNumberCopyWithImpl(this._self, this._then);

  final _AddStartNumber _self;
  final $Res Function(_AddStartNumber) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stage = freezed,Object? number = null,Object? startTime = null,Object? forceAdd = null,}) {
  return _then(_AddStartNumber(
stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,forceAdd: null == forceAdd ? _self.forceAdd : forceAdd // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateRider with DiagnosticableTreeMixin implements DatabaseEvent {
  const _UpdateRider({required this.riderId, required this.name, this.nickname, this.birthday, this.team, this.city, this.email, this.phone, this.comment, this.isDeleted});
  

 final  int riderId;
 final  String name;
 final  String? nickname;
 final  String? birthday;
 final  String? team;
 final  String? city;
 final  String? email;
 final  String? phone;
 final  String? comment;
 final  bool? isDeleted;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateRiderCopyWith<_UpdateRider> get copyWith => __$UpdateRiderCopyWithImpl<_UpdateRider>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.updateRider'))
    ..add(DiagnosticsProperty('riderId', riderId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('nickname', nickname))..add(DiagnosticsProperty('birthday', birthday))..add(DiagnosticsProperty('team', team))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('isDeleted', isDeleted));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateRider&&(identical(other.riderId, riderId) || other.riderId == riderId)&&(identical(other.name, name) || other.name == name)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.team, team) || other.team == team)&&(identical(other.city, city) || other.city == city)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}


@override
int get hashCode => Object.hash(runtimeType,riderId,name,nickname,birthday,team,city,email,phone,comment,isDeleted);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.updateRider(riderId: $riderId, name: $name, nickname: $nickname, birthday: $birthday, team: $team, city: $city, email: $email, phone: $phone, comment: $comment, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$UpdateRiderCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$UpdateRiderCopyWith(_UpdateRider value, $Res Function(_UpdateRider) _then) = __$UpdateRiderCopyWithImpl;
@useResult
$Res call({
 int riderId, String name, String? nickname, String? birthday, String? team, String? city, String? email, String? phone, String? comment, bool? isDeleted
});




}
/// @nodoc
class __$UpdateRiderCopyWithImpl<$Res>
    implements _$UpdateRiderCopyWith<$Res> {
  __$UpdateRiderCopyWithImpl(this._self, this._then);

  final _UpdateRider _self;
  final $Res Function(_UpdateRider) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? riderId = null,Object? name = null,Object? nickname = freezed,Object? birthday = freezed,Object? team = freezed,Object? city = freezed,Object? email = freezed,Object? phone = freezed,Object? comment = freezed,Object? isDeleted = freezed,}) {
  return _then(_UpdateRider(
riderId: null == riderId ? _self.riderId : riderId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,team: freezed == team ? _self.team : team // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _UpdateRacer with DiagnosticableTreeMixin implements DatabaseEvent {
  const _UpdateRacer({required this.riderId, required this.participantId, required this.name, this.category, this.nickname, this.birthday, this.team, this.city, this.email, this.phone, this.comment});
  

 final  int riderId;
 final  int participantId;
 final  String name;
 final  String? category;
 final  String? nickname;
 final  String? birthday;
 final  String? team;
 final  String? city;
 final  String? email;
 final  String? phone;
 final  String? comment;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateRacerCopyWith<_UpdateRacer> get copyWith => __$UpdateRacerCopyWithImpl<_UpdateRacer>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.updateRacer'))
    ..add(DiagnosticsProperty('riderId', riderId))..add(DiagnosticsProperty('participantId', participantId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('nickname', nickname))..add(DiagnosticsProperty('birthday', birthday))..add(DiagnosticsProperty('team', team))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('comment', comment));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateRacer&&(identical(other.riderId, riderId) || other.riderId == riderId)&&(identical(other.participantId, participantId) || other.participantId == participantId)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.team, team) || other.team == team)&&(identical(other.city, city) || other.city == city)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,riderId,participantId,name,category,nickname,birthday,team,city,email,phone,comment);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.updateRacer(riderId: $riderId, participantId: $participantId, name: $name, category: $category, nickname: $nickname, birthday: $birthday, team: $team, city: $city, email: $email, phone: $phone, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$UpdateRacerCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$UpdateRacerCopyWith(_UpdateRacer value, $Res Function(_UpdateRacer) _then) = __$UpdateRacerCopyWithImpl;
@useResult
$Res call({
 int riderId, int participantId, String name, String? category, String? nickname, String? birthday, String? team, String? city, String? email, String? phone, String? comment
});




}
/// @nodoc
class __$UpdateRacerCopyWithImpl<$Res>
    implements _$UpdateRacerCopyWith<$Res> {
  __$UpdateRacerCopyWithImpl(this._self, this._then);

  final _UpdateRacer _self;
  final $Res Function(_UpdateRacer) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? riderId = null,Object? participantId = null,Object? name = null,Object? category = freezed,Object? nickname = freezed,Object? birthday = freezed,Object? team = freezed,Object? city = freezed,Object? email = freezed,Object? phone = freezed,Object? comment = freezed,}) {
  return _then(_UpdateRacer(
riderId: null == riderId ? _self.riderId : riderId // ignore: cast_nullable_to_non_nullable
as int,participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,team: freezed == team ? _self.team : team // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpdateStartingInfo with DiagnosticableTreeMixin implements DatabaseEvent {
  const _UpdateStartingInfo({required this.stageId, required this.participantId, required this.startTime, this.automaticStartTime, this.automaticCorrection, this.manualStartTime, this.manualCorrection});
  

 final  int stageId;
 final  int participantId;
 final  String startTime;
 final  String? automaticStartTime;
 final  int? automaticCorrection;
 final  String? manualStartTime;
 final  int? manualCorrection;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateStartingInfoCopyWith<_UpdateStartingInfo> get copyWith => __$UpdateStartingInfoCopyWithImpl<_UpdateStartingInfo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.updateStartingInfo'))
    ..add(DiagnosticsProperty('stageId', stageId))..add(DiagnosticsProperty('participantId', participantId))..add(DiagnosticsProperty('startTime', startTime))..add(DiagnosticsProperty('automaticStartTime', automaticStartTime))..add(DiagnosticsProperty('automaticCorrection', automaticCorrection))..add(DiagnosticsProperty('manualStartTime', manualStartTime))..add(DiagnosticsProperty('manualCorrection', manualCorrection));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateStartingInfo&&(identical(other.stageId, stageId) || other.stageId == stageId)&&(identical(other.participantId, participantId) || other.participantId == participantId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.automaticStartTime, automaticStartTime) || other.automaticStartTime == automaticStartTime)&&(identical(other.automaticCorrection, automaticCorrection) || other.automaticCorrection == automaticCorrection)&&(identical(other.manualStartTime, manualStartTime) || other.manualStartTime == manualStartTime)&&(identical(other.manualCorrection, manualCorrection) || other.manualCorrection == manualCorrection));
}


@override
int get hashCode => Object.hash(runtimeType,stageId,participantId,startTime,automaticStartTime,automaticCorrection,manualStartTime,manualCorrection);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.updateStartingInfo(stageId: $stageId, participantId: $participantId, startTime: $startTime, automaticStartTime: $automaticStartTime, automaticCorrection: $automaticCorrection, manualStartTime: $manualStartTime, manualCorrection: $manualCorrection)';
}


}

/// @nodoc
abstract mixin class _$UpdateStartingInfoCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$UpdateStartingInfoCopyWith(_UpdateStartingInfo value, $Res Function(_UpdateStartingInfo) _then) = __$UpdateStartingInfoCopyWithImpl;
@useResult
$Res call({
 int stageId, int participantId, String startTime, String? automaticStartTime, int? automaticCorrection, String? manualStartTime, int? manualCorrection
});




}
/// @nodoc
class __$UpdateStartingInfoCopyWithImpl<$Res>
    implements _$UpdateStartingInfoCopyWith<$Res> {
  __$UpdateStartingInfoCopyWithImpl(this._self, this._then);

  final _UpdateStartingInfo _self;
  final $Res Function(_UpdateStartingInfo) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,Object? participantId = null,Object? startTime = null,Object? automaticStartTime = freezed,Object? automaticCorrection = freezed,Object? manualStartTime = freezed,Object? manualCorrection = freezed,}) {
  return _then(_UpdateStartingInfo(
stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,automaticStartTime: freezed == automaticStartTime ? _self.automaticStartTime : automaticStartTime // ignore: cast_nullable_to_non_nullable
as String?,automaticCorrection: freezed == automaticCorrection ? _self.automaticCorrection : automaticCorrection // ignore: cast_nullable_to_non_nullable
as int?,manualStartTime: freezed == manualStartTime ? _self.manualStartTime : manualStartTime // ignore: cast_nullable_to_non_nullable
as String?,manualCorrection: freezed == manualCorrection ? _self.manualCorrection : manualCorrection // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _UpdateAutomaticCorrection with DiagnosticableTreeMixin implements DatabaseEvent {
  const _UpdateAutomaticCorrection({required this.stageId, required this.startTime, required this.correction, required this.timestamp, required this.ntpOffset, required this.deltaInSeconds, this.forceUpdate = false, this.useTimestampForTime = false});
  

 final  int stageId;
 final  String startTime;
 final  int correction;
 final  DateTime timestamp;
 final  int ntpOffset;
 final  int deltaInSeconds;
@JsonKey() final  bool forceUpdate;
@JsonKey() final  bool useTimestampForTime;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAutomaticCorrectionCopyWith<_UpdateAutomaticCorrection> get copyWith => __$UpdateAutomaticCorrectionCopyWithImpl<_UpdateAutomaticCorrection>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.updateAutomaticCorrection'))
    ..add(DiagnosticsProperty('stageId', stageId))..add(DiagnosticsProperty('startTime', startTime))..add(DiagnosticsProperty('correction', correction))..add(DiagnosticsProperty('timestamp', timestamp))..add(DiagnosticsProperty('ntpOffset', ntpOffset))..add(DiagnosticsProperty('deltaInSeconds', deltaInSeconds))..add(DiagnosticsProperty('forceUpdate', forceUpdate))..add(DiagnosticsProperty('useTimestampForTime', useTimestampForTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAutomaticCorrection&&(identical(other.stageId, stageId) || other.stageId == stageId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.correction, correction) || other.correction == correction)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.ntpOffset, ntpOffset) || other.ntpOffset == ntpOffset)&&(identical(other.deltaInSeconds, deltaInSeconds) || other.deltaInSeconds == deltaInSeconds)&&(identical(other.forceUpdate, forceUpdate) || other.forceUpdate == forceUpdate)&&(identical(other.useTimestampForTime, useTimestampForTime) || other.useTimestampForTime == useTimestampForTime));
}


@override
int get hashCode => Object.hash(runtimeType,stageId,startTime,correction,timestamp,ntpOffset,deltaInSeconds,forceUpdate,useTimestampForTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.updateAutomaticCorrection(stageId: $stageId, startTime: $startTime, correction: $correction, timestamp: $timestamp, ntpOffset: $ntpOffset, deltaInSeconds: $deltaInSeconds, forceUpdate: $forceUpdate, useTimestampForTime: $useTimestampForTime)';
}


}

/// @nodoc
abstract mixin class _$UpdateAutomaticCorrectionCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$UpdateAutomaticCorrectionCopyWith(_UpdateAutomaticCorrection value, $Res Function(_UpdateAutomaticCorrection) _then) = __$UpdateAutomaticCorrectionCopyWithImpl;
@useResult
$Res call({
 int stageId, String startTime, int correction, DateTime timestamp, int ntpOffset, int deltaInSeconds, bool forceUpdate, bool useTimestampForTime
});




}
/// @nodoc
class __$UpdateAutomaticCorrectionCopyWithImpl<$Res>
    implements _$UpdateAutomaticCorrectionCopyWith<$Res> {
  __$UpdateAutomaticCorrectionCopyWithImpl(this._self, this._then);

  final _UpdateAutomaticCorrection _self;
  final $Res Function(_UpdateAutomaticCorrection) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,Object? startTime = null,Object? correction = null,Object? timestamp = null,Object? ntpOffset = null,Object? deltaInSeconds = null,Object? forceUpdate = null,Object? useTimestampForTime = null,}) {
  return _then(_UpdateAutomaticCorrection(
stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,correction: null == correction ? _self.correction : correction // ignore: cast_nullable_to_non_nullable
as int,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,ntpOffset: null == ntpOffset ? _self.ntpOffset : ntpOffset // ignore: cast_nullable_to_non_nullable
as int,deltaInSeconds: null == deltaInSeconds ? _self.deltaInSeconds : deltaInSeconds // ignore: cast_nullable_to_non_nullable
as int,forceUpdate: null == forceUpdate ? _self.forceUpdate : forceUpdate // ignore: cast_nullable_to_non_nullable
as bool,useTimestampForTime: null == useTimestampForTime ? _self.useTimestampForTime : useTimestampForTime // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class DatabaseEventUpdateManualStartTime with DiagnosticableTreeMixin implements DatabaseEvent {
  const DatabaseEventUpdateManualStartTime({required this.stageId, required this.timestamp, required this.ntpOffset, required this.deltaInSeconds});
  

 final  int stageId;
 final  DateTime timestamp;
 final  int ntpOffset;
 final  int deltaInSeconds;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatabaseEventUpdateManualStartTimeCopyWith<DatabaseEventUpdateManualStartTime> get copyWith => _$DatabaseEventUpdateManualStartTimeCopyWithImpl<DatabaseEventUpdateManualStartTime>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.updateManualStartTime'))
    ..add(DiagnosticsProperty('stageId', stageId))..add(DiagnosticsProperty('timestamp', timestamp))..add(DiagnosticsProperty('ntpOffset', ntpOffset))..add(DiagnosticsProperty('deltaInSeconds', deltaInSeconds));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatabaseEventUpdateManualStartTime&&(identical(other.stageId, stageId) || other.stageId == stageId)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.ntpOffset, ntpOffset) || other.ntpOffset == ntpOffset)&&(identical(other.deltaInSeconds, deltaInSeconds) || other.deltaInSeconds == deltaInSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,stageId,timestamp,ntpOffset,deltaInSeconds);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.updateManualStartTime(stageId: $stageId, timestamp: $timestamp, ntpOffset: $ntpOffset, deltaInSeconds: $deltaInSeconds)';
}


}

/// @nodoc
abstract mixin class $DatabaseEventUpdateManualStartTimeCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory $DatabaseEventUpdateManualStartTimeCopyWith(DatabaseEventUpdateManualStartTime value, $Res Function(DatabaseEventUpdateManualStartTime) _then) = _$DatabaseEventUpdateManualStartTimeCopyWithImpl;
@useResult
$Res call({
 int stageId, DateTime timestamp, int ntpOffset, int deltaInSeconds
});




}
/// @nodoc
class _$DatabaseEventUpdateManualStartTimeCopyWithImpl<$Res>
    implements $DatabaseEventUpdateManualStartTimeCopyWith<$Res> {
  _$DatabaseEventUpdateManualStartTimeCopyWithImpl(this._self, this._then);

  final DatabaseEventUpdateManualStartTime _self;
  final $Res Function(DatabaseEventUpdateManualStartTime) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,Object? timestamp = null,Object? ntpOffset = null,Object? deltaInSeconds = null,}) {
  return _then(DatabaseEventUpdateManualStartTime(
stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,ntpOffset: null == ntpOffset ? _self.ntpOffset : ntpOffset // ignore: cast_nullable_to_non_nullable
as int,deltaInSeconds: null == deltaInSeconds ? _self.deltaInSeconds : deltaInSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SetStatusForStartId with DiagnosticableTreeMixin implements DatabaseEvent {
  const _SetStatusForStartId({required this.startId, required this.status});
  

 final  int startId;
 final  ParticipantStatus status;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetStatusForStartIdCopyWith<_SetStatusForStartId> get copyWith => __$SetStatusForStartIdCopyWithImpl<_SetStatusForStartId>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.setStatusForStartId'))
    ..add(DiagnosticsProperty('startId', startId))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetStatusForStartId&&(identical(other.startId, startId) || other.startId == startId)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,startId,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.setStatusForStartId(startId: $startId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SetStatusForStartIdCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$SetStatusForStartIdCopyWith(_SetStatusForStartId value, $Res Function(_SetStatusForStartId) _then) = __$SetStatusForStartIdCopyWithImpl;
@useResult
$Res call({
 int startId, ParticipantStatus status
});




}
/// @nodoc
class __$SetStatusForStartIdCopyWithImpl<$Res>
    implements _$SetStatusForStartIdCopyWith<$Res> {
  __$SetStatusForStartIdCopyWithImpl(this._self, this._then);

  final _SetStatusForStartId _self;
  final $Res Function(_SetStatusForStartId) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? startId = null,Object? status = null,}) {
  return _then(_SetStatusForStartId(
startId: null == startId ? _self.startId : startId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ParticipantStatus,
  ));
}


}

/// @nodoc


class _AddFinishTime with DiagnosticableTreeMixin implements DatabaseEvent {
  const _AddFinishTime({required this.stage, required this.finishTime, required this.timestamp, required this.ntpOffset, this.finishDelay, this.substituteNumbers, this.substituteNumbersDelay, this.dateTimeNow, this.number});
  

 final  Stage stage;
 final  String finishTime;
 final  DateTime timestamp;
 final  int ntpOffset;
 final  int? finishDelay;
 final  bool? substituteNumbers;
 final  int? substituteNumbersDelay;
 final  DateTime? dateTimeNow;
 final  int? number;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddFinishTimeCopyWith<_AddFinishTime> get copyWith => __$AddFinishTimeCopyWithImpl<_AddFinishTime>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.addFinishTime'))
    ..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('finishTime', finishTime))..add(DiagnosticsProperty('timestamp', timestamp))..add(DiagnosticsProperty('ntpOffset', ntpOffset))..add(DiagnosticsProperty('finishDelay', finishDelay))..add(DiagnosticsProperty('substituteNumbers', substituteNumbers))..add(DiagnosticsProperty('substituteNumbersDelay', substituteNumbersDelay))..add(DiagnosticsProperty('dateTimeNow', dateTimeNow))..add(DiagnosticsProperty('number', number));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddFinishTime&&const DeepCollectionEquality().equals(other.stage, stage)&&(identical(other.finishTime, finishTime) || other.finishTime == finishTime)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.ntpOffset, ntpOffset) || other.ntpOffset == ntpOffset)&&(identical(other.finishDelay, finishDelay) || other.finishDelay == finishDelay)&&(identical(other.substituteNumbers, substituteNumbers) || other.substituteNumbers == substituteNumbers)&&(identical(other.substituteNumbersDelay, substituteNumbersDelay) || other.substituteNumbersDelay == substituteNumbersDelay)&&(identical(other.dateTimeNow, dateTimeNow) || other.dateTimeNow == dateTimeNow)&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stage),finishTime,timestamp,ntpOffset,finishDelay,substituteNumbers,substituteNumbersDelay,dateTimeNow,number);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.addFinishTime(stage: $stage, finishTime: $finishTime, timestamp: $timestamp, ntpOffset: $ntpOffset, finishDelay: $finishDelay, substituteNumbers: $substituteNumbers, substituteNumbersDelay: $substituteNumbersDelay, dateTimeNow: $dateTimeNow, number: $number)';
}


}

/// @nodoc
abstract mixin class _$AddFinishTimeCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$AddFinishTimeCopyWith(_AddFinishTime value, $Res Function(_AddFinishTime) _then) = __$AddFinishTimeCopyWithImpl;
@useResult
$Res call({
 Stage stage, String finishTime, DateTime timestamp, int ntpOffset, int? finishDelay, bool? substituteNumbers, int? substituteNumbersDelay, DateTime? dateTimeNow, int? number
});




}
/// @nodoc
class __$AddFinishTimeCopyWithImpl<$Res>
    implements _$AddFinishTimeCopyWith<$Res> {
  __$AddFinishTimeCopyWithImpl(this._self, this._then);

  final _AddFinishTime _self;
  final $Res Function(_AddFinishTime) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stage = freezed,Object? finishTime = null,Object? timestamp = null,Object? ntpOffset = null,Object? finishDelay = freezed,Object? substituteNumbers = freezed,Object? substituteNumbersDelay = freezed,Object? dateTimeNow = freezed,Object? number = freezed,}) {
  return _then(_AddFinishTime(
stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage,finishTime: null == finishTime ? _self.finishTime : finishTime // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,ntpOffset: null == ntpOffset ? _self.ntpOffset : ntpOffset // ignore: cast_nullable_to_non_nullable
as int,finishDelay: freezed == finishDelay ? _self.finishDelay : finishDelay // ignore: cast_nullable_to_non_nullable
as int?,substituteNumbers: freezed == substituteNumbers ? _self.substituteNumbers : substituteNumbers // ignore: cast_nullable_to_non_nullable
as bool?,substituteNumbersDelay: freezed == substituteNumbersDelay ? _self.substituteNumbersDelay : substituteNumbersDelay // ignore: cast_nullable_to_non_nullable
as int?,dateTimeNow: freezed == dateTimeNow ? _self.dateTimeNow : dateTimeNow // ignore: cast_nullable_to_non_nullable
as DateTime?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _AddFinishTimeManual with DiagnosticableTreeMixin implements DatabaseEvent {
  const _AddFinishTimeManual({required this.stageId, required this.timestamp, required this.ntpOffset, this.number});
  

 final  int stageId;
 final  DateTime timestamp;
 final  int ntpOffset;
 final  int? number;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddFinishTimeManualCopyWith<_AddFinishTimeManual> get copyWith => __$AddFinishTimeManualCopyWithImpl<_AddFinishTimeManual>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.addFinishTimeManual'))
    ..add(DiagnosticsProperty('stageId', stageId))..add(DiagnosticsProperty('timestamp', timestamp))..add(DiagnosticsProperty('ntpOffset', ntpOffset))..add(DiagnosticsProperty('number', number));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddFinishTimeManual&&(identical(other.stageId, stageId) || other.stageId == stageId)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.ntpOffset, ntpOffset) || other.ntpOffset == ntpOffset)&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,stageId,timestamp,ntpOffset,number);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.addFinishTimeManual(stageId: $stageId, timestamp: $timestamp, ntpOffset: $ntpOffset, number: $number)';
}


}

/// @nodoc
abstract mixin class _$AddFinishTimeManualCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$AddFinishTimeManualCopyWith(_AddFinishTimeManual value, $Res Function(_AddFinishTimeManual) _then) = __$AddFinishTimeManualCopyWithImpl;
@useResult
$Res call({
 int stageId, DateTime timestamp, int ntpOffset, int? number
});




}
/// @nodoc
class __$AddFinishTimeManualCopyWithImpl<$Res>
    implements _$AddFinishTimeManualCopyWith<$Res> {
  __$AddFinishTimeManualCopyWithImpl(this._self, this._then);

  final _AddFinishTimeManual _self;
  final $Res Function(_AddFinishTimeManual) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,Object? timestamp = null,Object? ntpOffset = null,Object? number = freezed,}) {
  return _then(_AddFinishTimeManual(
stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,ntpOffset: null == ntpOffset ? _self.ntpOffset : ntpOffset // ignore: cast_nullable_to_non_nullable
as int,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _ClearStartResultsDebug with DiagnosticableTreeMixin implements DatabaseEvent {
  const _ClearStartResultsDebug(this.stageId);
  

 final  int stageId;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClearStartResultsDebugCopyWith<_ClearStartResultsDebug> get copyWith => __$ClearStartResultsDebugCopyWithImpl<_ClearStartResultsDebug>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.clearStartResultsDebug'))
    ..add(DiagnosticsProperty('stageId', stageId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearStartResultsDebug&&(identical(other.stageId, stageId) || other.stageId == stageId));
}


@override
int get hashCode => Object.hash(runtimeType,stageId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.clearStartResultsDebug(stageId: $stageId)';
}


}

/// @nodoc
abstract mixin class _$ClearStartResultsDebugCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$ClearStartResultsDebugCopyWith(_ClearStartResultsDebug value, $Res Function(_ClearStartResultsDebug) _then) = __$ClearStartResultsDebugCopyWithImpl;
@useResult
$Res call({
 int stageId
});




}
/// @nodoc
class __$ClearStartResultsDebugCopyWithImpl<$Res>
    implements _$ClearStartResultsDebugCopyWith<$Res> {
  __$ClearStartResultsDebugCopyWithImpl(this._self, this._then);

  final _ClearStartResultsDebug _self;
  final $Res Function(_ClearStartResultsDebug) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,}) {
  return _then(_ClearStartResultsDebug(
null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ClearFinishResultsDebug with DiagnosticableTreeMixin implements DatabaseEvent {
  const _ClearFinishResultsDebug(this.stageId);
  

 final  int stageId;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClearFinishResultsDebugCopyWith<_ClearFinishResultsDebug> get copyWith => __$ClearFinishResultsDebugCopyWithImpl<_ClearFinishResultsDebug>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.clearFinishResultsDebug'))
    ..add(DiagnosticsProperty('stageId', stageId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearFinishResultsDebug&&(identical(other.stageId, stageId) || other.stageId == stageId));
}


@override
int get hashCode => Object.hash(runtimeType,stageId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.clearFinishResultsDebug(stageId: $stageId)';
}


}

/// @nodoc
abstract mixin class _$ClearFinishResultsDebugCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$ClearFinishResultsDebugCopyWith(_ClearFinishResultsDebug value, $Res Function(_ClearFinishResultsDebug) _then) = __$ClearFinishResultsDebugCopyWithImpl;
@useResult
$Res call({
 int stageId
});




}
/// @nodoc
class __$ClearFinishResultsDebugCopyWithImpl<$Res>
    implements _$ClearFinishResultsDebugCopyWith<$Res> {
  __$ClearFinishResultsDebugCopyWithImpl(this._self, this._then);

  final _ClearFinishResultsDebug _self;
  final $Res Function(_ClearFinishResultsDebug) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,}) {
  return _then(_ClearFinishResultsDebug(
null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _HideAllFinishes with DiagnosticableTreeMixin implements DatabaseEvent {
  const _HideAllFinishes(this.stageId);
  

 final  int stageId;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HideAllFinishesCopyWith<_HideAllFinishes> get copyWith => __$HideAllFinishesCopyWithImpl<_HideAllFinishes>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.hideAllFinishes'))
    ..add(DiagnosticsProperty('stageId', stageId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HideAllFinishes&&(identical(other.stageId, stageId) || other.stageId == stageId));
}


@override
int get hashCode => Object.hash(runtimeType,stageId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.hideAllFinishes(stageId: $stageId)';
}


}

/// @nodoc
abstract mixin class _$HideAllFinishesCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$HideAllFinishesCopyWith(_HideAllFinishes value, $Res Function(_HideAllFinishes) _then) = __$HideAllFinishesCopyWithImpl;
@useResult
$Res call({
 int stageId
});




}
/// @nodoc
class __$HideAllFinishesCopyWithImpl<$Res>
    implements _$HideAllFinishesCopyWith<$Res> {
  __$HideAllFinishesCopyWithImpl(this._self, this._then);

  final _HideAllFinishes _self;
  final $Res Function(_HideAllFinishes) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,}) {
  return _then(_HideAllFinishes(
null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ClearNumberAtFinish with DiagnosticableTreeMixin implements DatabaseEvent {
  const _ClearNumberAtFinish({required this.stage, required this.number});
  

 final  Stage stage;
 final  int number;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClearNumberAtFinishCopyWith<_ClearNumberAtFinish> get copyWith => __$ClearNumberAtFinishCopyWithImpl<_ClearNumberAtFinish>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.clearNumberAtFinish'))
    ..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('number', number));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearNumberAtFinish&&const DeepCollectionEquality().equals(other.stage, stage)&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stage),number);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.clearNumberAtFinish(stage: $stage, number: $number)';
}


}

/// @nodoc
abstract mixin class _$ClearNumberAtFinishCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$ClearNumberAtFinishCopyWith(_ClearNumberAtFinish value, $Res Function(_ClearNumberAtFinish) _then) = __$ClearNumberAtFinishCopyWithImpl;
@useResult
$Res call({
 Stage stage, int number
});




}
/// @nodoc
class __$ClearNumberAtFinishCopyWithImpl<$Res>
    implements _$ClearNumberAtFinishCopyWith<$Res> {
  __$ClearNumberAtFinishCopyWithImpl(this._self, this._then);

  final _ClearNumberAtFinish _self;
  final $Res Function(_ClearNumberAtFinish) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stage = freezed,Object? number = null,}) {
  return _then(_ClearNumberAtFinish(
stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SetDNSForStage with DiagnosticableTreeMixin implements DatabaseEvent {
  const _SetDNSForStage({required this.stage, required this.number});
  

 final  Stage stage;
 final  int number;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetDNSForStageCopyWith<_SetDNSForStage> get copyWith => __$SetDNSForStageCopyWithImpl<_SetDNSForStage>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.setDNSForStage'))
    ..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('number', number));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetDNSForStage&&const DeepCollectionEquality().equals(other.stage, stage)&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stage),number);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.setDNSForStage(stage: $stage, number: $number)';
}


}

/// @nodoc
abstract mixin class _$SetDNSForStageCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$SetDNSForStageCopyWith(_SetDNSForStage value, $Res Function(_SetDNSForStage) _then) = __$SetDNSForStageCopyWithImpl;
@useResult
$Res call({
 Stage stage, int number
});




}
/// @nodoc
class __$SetDNSForStageCopyWithImpl<$Res>
    implements _$SetDNSForStageCopyWith<$Res> {
  __$SetDNSForStageCopyWithImpl(this._self, this._then);

  final _SetDNSForStage _self;
  final $Res Function(_SetDNSForStage) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stage = freezed,Object? number = null,}) {
  return _then(_SetDNSForStage(
stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SetDNFForStage with DiagnosticableTreeMixin implements DatabaseEvent {
  const _SetDNFForStage({required this.stage, required this.number});
  

 final  Stage stage;
 final  int number;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetDNFForStageCopyWith<_SetDNFForStage> get copyWith => __$SetDNFForStageCopyWithImpl<_SetDNFForStage>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.setDNFForStage'))
    ..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('number', number));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetDNFForStage&&const DeepCollectionEquality().equals(other.stage, stage)&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stage),number);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.setDNFForStage(stage: $stage, number: $number)';
}


}

/// @nodoc
abstract mixin class _$SetDNFForStageCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$SetDNFForStageCopyWith(_SetDNFForStage value, $Res Function(_SetDNFForStage) _then) = __$SetDNFForStageCopyWithImpl;
@useResult
$Res call({
 Stage stage, int number
});




}
/// @nodoc
class __$SetDNFForStageCopyWithImpl<$Res>
    implements _$SetDNFForStageCopyWith<$Res> {
  __$SetDNFForStageCopyWithImpl(this._self, this._then);

  final _SetDNFForStage _self;
  final $Res Function(_SetDNFForStage) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stage = freezed,Object? number = null,}) {
  return _then(_SetDNFForStage(
stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _HideFinish with DiagnosticableTreeMixin implements DatabaseEvent {
  const _HideFinish({required this.id});
  

 final  int id;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HideFinishCopyWith<_HideFinish> get copyWith => __$HideFinishCopyWithImpl<_HideFinish>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.hideFinish'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HideFinish&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.hideFinish(id: $id)';
}


}

/// @nodoc
abstract mixin class _$HideFinishCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$HideFinishCopyWith(_HideFinish value, $Res Function(_HideFinish) _then) = __$HideFinishCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$HideFinishCopyWithImpl<$Res>
    implements _$HideFinishCopyWith<$Res> {
  __$HideFinishCopyWithImpl(this._self, this._then);

  final _HideFinish _self;
  final $Res Function(_HideFinish) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_HideFinish(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddNumberToFinish with DiagnosticableTreeMixin implements DatabaseEvent {
  const _AddNumberToFinish({required this.stage, required this.finishId, required this.number, required this.finishTime});
  

 final  Stage stage;
 final  int finishId;
 final  int number;
 final  String finishTime;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddNumberToFinishCopyWith<_AddNumberToFinish> get copyWith => __$AddNumberToFinishCopyWithImpl<_AddNumberToFinish>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.addNumberToFinish'))
    ..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('finishId', finishId))..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('finishTime', finishTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddNumberToFinish&&const DeepCollectionEquality().equals(other.stage, stage)&&(identical(other.finishId, finishId) || other.finishId == finishId)&&(identical(other.number, number) || other.number == number)&&(identical(other.finishTime, finishTime) || other.finishTime == finishTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stage),finishId,number,finishTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.addNumberToFinish(stage: $stage, finishId: $finishId, number: $number, finishTime: $finishTime)';
}


}

/// @nodoc
abstract mixin class _$AddNumberToFinishCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$AddNumberToFinishCopyWith(_AddNumberToFinish value, $Res Function(_AddNumberToFinish) _then) = __$AddNumberToFinishCopyWithImpl;
@useResult
$Res call({
 Stage stage, int finishId, int number, String finishTime
});




}
/// @nodoc
class __$AddNumberToFinishCopyWithImpl<$Res>
    implements _$AddNumberToFinishCopyWith<$Res> {
  __$AddNumberToFinishCopyWithImpl(this._self, this._then);

  final _AddNumberToFinish _self;
  final $Res Function(_AddNumberToFinish) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stage = freezed,Object? finishId = null,Object? number = null,Object? finishTime = null,}) {
  return _then(_AddNumberToFinish(
stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage,finishId: null == finishId ? _self.finishId : finishId // ignore: cast_nullable_to_non_nullable
as int,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,finishTime: null == finishTime ? _self.finishTime : finishTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetNumbersOnTraceNow with DiagnosticableTreeMixin implements DatabaseEvent {
  const _GetNumbersOnTraceNow({required this.stageId, required this.dateTimeNow});
  

 final  int stageId;
 final  DateTime dateTimeNow;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetNumbersOnTraceNowCopyWith<_GetNumbersOnTraceNow> get copyWith => __$GetNumbersOnTraceNowCopyWithImpl<_GetNumbersOnTraceNow>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.getNumbersOnTraceNow'))
    ..add(DiagnosticsProperty('stageId', stageId))..add(DiagnosticsProperty('dateTimeNow', dateTimeNow));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetNumbersOnTraceNow&&(identical(other.stageId, stageId) || other.stageId == stageId)&&(identical(other.dateTimeNow, dateTimeNow) || other.dateTimeNow == dateTimeNow));
}


@override
int get hashCode => Object.hash(runtimeType,stageId,dateTimeNow);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.getNumbersOnTraceNow(stageId: $stageId, dateTimeNow: $dateTimeNow)';
}


}

/// @nodoc
abstract mixin class _$GetNumbersOnTraceNowCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$GetNumbersOnTraceNowCopyWith(_GetNumbersOnTraceNow value, $Res Function(_GetNumbersOnTraceNow) _then) = __$GetNumbersOnTraceNowCopyWithImpl;
@useResult
$Res call({
 int stageId, DateTime dateTimeNow
});




}
/// @nodoc
class __$GetNumbersOnTraceNowCopyWithImpl<$Res>
    implements _$GetNumbersOnTraceNowCopyWith<$Res> {
  __$GetNumbersOnTraceNowCopyWithImpl(this._self, this._then);

  final _GetNumbersOnTraceNow _self;
  final $Res Function(_GetNumbersOnTraceNow) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,Object? dateTimeNow = null,}) {
  return _then(_GetNumbersOnTraceNow(
stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,dateTimeNow: null == dateTimeNow ? _self.dateTimeNow : dateTimeNow // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _ShiftStartsTime with DiagnosticableTreeMixin implements DatabaseEvent {
  const _ShiftStartsTime({required this.stageId, required this.minutes, this.fromTime});
  

 final  int stageId;
 final  int minutes;
 final  String? fromTime;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftStartsTimeCopyWith<_ShiftStartsTime> get copyWith => __$ShiftStartsTimeCopyWithImpl<_ShiftStartsTime>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.shiftStartsTime'))
    ..add(DiagnosticsProperty('stageId', stageId))..add(DiagnosticsProperty('minutes', minutes))..add(DiagnosticsProperty('fromTime', fromTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftStartsTime&&(identical(other.stageId, stageId) || other.stageId == stageId)&&(identical(other.minutes, minutes) || other.minutes == minutes)&&(identical(other.fromTime, fromTime) || other.fromTime == fromTime));
}


@override
int get hashCode => Object.hash(runtimeType,stageId,minutes,fromTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.shiftStartsTime(stageId: $stageId, minutes: $minutes, fromTime: $fromTime)';
}


}

/// @nodoc
abstract mixin class _$ShiftStartsTimeCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$ShiftStartsTimeCopyWith(_ShiftStartsTime value, $Res Function(_ShiftStartsTime) _then) = __$ShiftStartsTimeCopyWithImpl;
@useResult
$Res call({
 int stageId, int minutes, String? fromTime
});




}
/// @nodoc
class __$ShiftStartsTimeCopyWithImpl<$Res>
    implements _$ShiftStartsTimeCopyWith<$Res> {
  __$ShiftStartsTimeCopyWithImpl(this._self, this._then);

  final _ShiftStartsTime _self;
  final $Res Function(_ShiftStartsTime) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stageId = null,Object? minutes = null,Object? fromTime = freezed,}) {
  return _then(_ShiftStartsTime(
stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,minutes: null == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as int,fromTime: freezed == fromTime ? _self.fromTime : fromTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _SelectAwaitingNumber with DiagnosticableTreeMixin implements DatabaseEvent {
  const _SelectAwaitingNumber({required this.number});
  

 final  int number;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectAwaitingNumberCopyWith<_SelectAwaitingNumber> get copyWith => __$SelectAwaitingNumberCopyWithImpl<_SelectAwaitingNumber>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.selectAwaitingNumber'))
    ..add(DiagnosticsProperty('number', number));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectAwaitingNumber&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,number);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.selectAwaitingNumber(number: $number)';
}


}

/// @nodoc
abstract mixin class _$SelectAwaitingNumberCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$SelectAwaitingNumberCopyWith(_SelectAwaitingNumber value, $Res Function(_SelectAwaitingNumber) _then) = __$SelectAwaitingNumberCopyWithImpl;
@useResult
$Res call({
 int number
});




}
/// @nodoc
class __$SelectAwaitingNumberCopyWithImpl<$Res>
    implements _$SelectAwaitingNumberCopyWith<$Res> {
  __$SelectAwaitingNumberCopyWithImpl(this._self, this._then);

  final _SelectAwaitingNumber _self;
  final $Res Function(_SelectAwaitingNumber) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? number = null,}) {
  return _then(_SelectAwaitingNumber(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _DeselectAwaitingNumber with DiagnosticableTreeMixin implements DatabaseEvent {
  const _DeselectAwaitingNumber();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.deselectAwaitingNumber'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeselectAwaitingNumber);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.deselectAwaitingNumber()';
}


}




/// @nodoc


class _CreateRaceFromFile with DiagnosticableTreeMixin implements DatabaseEvent {
  const _CreateRaceFromFile();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.createRaceFromFile'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateRaceFromFile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.createRaceFromFile()';
}


}




/// @nodoc


class _CreateStagesFromFile with DiagnosticableTreeMixin implements DatabaseEvent {
  const _CreateStagesFromFile({required this.raceId});
  

 final  int raceId;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateStagesFromFileCopyWith<_CreateStagesFromFile> get copyWith => __$CreateStagesFromFileCopyWithImpl<_CreateStagesFromFile>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.createStagesFromFile'))
    ..add(DiagnosticsProperty('raceId', raceId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateStagesFromFile&&(identical(other.raceId, raceId) || other.raceId == raceId));
}


@override
int get hashCode => Object.hash(runtimeType,raceId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.createStagesFromFile(raceId: $raceId)';
}


}

/// @nodoc
abstract mixin class _$CreateStagesFromFileCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$CreateStagesFromFileCopyWith(_CreateStagesFromFile value, $Res Function(_CreateStagesFromFile) _then) = __$CreateStagesFromFileCopyWithImpl;
@useResult
$Res call({
 int raceId
});




}
/// @nodoc
class __$CreateStagesFromFileCopyWithImpl<$Res>
    implements _$CreateStagesFromFileCopyWith<$Res> {
  __$CreateStagesFromFileCopyWithImpl(this._self, this._then);

  final _CreateStagesFromFile _self;
  final $Res Function(_CreateStagesFromFile) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? raceId = null,}) {
  return _then(_CreateStagesFromFile(
raceId: null == raceId ? _self.raceId : raceId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ShareStart with DiagnosticableTreeMixin implements DatabaseEvent {
  const _ShareStart({required this.useTimestamp});
  

 final  bool useTimestamp;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShareStartCopyWith<_ShareStart> get copyWith => __$ShareStartCopyWithImpl<_ShareStart>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.shareStart'))
    ..add(DiagnosticsProperty('useTimestamp', useTimestamp));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareStart&&(identical(other.useTimestamp, useTimestamp) || other.useTimestamp == useTimestamp));
}


@override
int get hashCode => Object.hash(runtimeType,useTimestamp);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.shareStart(useTimestamp: $useTimestamp)';
}


}

/// @nodoc
abstract mixin class _$ShareStartCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$ShareStartCopyWith(_ShareStart value, $Res Function(_ShareStart) _then) = __$ShareStartCopyWithImpl;
@useResult
$Res call({
 bool useTimestamp
});




}
/// @nodoc
class __$ShareStartCopyWithImpl<$Res>
    implements _$ShareStartCopyWith<$Res> {
  __$ShareStartCopyWithImpl(this._self, this._then);

  final _ShareStart _self;
  final $Res Function(_ShareStart) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? useTimestamp = null,}) {
  return _then(_ShareStart(
useTimestamp: null == useTimestamp ? _self.useTimestamp : useTimestamp // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ShareFinish with DiagnosticableTreeMixin implements DatabaseEvent {
  const _ShareFinish({required this.useTimestamp});
  

 final  bool useTimestamp;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShareFinishCopyWith<_ShareFinish> get copyWith => __$ShareFinishCopyWithImpl<_ShareFinish>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.shareFinish'))
    ..add(DiagnosticsProperty('useTimestamp', useTimestamp));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareFinish&&(identical(other.useTimestamp, useTimestamp) || other.useTimestamp == useTimestamp));
}


@override
int get hashCode => Object.hash(runtimeType,useTimestamp);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.shareFinish(useTimestamp: $useTimestamp)';
}


}

/// @nodoc
abstract mixin class _$ShareFinishCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$ShareFinishCopyWith(_ShareFinish value, $Res Function(_ShareFinish) _then) = __$ShareFinishCopyWithImpl;
@useResult
$Res call({
 bool useTimestamp
});




}
/// @nodoc
class __$ShareFinishCopyWithImpl<$Res>
    implements _$ShareFinishCopyWith<$Res> {
  __$ShareFinishCopyWithImpl(this._self, this._then);

  final _ShareFinish _self;
  final $Res Function(_ShareFinish) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? useTimestamp = null,}) {
  return _then(_ShareFinish(
useTimestamp: null == useTimestamp ? _self.useTimestamp : useTimestamp // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ShareDatabase with DiagnosticableTreeMixin implements DatabaseEvent {
  const _ShareDatabase();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.shareDatabase'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareDatabase);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.shareDatabase()';
}


}




/// @nodoc


class _ShareTrack with DiagnosticableTreeMixin implements DatabaseEvent {
  const _ShareTrack({required this.trail});
  

 final  TrailInfo trail;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShareTrackCopyWith<_ShareTrack> get copyWith => __$ShareTrackCopyWithImpl<_ShareTrack>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseEvent.shareTrack'))
    ..add(DiagnosticsProperty('trail', trail));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareTrack&&const DeepCollectionEquality().equals(other.trail, trail));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(trail));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseEvent.shareTrack(trail: $trail)';
}


}

/// @nodoc
abstract mixin class _$ShareTrackCopyWith<$Res> implements $DatabaseEventCopyWith<$Res> {
  factory _$ShareTrackCopyWith(_ShareTrack value, $Res Function(_ShareTrack) _then) = __$ShareTrackCopyWithImpl;
@useResult
$Res call({
 TrailInfo trail
});




}
/// @nodoc
class __$ShareTrackCopyWithImpl<$Res>
    implements _$ShareTrackCopyWith<$Res> {
  __$ShareTrackCopyWithImpl(this._self, this._then);

  final _ShareTrack _self;
  final $Res Function(_ShareTrack) _then;

/// Create a copy of DatabaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trail = freezed,}) {
  return _then(_ShareTrack(
trail: freezed == trail ? _self.trail : trail // ignore: cast_nullable_to_non_nullable
as TrailInfo,
  ));
}


}

/// @nodoc
mixin _$DatabaseState implements DiagnosticableTreeMixin {

 List<Race> get races; List<Stage> get stages; List<String?> get categories; List<Rider> get riders; List<ParticipantAtStart> get participants;// required List<Start> starts,
 List<Finish> get finishes; List<StartingParticipant> get numbersOnTrace;/// Выбранная гонка
 Race? get race;///Выбранный этап
 Stage? get stage;/// Информация для различных всплывающих уведомлений
 Notification? get notification;/// Автоматически подставленный в финишное время номер
 int? get autoFinishNumber;/// Номер, который будет автоматически подставлен в следующую автоматическую отсечку
 int? get awaitingNumber;
/// Create a copy of DatabaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatabaseStateCopyWith<DatabaseState> get copyWith => _$DatabaseStateCopyWithImpl<DatabaseState>(this as DatabaseState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseState'))
    ..add(DiagnosticsProperty('races', races))..add(DiagnosticsProperty('stages', stages))..add(DiagnosticsProperty('categories', categories))..add(DiagnosticsProperty('riders', riders))..add(DiagnosticsProperty('participants', participants))..add(DiagnosticsProperty('finishes', finishes))..add(DiagnosticsProperty('numbersOnTrace', numbersOnTrace))..add(DiagnosticsProperty('race', race))..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('notification', notification))..add(DiagnosticsProperty('autoFinishNumber', autoFinishNumber))..add(DiagnosticsProperty('awaitingNumber', awaitingNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatabaseState&&const DeepCollectionEquality().equals(other.races, races)&&const DeepCollectionEquality().equals(other.stages, stages)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.riders, riders)&&const DeepCollectionEquality().equals(other.participants, participants)&&const DeepCollectionEquality().equals(other.finishes, finishes)&&const DeepCollectionEquality().equals(other.numbersOnTrace, numbersOnTrace)&&const DeepCollectionEquality().equals(other.race, race)&&const DeepCollectionEquality().equals(other.stage, stage)&&(identical(other.notification, notification) || other.notification == notification)&&(identical(other.autoFinishNumber, autoFinishNumber) || other.autoFinishNumber == autoFinishNumber)&&(identical(other.awaitingNumber, awaitingNumber) || other.awaitingNumber == awaitingNumber));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(races),const DeepCollectionEquality().hash(stages),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(riders),const DeepCollectionEquality().hash(participants),const DeepCollectionEquality().hash(finishes),const DeepCollectionEquality().hash(numbersOnTrace),const DeepCollectionEquality().hash(race),const DeepCollectionEquality().hash(stage),notification,autoFinishNumber,awaitingNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseState(races: $races, stages: $stages, categories: $categories, riders: $riders, participants: $participants, finishes: $finishes, numbersOnTrace: $numbersOnTrace, race: $race, stage: $stage, notification: $notification, autoFinishNumber: $autoFinishNumber, awaitingNumber: $awaitingNumber)';
}


}

/// @nodoc
abstract mixin class $DatabaseStateCopyWith<$Res>  {
  factory $DatabaseStateCopyWith(DatabaseState value, $Res Function(DatabaseState) _then) = _$DatabaseStateCopyWithImpl;
@useResult
$Res call({
 List<Race> races, List<Stage> stages, List<String?> categories, List<Rider> riders, List<ParticipantAtStart> participants, List<Finish> finishes, List<StartingParticipant> numbersOnTrace, Race? race, Stage? stage, Notification? notification, int? autoFinishNumber, int? awaitingNumber
});


$NotificationCopyWith<$Res>? get notification;

}
/// @nodoc
class _$DatabaseStateCopyWithImpl<$Res>
    implements $DatabaseStateCopyWith<$Res> {
  _$DatabaseStateCopyWithImpl(this._self, this._then);

  final DatabaseState _self;
  final $Res Function(DatabaseState) _then;

/// Create a copy of DatabaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? races = null,Object? stages = null,Object? categories = null,Object? riders = null,Object? participants = null,Object? finishes = null,Object? numbersOnTrace = null,Object? race = freezed,Object? stage = freezed,Object? notification = freezed,Object? autoFinishNumber = freezed,Object? awaitingNumber = freezed,}) {
  return _then(_self.copyWith(
races: null == races ? _self.races : races // ignore: cast_nullable_to_non_nullable
as List<Race>,stages: null == stages ? _self.stages : stages // ignore: cast_nullable_to_non_nullable
as List<Stage>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String?>,riders: null == riders ? _self.riders : riders // ignore: cast_nullable_to_non_nullable
as List<Rider>,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantAtStart>,finishes: null == finishes ? _self.finishes : finishes // ignore: cast_nullable_to_non_nullable
as List<Finish>,numbersOnTrace: null == numbersOnTrace ? _self.numbersOnTrace : numbersOnTrace // ignore: cast_nullable_to_non_nullable
as List<StartingParticipant>,race: freezed == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as Race?,stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage?,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as Notification?,autoFinishNumber: freezed == autoFinishNumber ? _self.autoFinishNumber : autoFinishNumber // ignore: cast_nullable_to_non_nullable
as int?,awaitingNumber: freezed == awaitingNumber ? _self.awaitingNumber : awaitingNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of DatabaseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationCopyWith<$Res>? get notification {
    if (_self.notification == null) {
    return null;
  }

  return $NotificationCopyWith<$Res>(_self.notification!, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}


/// @nodoc


class DBState with DiagnosticableTreeMixin implements DatabaseState {
  const DBState({required final  List<Race> races, required final  List<Stage> stages, required final  List<String?> categories, required final  List<Rider> riders, required final  List<ParticipantAtStart> participants, required final  List<Finish> finishes, required final  List<StartingParticipant> numbersOnTrace, this.race, this.stage, this.notification, this.autoFinishNumber, this.awaitingNumber}): _races = races,_stages = stages,_categories = categories,_riders = riders,_participants = participants,_finishes = finishes,_numbersOnTrace = numbersOnTrace;
  

 final  List<Race> _races;
@override List<Race> get races {
  if (_races is EqualUnmodifiableListView) return _races;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_races);
}

 final  List<Stage> _stages;
@override List<Stage> get stages {
  if (_stages is EqualUnmodifiableListView) return _stages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stages);
}

 final  List<String?> _categories;
@override List<String?> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<Rider> _riders;
@override List<Rider> get riders {
  if (_riders is EqualUnmodifiableListView) return _riders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riders);
}

 final  List<ParticipantAtStart> _participants;
@override List<ParticipantAtStart> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}

// required List<Start> starts,
 final  List<Finish> _finishes;
// required List<Start> starts,
@override List<Finish> get finishes {
  if (_finishes is EqualUnmodifiableListView) return _finishes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_finishes);
}

 final  List<StartingParticipant> _numbersOnTrace;
@override List<StartingParticipant> get numbersOnTrace {
  if (_numbersOnTrace is EqualUnmodifiableListView) return _numbersOnTrace;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_numbersOnTrace);
}

/// Выбранная гонка
@override final  Race? race;
///Выбранный этап
@override final  Stage? stage;
/// Информация для различных всплывающих уведомлений
@override final  Notification? notification;
/// Автоматически подставленный в финишное время номер
@override final  int? autoFinishNumber;
/// Номер, который будет автоматически подставлен в следующую автоматическую отсечку
@override final  int? awaitingNumber;

/// Create a copy of DatabaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DBStateCopyWith<DBState> get copyWith => _$DBStateCopyWithImpl<DBState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DatabaseState'))
    ..add(DiagnosticsProperty('races', races))..add(DiagnosticsProperty('stages', stages))..add(DiagnosticsProperty('categories', categories))..add(DiagnosticsProperty('riders', riders))..add(DiagnosticsProperty('participants', participants))..add(DiagnosticsProperty('finishes', finishes))..add(DiagnosticsProperty('numbersOnTrace', numbersOnTrace))..add(DiagnosticsProperty('race', race))..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('notification', notification))..add(DiagnosticsProperty('autoFinishNumber', autoFinishNumber))..add(DiagnosticsProperty('awaitingNumber', awaitingNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DBState&&const DeepCollectionEquality().equals(other._races, _races)&&const DeepCollectionEquality().equals(other._stages, _stages)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._riders, _riders)&&const DeepCollectionEquality().equals(other._participants, _participants)&&const DeepCollectionEquality().equals(other._finishes, _finishes)&&const DeepCollectionEquality().equals(other._numbersOnTrace, _numbersOnTrace)&&const DeepCollectionEquality().equals(other.race, race)&&const DeepCollectionEquality().equals(other.stage, stage)&&(identical(other.notification, notification) || other.notification == notification)&&(identical(other.autoFinishNumber, autoFinishNumber) || other.autoFinishNumber == autoFinishNumber)&&(identical(other.awaitingNumber, awaitingNumber) || other.awaitingNumber == awaitingNumber));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_races),const DeepCollectionEquality().hash(_stages),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_riders),const DeepCollectionEquality().hash(_participants),const DeepCollectionEquality().hash(_finishes),const DeepCollectionEquality().hash(_numbersOnTrace),const DeepCollectionEquality().hash(race),const DeepCollectionEquality().hash(stage),notification,autoFinishNumber,awaitingNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DatabaseState(races: $races, stages: $stages, categories: $categories, riders: $riders, participants: $participants, finishes: $finishes, numbersOnTrace: $numbersOnTrace, race: $race, stage: $stage, notification: $notification, autoFinishNumber: $autoFinishNumber, awaitingNumber: $awaitingNumber)';
}


}

/// @nodoc
abstract mixin class $DBStateCopyWith<$Res> implements $DatabaseStateCopyWith<$Res> {
  factory $DBStateCopyWith(DBState value, $Res Function(DBState) _then) = _$DBStateCopyWithImpl;
@override @useResult
$Res call({
 List<Race> races, List<Stage> stages, List<String?> categories, List<Rider> riders, List<ParticipantAtStart> participants, List<Finish> finishes, List<StartingParticipant> numbersOnTrace, Race? race, Stage? stage, Notification? notification, int? autoFinishNumber, int? awaitingNumber
});


@override $NotificationCopyWith<$Res>? get notification;

}
/// @nodoc
class _$DBStateCopyWithImpl<$Res>
    implements $DBStateCopyWith<$Res> {
  _$DBStateCopyWithImpl(this._self, this._then);

  final DBState _self;
  final $Res Function(DBState) _then;

/// Create a copy of DatabaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? races = null,Object? stages = null,Object? categories = null,Object? riders = null,Object? participants = null,Object? finishes = null,Object? numbersOnTrace = null,Object? race = freezed,Object? stage = freezed,Object? notification = freezed,Object? autoFinishNumber = freezed,Object? awaitingNumber = freezed,}) {
  return _then(DBState(
races: null == races ? _self._races : races // ignore: cast_nullable_to_non_nullable
as List<Race>,stages: null == stages ? _self._stages : stages // ignore: cast_nullable_to_non_nullable
as List<Stage>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String?>,riders: null == riders ? _self._riders : riders // ignore: cast_nullable_to_non_nullable
as List<Rider>,participants: null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantAtStart>,finishes: null == finishes ? _self._finishes : finishes // ignore: cast_nullable_to_non_nullable
as List<Finish>,numbersOnTrace: null == numbersOnTrace ? _self._numbersOnTrace : numbersOnTrace // ignore: cast_nullable_to_non_nullable
as List<StartingParticipant>,race: freezed == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as Race?,stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage?,notification: freezed == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as Notification?,autoFinishNumber: freezed == autoFinishNumber ? _self.autoFinishNumber : autoFinishNumber // ignore: cast_nullable_to_non_nullable
as int?,awaitingNumber: freezed == awaitingNumber ? _self.awaitingNumber : awaitingNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of DatabaseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationCopyWith<$Res>? get notification {
    if (_self.notification == null) {
    return null;
  }

  return $NotificationCopyWith<$Res>(_self.notification!, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

// dart format on
