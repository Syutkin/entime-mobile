// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Notification {

 int get number;
/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCopyWith<Notification> get copyWith => _$NotificationCopyWithImpl<Notification>(this as Notification, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,number);

@override
String toString() {
  return 'Notification(number: $number)';
}


}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res>  {
  factory $NotificationCopyWith(Notification value, $Res Function(Notification) _then) = _$NotificationCopyWithImpl;
@useResult
$Res call({
 int number
});




}
/// @nodoc
class _$NotificationCopyWithImpl<$Res>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Notification].
extension NotificationPatterns on Notification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotificationUpdateStartNumber value)?  updateStartNumber,TResult Function( NotificationUpdateAutomaticCorrection value)?  updateAutomaticCorrection,TResult Function( NotificationChangeFinishTimeToNumber value)?  changeFinishTimeToNumber,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotificationUpdateStartNumber() when updateStartNumber != null:
return updateStartNumber(_that);case NotificationUpdateAutomaticCorrection() when updateAutomaticCorrection != null:
return updateAutomaticCorrection(_that);case NotificationChangeFinishTimeToNumber() when changeFinishTimeToNumber != null:
return changeFinishTimeToNumber(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotificationUpdateStartNumber value)  updateStartNumber,required TResult Function( NotificationUpdateAutomaticCorrection value)  updateAutomaticCorrection,required TResult Function( NotificationChangeFinishTimeToNumber value)  changeFinishTimeToNumber,}){
final _that = this;
switch (_that) {
case NotificationUpdateStartNumber():
return updateStartNumber(_that);case NotificationUpdateAutomaticCorrection():
return updateAutomaticCorrection(_that);case NotificationChangeFinishTimeToNumber():
return changeFinishTimeToNumber(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotificationUpdateStartNumber value)?  updateStartNumber,TResult? Function( NotificationUpdateAutomaticCorrection value)?  updateAutomaticCorrection,TResult? Function( NotificationChangeFinishTimeToNumber value)?  changeFinishTimeToNumber,}){
final _that = this;
switch (_that) {
case NotificationUpdateStartNumber() when updateStartNumber != null:
return updateStartNumber(_that);case NotificationUpdateAutomaticCorrection() when updateAutomaticCorrection != null:
return updateAutomaticCorrection(_that);case NotificationChangeFinishTimeToNumber() when changeFinishTimeToNumber != null:
return changeFinishTimeToNumber(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<StartingParticipant> existedStartingParticipants,  int number,  String startTime)?  updateStartNumber,TResult Function( List<StartingParticipant> previousStarts,  int number,  String startTime,  DateTime timestamp,  int correction)?  updateAutomaticCorrection,TResult Function( int finishId,  int number,  String finishTime,  Stage stage)?  changeFinishTimeToNumber,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotificationUpdateStartNumber() when updateStartNumber != null:
return updateStartNumber(_that.existedStartingParticipants,_that.number,_that.startTime);case NotificationUpdateAutomaticCorrection() when updateAutomaticCorrection != null:
return updateAutomaticCorrection(_that.previousStarts,_that.number,_that.startTime,_that.timestamp,_that.correction);case NotificationChangeFinishTimeToNumber() when changeFinishTimeToNumber != null:
return changeFinishTimeToNumber(_that.finishId,_that.number,_that.finishTime,_that.stage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<StartingParticipant> existedStartingParticipants,  int number,  String startTime)  updateStartNumber,required TResult Function( List<StartingParticipant> previousStarts,  int number,  String startTime,  DateTime timestamp,  int correction)  updateAutomaticCorrection,required TResult Function( int finishId,  int number,  String finishTime,  Stage stage)  changeFinishTimeToNumber,}) {final _that = this;
switch (_that) {
case NotificationUpdateStartNumber():
return updateStartNumber(_that.existedStartingParticipants,_that.number,_that.startTime);case NotificationUpdateAutomaticCorrection():
return updateAutomaticCorrection(_that.previousStarts,_that.number,_that.startTime,_that.timestamp,_that.correction);case NotificationChangeFinishTimeToNumber():
return changeFinishTimeToNumber(_that.finishId,_that.number,_that.finishTime,_that.stage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<StartingParticipant> existedStartingParticipants,  int number,  String startTime)?  updateStartNumber,TResult? Function( List<StartingParticipant> previousStarts,  int number,  String startTime,  DateTime timestamp,  int correction)?  updateAutomaticCorrection,TResult? Function( int finishId,  int number,  String finishTime,  Stage stage)?  changeFinishTimeToNumber,}) {final _that = this;
switch (_that) {
case NotificationUpdateStartNumber() when updateStartNumber != null:
return updateStartNumber(_that.existedStartingParticipants,_that.number,_that.startTime);case NotificationUpdateAutomaticCorrection() when updateAutomaticCorrection != null:
return updateAutomaticCorrection(_that.previousStarts,_that.number,_that.startTime,_that.timestamp,_that.correction);case NotificationChangeFinishTimeToNumber() when changeFinishTimeToNumber != null:
return changeFinishTimeToNumber(_that.finishId,_that.number,_that.finishTime,_that.stage);case _:
  return null;

}
}

}

/// @nodoc


class NotificationUpdateStartNumber implements Notification {
  const NotificationUpdateStartNumber({required final  List<StartingParticipant> existedStartingParticipants, required this.number, required this.startTime}): _existedStartingParticipants = existedStartingParticipants;
  

 final  List<StartingParticipant> _existedStartingParticipants;
 List<StartingParticipant> get existedStartingParticipants {
  if (_existedStartingParticipants is EqualUnmodifiableListView) return _existedStartingParticipants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_existedStartingParticipants);
}

@override final  int number;
 final  String startTime;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationUpdateStartNumberCopyWith<NotificationUpdateStartNumber> get copyWith => _$NotificationUpdateStartNumberCopyWithImpl<NotificationUpdateStartNumber>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationUpdateStartNumber&&const DeepCollectionEquality().equals(other._existedStartingParticipants, _existedStartingParticipants)&&(identical(other.number, number) || other.number == number)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_existedStartingParticipants),number,startTime);

@override
String toString() {
  return 'Notification.updateStartNumber(existedStartingParticipants: $existedStartingParticipants, number: $number, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class $NotificationUpdateStartNumberCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory $NotificationUpdateStartNumberCopyWith(NotificationUpdateStartNumber value, $Res Function(NotificationUpdateStartNumber) _then) = _$NotificationUpdateStartNumberCopyWithImpl;
@override @useResult
$Res call({
 List<StartingParticipant> existedStartingParticipants, int number, String startTime
});




}
/// @nodoc
class _$NotificationUpdateStartNumberCopyWithImpl<$Res>
    implements $NotificationUpdateStartNumberCopyWith<$Res> {
  _$NotificationUpdateStartNumberCopyWithImpl(this._self, this._then);

  final NotificationUpdateStartNumber _self;
  final $Res Function(NotificationUpdateStartNumber) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? existedStartingParticipants = null,Object? number = null,Object? startTime = null,}) {
  return _then(NotificationUpdateStartNumber(
existedStartingParticipants: null == existedStartingParticipants ? _self._existedStartingParticipants : existedStartingParticipants // ignore: cast_nullable_to_non_nullable
as List<StartingParticipant>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NotificationUpdateAutomaticCorrection implements Notification {
  const NotificationUpdateAutomaticCorrection({required final  List<StartingParticipant> previousStarts, required this.number, required this.startTime, required this.timestamp, required this.correction}): _previousStarts = previousStarts;
  

 final  List<StartingParticipant> _previousStarts;
 List<StartingParticipant> get previousStarts {
  if (_previousStarts is EqualUnmodifiableListView) return _previousStarts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previousStarts);
}

@override final  int number;
 final  String startTime;
 final  DateTime timestamp;
 final  int correction;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationUpdateAutomaticCorrectionCopyWith<NotificationUpdateAutomaticCorrection> get copyWith => _$NotificationUpdateAutomaticCorrectionCopyWithImpl<NotificationUpdateAutomaticCorrection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationUpdateAutomaticCorrection&&const DeepCollectionEquality().equals(other._previousStarts, _previousStarts)&&(identical(other.number, number) || other.number == number)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.correction, correction) || other.correction == correction));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_previousStarts),number,startTime,timestamp,correction);

@override
String toString() {
  return 'Notification.updateAutomaticCorrection(previousStarts: $previousStarts, number: $number, startTime: $startTime, timestamp: $timestamp, correction: $correction)';
}


}

/// @nodoc
abstract mixin class $NotificationUpdateAutomaticCorrectionCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory $NotificationUpdateAutomaticCorrectionCopyWith(NotificationUpdateAutomaticCorrection value, $Res Function(NotificationUpdateAutomaticCorrection) _then) = _$NotificationUpdateAutomaticCorrectionCopyWithImpl;
@override @useResult
$Res call({
 List<StartingParticipant> previousStarts, int number, String startTime, DateTime timestamp, int correction
});




}
/// @nodoc
class _$NotificationUpdateAutomaticCorrectionCopyWithImpl<$Res>
    implements $NotificationUpdateAutomaticCorrectionCopyWith<$Res> {
  _$NotificationUpdateAutomaticCorrectionCopyWithImpl(this._self, this._then);

  final NotificationUpdateAutomaticCorrection _self;
  final $Res Function(NotificationUpdateAutomaticCorrection) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? previousStarts = null,Object? number = null,Object? startTime = null,Object? timestamp = null,Object? correction = null,}) {
  return _then(NotificationUpdateAutomaticCorrection(
previousStarts: null == previousStarts ? _self._previousStarts : previousStarts // ignore: cast_nullable_to_non_nullable
as List<StartingParticipant>,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,correction: null == correction ? _self.correction : correction // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class NotificationChangeFinishTimeToNumber implements Notification {
  const NotificationChangeFinishTimeToNumber({required this.finishId, required this.number, required this.finishTime, required this.stage});
  

 final  int finishId;
@override final  int number;
 final  String finishTime;
 final  Stage stage;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationChangeFinishTimeToNumberCopyWith<NotificationChangeFinishTimeToNumber> get copyWith => _$NotificationChangeFinishTimeToNumberCopyWithImpl<NotificationChangeFinishTimeToNumber>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationChangeFinishTimeToNumber&&(identical(other.finishId, finishId) || other.finishId == finishId)&&(identical(other.number, number) || other.number == number)&&(identical(other.finishTime, finishTime) || other.finishTime == finishTime)&&const DeepCollectionEquality().equals(other.stage, stage));
}


@override
int get hashCode => Object.hash(runtimeType,finishId,number,finishTime,const DeepCollectionEquality().hash(stage));

@override
String toString() {
  return 'Notification.changeFinishTimeToNumber(finishId: $finishId, number: $number, finishTime: $finishTime, stage: $stage)';
}


}

/// @nodoc
abstract mixin class $NotificationChangeFinishTimeToNumberCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory $NotificationChangeFinishTimeToNumberCopyWith(NotificationChangeFinishTimeToNumber value, $Res Function(NotificationChangeFinishTimeToNumber) _then) = _$NotificationChangeFinishTimeToNumberCopyWithImpl;
@override @useResult
$Res call({
 int finishId, int number, String finishTime, Stage stage
});




}
/// @nodoc
class _$NotificationChangeFinishTimeToNumberCopyWithImpl<$Res>
    implements $NotificationChangeFinishTimeToNumberCopyWith<$Res> {
  _$NotificationChangeFinishTimeToNumberCopyWithImpl(this._self, this._then);

  final NotificationChangeFinishTimeToNumber _self;
  final $Res Function(NotificationChangeFinishTimeToNumber) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? finishId = null,Object? number = null,Object? finishTime = null,Object? stage = freezed,}) {
  return _then(NotificationChangeFinishTimeToNumber(
finishId: null == finishId ? _self.finishId : finishId // ignore: cast_nullable_to_non_nullable
as int,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,finishTime: null == finishTime ? _self.finishTime : finishTime // ignore: cast_nullable_to_non_nullable
as String,stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as Stage,
  ));
}


}

// dart format on
