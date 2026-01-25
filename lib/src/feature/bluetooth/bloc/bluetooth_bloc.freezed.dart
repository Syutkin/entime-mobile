// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluetooth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BluetoothEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothEvent()';
}


}

/// @nodoc
class $BluetoothEventCopyWith<$Res>  {
$BluetoothEventCopyWith(BluetoothEvent _, $Res Function(BluetoothEvent) __);
}


/// Adds pattern-matching-related methods to [BluetoothEvent].
extension BluetoothEventPatterns on BluetoothEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initialize value)?  initialize,TResult Function( _Enable value)?  enable,TResult Function( _SelectDevice value)?  selectDevice,TResult Function( _Connected value)?  connected,TResult Function( _Connect value)?  connect,TResult Function( _Disconnect value)?  disconnect,TResult Function( _Disconnected value)?  disconnected,TResult Function( _MessageReceived value)?  messageReceived,TResult Function( _SendMessage value)?  sendMessage,TResult Function( _BatteryLevelUpdated value)?  batteryLevelUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that);case _Enable() when enable != null:
return enable(_that);case _SelectDevice() when selectDevice != null:
return selectDevice(_that);case _Connected() when connected != null:
return connected(_that);case _Connect() when connect != null:
return connect(_that);case _Disconnect() when disconnect != null:
return disconnect(_that);case _Disconnected() when disconnected != null:
return disconnected(_that);case _MessageReceived() when messageReceived != null:
return messageReceived(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _BatteryLevelUpdated() when batteryLevelUpdated != null:
return batteryLevelUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initialize value)  initialize,required TResult Function( _Enable value)  enable,required TResult Function( _SelectDevice value)  selectDevice,required TResult Function( _Connected value)  connected,required TResult Function( _Connect value)  connect,required TResult Function( _Disconnect value)  disconnect,required TResult Function( _Disconnected value)  disconnected,required TResult Function( _MessageReceived value)  messageReceived,required TResult Function( _SendMessage value)  sendMessage,required TResult Function( _BatteryLevelUpdated value)  batteryLevelUpdated,}){
final _that = this;
switch (_that) {
case _Initialize():
return initialize(_that);case _Enable():
return enable(_that);case _SelectDevice():
return selectDevice(_that);case _Connected():
return connected(_that);case _Connect():
return connect(_that);case _Disconnect():
return disconnect(_that);case _Disconnected():
return disconnected(_that);case _MessageReceived():
return messageReceived(_that);case _SendMessage():
return sendMessage(_that);case _BatteryLevelUpdated():
return batteryLevelUpdated(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initialize value)?  initialize,TResult? Function( _Enable value)?  enable,TResult? Function( _SelectDevice value)?  selectDevice,TResult? Function( _Connected value)?  connected,TResult? Function( _Connect value)?  connect,TResult? Function( _Disconnect value)?  disconnect,TResult? Function( _Disconnected value)?  disconnected,TResult? Function( _MessageReceived value)?  messageReceived,TResult? Function( _SendMessage value)?  sendMessage,TResult? Function( _BatteryLevelUpdated value)?  batteryLevelUpdated,}){
final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that);case _Enable() when enable != null:
return enable(_that);case _SelectDevice() when selectDevice != null:
return selectDevice(_that);case _Connected() when connected != null:
return connected(_that);case _Connect() when connect != null:
return connect(_that);case _Disconnect() when disconnect != null:
return disconnect(_that);case _Disconnected() when disconnected != null:
return disconnected(_that);case _MessageReceived() when messageReceived != null:
return messageReceived(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _BatteryLevelUpdated() when batteryLevelUpdated != null:
return batteryLevelUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialize,TResult Function()?  enable,TResult Function( BluetoothDeviceWithRSSI? deviceWithRssi)?  selectDevice,TResult Function()?  connected,TResult Function( BluetoothDevice? selectedDevice)?  connect,TResult Function()?  disconnect,TResult Function()?  disconnected,TResult Function( String message,  int stageId)?  messageReceived,TResult Function( String message)?  sendMessage,TResult Function( int level)?  batteryLevelUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize();case _Enable() when enable != null:
return enable();case _SelectDevice() when selectDevice != null:
return selectDevice(_that.deviceWithRssi);case _Connected() when connected != null:
return connected();case _Connect() when connect != null:
return connect(_that.selectedDevice);case _Disconnect() when disconnect != null:
return disconnect();case _Disconnected() when disconnected != null:
return disconnected();case _MessageReceived() when messageReceived != null:
return messageReceived(_that.message,_that.stageId);case _SendMessage() when sendMessage != null:
return sendMessage(_that.message);case _BatteryLevelUpdated() when batteryLevelUpdated != null:
return batteryLevelUpdated(_that.level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialize,required TResult Function()  enable,required TResult Function( BluetoothDeviceWithRSSI? deviceWithRssi)  selectDevice,required TResult Function()  connected,required TResult Function( BluetoothDevice? selectedDevice)  connect,required TResult Function()  disconnect,required TResult Function()  disconnected,required TResult Function( String message,  int stageId)  messageReceived,required TResult Function( String message)  sendMessage,required TResult Function( int level)  batteryLevelUpdated,}) {final _that = this;
switch (_that) {
case _Initialize():
return initialize();case _Enable():
return enable();case _SelectDevice():
return selectDevice(_that.deviceWithRssi);case _Connected():
return connected();case _Connect():
return connect(_that.selectedDevice);case _Disconnect():
return disconnect();case _Disconnected():
return disconnected();case _MessageReceived():
return messageReceived(_that.message,_that.stageId);case _SendMessage():
return sendMessage(_that.message);case _BatteryLevelUpdated():
return batteryLevelUpdated(_that.level);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialize,TResult? Function()?  enable,TResult? Function( BluetoothDeviceWithRSSI? deviceWithRssi)?  selectDevice,TResult? Function()?  connected,TResult? Function( BluetoothDevice? selectedDevice)?  connect,TResult? Function()?  disconnect,TResult? Function()?  disconnected,TResult? Function( String message,  int stageId)?  messageReceived,TResult? Function( String message)?  sendMessage,TResult? Function( int level)?  batteryLevelUpdated,}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize();case _Enable() when enable != null:
return enable();case _SelectDevice() when selectDevice != null:
return selectDevice(_that.deviceWithRssi);case _Connected() when connected != null:
return connected();case _Connect() when connect != null:
return connect(_that.selectedDevice);case _Disconnect() when disconnect != null:
return disconnect();case _Disconnected() when disconnected != null:
return disconnected();case _MessageReceived() when messageReceived != null:
return messageReceived(_that.message,_that.stageId);case _SendMessage() when sendMessage != null:
return sendMessage(_that.message);case _BatteryLevelUpdated() when batteryLevelUpdated != null:
return batteryLevelUpdated(_that.level);case _:
  return null;

}
}

}

/// @nodoc


class _Initialize implements BluetoothEvent {
  const _Initialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothEvent.initialize()';
}


}




/// @nodoc


class _Enable implements BluetoothEvent {
  const _Enable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Enable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothEvent.enable()';
}


}




/// @nodoc


class _SelectDevice implements BluetoothEvent {
  const _SelectDevice({this.deviceWithRssi});
  

 final  BluetoothDeviceWithRSSI? deviceWithRssi;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectDeviceCopyWith<_SelectDevice> get copyWith => __$SelectDeviceCopyWithImpl<_SelectDevice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectDevice&&(identical(other.deviceWithRssi, deviceWithRssi) || other.deviceWithRssi == deviceWithRssi));
}


@override
int get hashCode => Object.hash(runtimeType,deviceWithRssi);

@override
String toString() {
  return 'BluetoothEvent.selectDevice(deviceWithRssi: $deviceWithRssi)';
}


}

/// @nodoc
abstract mixin class _$SelectDeviceCopyWith<$Res> implements $BluetoothEventCopyWith<$Res> {
  factory _$SelectDeviceCopyWith(_SelectDevice value, $Res Function(_SelectDevice) _then) = __$SelectDeviceCopyWithImpl;
@useResult
$Res call({
 BluetoothDeviceWithRSSI? deviceWithRssi
});




}
/// @nodoc
class __$SelectDeviceCopyWithImpl<$Res>
    implements _$SelectDeviceCopyWith<$Res> {
  __$SelectDeviceCopyWithImpl(this._self, this._then);

  final _SelectDevice _self;
  final $Res Function(_SelectDevice) _then;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deviceWithRssi = freezed,}) {
  return _then(_SelectDevice(
deviceWithRssi: freezed == deviceWithRssi ? _self.deviceWithRssi : deviceWithRssi // ignore: cast_nullable_to_non_nullable
as BluetoothDeviceWithRSSI?,
  ));
}


}

/// @nodoc


class _Connected implements BluetoothEvent {
  const _Connected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Connected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothEvent.connected()';
}


}




/// @nodoc


class _Connect implements BluetoothEvent {
  const _Connect({this.selectedDevice});
  

 final  BluetoothDevice? selectedDevice;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectCopyWith<_Connect> get copyWith => __$ConnectCopyWithImpl<_Connect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Connect&&(identical(other.selectedDevice, selectedDevice) || other.selectedDevice == selectedDevice));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDevice);

@override
String toString() {
  return 'BluetoothEvent.connect(selectedDevice: $selectedDevice)';
}


}

/// @nodoc
abstract mixin class _$ConnectCopyWith<$Res> implements $BluetoothEventCopyWith<$Res> {
  factory _$ConnectCopyWith(_Connect value, $Res Function(_Connect) _then) = __$ConnectCopyWithImpl;
@useResult
$Res call({
 BluetoothDevice? selectedDevice
});




}
/// @nodoc
class __$ConnectCopyWithImpl<$Res>
    implements _$ConnectCopyWith<$Res> {
  __$ConnectCopyWithImpl(this._self, this._then);

  final _Connect _self;
  final $Res Function(_Connect) _then;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedDevice = freezed,}) {
  return _then(_Connect(
selectedDevice: freezed == selectedDevice ? _self.selectedDevice : selectedDevice // ignore: cast_nullable_to_non_nullable
as BluetoothDevice?,
  ));
}


}

/// @nodoc


class _Disconnect implements BluetoothEvent {
  const _Disconnect();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Disconnect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothEvent.disconnect()';
}


}




/// @nodoc


class _Disconnected implements BluetoothEvent {
  const _Disconnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Disconnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothEvent.disconnected()';
}


}




/// @nodoc


class _MessageReceived implements BluetoothEvent {
  const _MessageReceived({required this.message, required this.stageId});
  

 final  String message;
 final  int stageId;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageReceivedCopyWith<_MessageReceived> get copyWith => __$MessageReceivedCopyWithImpl<_MessageReceived>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageReceived&&(identical(other.message, message) || other.message == message)&&(identical(other.stageId, stageId) || other.stageId == stageId));
}


@override
int get hashCode => Object.hash(runtimeType,message,stageId);

@override
String toString() {
  return 'BluetoothEvent.messageReceived(message: $message, stageId: $stageId)';
}


}

/// @nodoc
abstract mixin class _$MessageReceivedCopyWith<$Res> implements $BluetoothEventCopyWith<$Res> {
  factory _$MessageReceivedCopyWith(_MessageReceived value, $Res Function(_MessageReceived) _then) = __$MessageReceivedCopyWithImpl;
@useResult
$Res call({
 String message, int stageId
});




}
/// @nodoc
class __$MessageReceivedCopyWithImpl<$Res>
    implements _$MessageReceivedCopyWith<$Res> {
  __$MessageReceivedCopyWithImpl(this._self, this._then);

  final _MessageReceived _self;
  final $Res Function(_MessageReceived) _then;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? stageId = null,}) {
  return _then(_MessageReceived(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SendMessage implements BluetoothEvent {
  const _SendMessage({required this.message});
  

 final  String message;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageCopyWith<_SendMessage> get copyWith => __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BluetoothEvent.sendMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SendMessageCopyWith<$Res> implements $BluetoothEventCopyWith<$Res> {
  factory _$SendMessageCopyWith(_SendMessage value, $Res Function(_SendMessage) _then) = __$SendMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(this._self, this._then);

  final _SendMessage _self;
  final $Res Function(_SendMessage) _then;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SendMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _BatteryLevelUpdated implements BluetoothEvent {
  const _BatteryLevelUpdated({required this.level});
  

 final  int level;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BatteryLevelUpdatedCopyWith<_BatteryLevelUpdated> get copyWith => __$BatteryLevelUpdatedCopyWithImpl<_BatteryLevelUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BatteryLevelUpdated&&(identical(other.level, level) || other.level == level));
}


@override
int get hashCode => Object.hash(runtimeType,level);

@override
String toString() {
  return 'BluetoothEvent.batteryLevelUpdated(level: $level)';
}


}

/// @nodoc
abstract mixin class _$BatteryLevelUpdatedCopyWith<$Res> implements $BluetoothEventCopyWith<$Res> {
  factory _$BatteryLevelUpdatedCopyWith(_BatteryLevelUpdated value, $Res Function(_BatteryLevelUpdated) _then) = __$BatteryLevelUpdatedCopyWithImpl;
@useResult
$Res call({
 int level
});




}
/// @nodoc
class __$BatteryLevelUpdatedCopyWithImpl<$Res>
    implements _$BatteryLevelUpdatedCopyWith<$Res> {
  __$BatteryLevelUpdatedCopyWithImpl(this._self, this._then);

  final _BatteryLevelUpdated _self;
  final $Res Function(_BatteryLevelUpdated) _then;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? level = null,}) {
  return _then(_BatteryLevelUpdated(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$BluetoothBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothBlocState()';
}


}

/// @nodoc
class $BluetoothBlocStateCopyWith<$Res>  {
$BluetoothBlocStateCopyWith(BluetoothBlocState _, $Res Function(BluetoothBlocState) __);
}


/// Adds pattern-matching-related methods to [BluetoothBlocState].
extension BluetoothBlocStatePatterns on BluetoothBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BluetoothBlocStateNotInitialized value)?  notInitialized,TResult Function( BluetoothBlocStateNotAvailable value)?  notAvailable,TResult Function( BluetoothBlocStateNotEnabled value)?  notEnabled,TResult Function( BluetoothBlocStateConnecting value)?  connecting,TResult Function( BluetoothBlocStateConnected value)?  connected,TResult Function( BluetoothBlocStateDisconnecting value)?  disconnecting,TResult Function( BluetoothBlocStateDisconnected value)?  disconnected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BluetoothBlocStateNotInitialized() when notInitialized != null:
return notInitialized(_that);case BluetoothBlocStateNotAvailable() when notAvailable != null:
return notAvailable(_that);case BluetoothBlocStateNotEnabled() when notEnabled != null:
return notEnabled(_that);case BluetoothBlocStateConnecting() when connecting != null:
return connecting(_that);case BluetoothBlocStateConnected() when connected != null:
return connected(_that);case BluetoothBlocStateDisconnecting() when disconnecting != null:
return disconnecting(_that);case BluetoothBlocStateDisconnected() when disconnected != null:
return disconnected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BluetoothBlocStateNotInitialized value)  notInitialized,required TResult Function( BluetoothBlocStateNotAvailable value)  notAvailable,required TResult Function( BluetoothBlocStateNotEnabled value)  notEnabled,required TResult Function( BluetoothBlocStateConnecting value)  connecting,required TResult Function( BluetoothBlocStateConnected value)  connected,required TResult Function( BluetoothBlocStateDisconnecting value)  disconnecting,required TResult Function( BluetoothBlocStateDisconnected value)  disconnected,}){
final _that = this;
switch (_that) {
case BluetoothBlocStateNotInitialized():
return notInitialized(_that);case BluetoothBlocStateNotAvailable():
return notAvailable(_that);case BluetoothBlocStateNotEnabled():
return notEnabled(_that);case BluetoothBlocStateConnecting():
return connecting(_that);case BluetoothBlocStateConnected():
return connected(_that);case BluetoothBlocStateDisconnecting():
return disconnecting(_that);case BluetoothBlocStateDisconnected():
return disconnected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BluetoothBlocStateNotInitialized value)?  notInitialized,TResult? Function( BluetoothBlocStateNotAvailable value)?  notAvailable,TResult? Function( BluetoothBlocStateNotEnabled value)?  notEnabled,TResult? Function( BluetoothBlocStateConnecting value)?  connecting,TResult? Function( BluetoothBlocStateConnected value)?  connected,TResult? Function( BluetoothBlocStateDisconnecting value)?  disconnecting,TResult? Function( BluetoothBlocStateDisconnected value)?  disconnected,}){
final _that = this;
switch (_that) {
case BluetoothBlocStateNotInitialized() when notInitialized != null:
return notInitialized(_that);case BluetoothBlocStateNotAvailable() when notAvailable != null:
return notAvailable(_that);case BluetoothBlocStateNotEnabled() when notEnabled != null:
return notEnabled(_that);case BluetoothBlocStateConnecting() when connecting != null:
return connecting(_that);case BluetoothBlocStateConnected() when connected != null:
return connected(_that);case BluetoothBlocStateDisconnecting() when disconnecting != null:
return disconnecting(_that);case BluetoothBlocStateDisconnected() when disconnected != null:
return disconnected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  notInitialized,TResult Function()?  notAvailable,TResult Function()?  notEnabled,TResult Function()?  connecting,TResult Function( BluetoothMessage? message,  int? batteryLevel)?  connected,TResult Function()?  disconnecting,TResult Function( BluetoothDevice? bluetoothDevice)?  disconnected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BluetoothBlocStateNotInitialized() when notInitialized != null:
return notInitialized();case BluetoothBlocStateNotAvailable() when notAvailable != null:
return notAvailable();case BluetoothBlocStateNotEnabled() when notEnabled != null:
return notEnabled();case BluetoothBlocStateConnecting() when connecting != null:
return connecting();case BluetoothBlocStateConnected() when connected != null:
return connected(_that.message,_that.batteryLevel);case BluetoothBlocStateDisconnecting() when disconnecting != null:
return disconnecting();case BluetoothBlocStateDisconnected() when disconnected != null:
return disconnected(_that.bluetoothDevice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  notInitialized,required TResult Function()  notAvailable,required TResult Function()  notEnabled,required TResult Function()  connecting,required TResult Function( BluetoothMessage? message,  int? batteryLevel)  connected,required TResult Function()  disconnecting,required TResult Function( BluetoothDevice? bluetoothDevice)  disconnected,}) {final _that = this;
switch (_that) {
case BluetoothBlocStateNotInitialized():
return notInitialized();case BluetoothBlocStateNotAvailable():
return notAvailable();case BluetoothBlocStateNotEnabled():
return notEnabled();case BluetoothBlocStateConnecting():
return connecting();case BluetoothBlocStateConnected():
return connected(_that.message,_that.batteryLevel);case BluetoothBlocStateDisconnecting():
return disconnecting();case BluetoothBlocStateDisconnected():
return disconnected(_that.bluetoothDevice);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  notInitialized,TResult? Function()?  notAvailable,TResult? Function()?  notEnabled,TResult? Function()?  connecting,TResult? Function( BluetoothMessage? message,  int? batteryLevel)?  connected,TResult? Function()?  disconnecting,TResult? Function( BluetoothDevice? bluetoothDevice)?  disconnected,}) {final _that = this;
switch (_that) {
case BluetoothBlocStateNotInitialized() when notInitialized != null:
return notInitialized();case BluetoothBlocStateNotAvailable() when notAvailable != null:
return notAvailable();case BluetoothBlocStateNotEnabled() when notEnabled != null:
return notEnabled();case BluetoothBlocStateConnecting() when connecting != null:
return connecting();case BluetoothBlocStateConnected() when connected != null:
return connected(_that.message,_that.batteryLevel);case BluetoothBlocStateDisconnecting() when disconnecting != null:
return disconnecting();case BluetoothBlocStateDisconnected() when disconnected != null:
return disconnected(_that.bluetoothDevice);case _:
  return null;

}
}

}

/// @nodoc


class BluetoothBlocStateNotInitialized implements BluetoothBlocState {
  const BluetoothBlocStateNotInitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothBlocStateNotInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothBlocState.notInitialized()';
}


}




/// @nodoc


class BluetoothBlocStateNotAvailable implements BluetoothBlocState {
  const BluetoothBlocStateNotAvailable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothBlocStateNotAvailable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothBlocState.notAvailable()';
}


}




/// @nodoc


class BluetoothBlocStateNotEnabled implements BluetoothBlocState {
  const BluetoothBlocStateNotEnabled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothBlocStateNotEnabled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothBlocState.notEnabled()';
}


}




/// @nodoc


class BluetoothBlocStateConnecting implements BluetoothBlocState {
  const BluetoothBlocStateConnecting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothBlocStateConnecting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothBlocState.connecting()';
}


}




/// @nodoc


class BluetoothBlocStateConnected implements BluetoothBlocState {
  const BluetoothBlocStateConnected({this.message, this.batteryLevel});
  

 final  BluetoothMessage? message;
 final  int? batteryLevel;

/// Create a copy of BluetoothBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BluetoothBlocStateConnectedCopyWith<BluetoothBlocStateConnected> get copyWith => _$BluetoothBlocStateConnectedCopyWithImpl<BluetoothBlocStateConnected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothBlocStateConnected&&(identical(other.message, message) || other.message == message)&&(identical(other.batteryLevel, batteryLevel) || other.batteryLevel == batteryLevel));
}


@override
int get hashCode => Object.hash(runtimeType,message,batteryLevel);

@override
String toString() {
  return 'BluetoothBlocState.connected(message: $message, batteryLevel: $batteryLevel)';
}


}

/// @nodoc
abstract mixin class $BluetoothBlocStateConnectedCopyWith<$Res> implements $BluetoothBlocStateCopyWith<$Res> {
  factory $BluetoothBlocStateConnectedCopyWith(BluetoothBlocStateConnected value, $Res Function(BluetoothBlocStateConnected) _then) = _$BluetoothBlocStateConnectedCopyWithImpl;
@useResult
$Res call({
 BluetoothMessage? message, int? batteryLevel
});


$BluetoothMessageCopyWith<$Res>? get message;

}
/// @nodoc
class _$BluetoothBlocStateConnectedCopyWithImpl<$Res>
    implements $BluetoothBlocStateConnectedCopyWith<$Res> {
  _$BluetoothBlocStateConnectedCopyWithImpl(this._self, this._then);

  final BluetoothBlocStateConnected _self;
  final $Res Function(BluetoothBlocStateConnected) _then;

/// Create a copy of BluetoothBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? batteryLevel = freezed,}) {
  return _then(BluetoothBlocStateConnected(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as BluetoothMessage?,batteryLevel: freezed == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of BluetoothBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BluetoothMessageCopyWith<$Res>? get message {
    if (_self.message == null) {
    return null;
  }

  return $BluetoothMessageCopyWith<$Res>(_self.message!, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

/// @nodoc


class BluetoothBlocStateDisconnecting implements BluetoothBlocState {
  const BluetoothBlocStateDisconnecting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothBlocStateDisconnecting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothBlocState.disconnecting()';
}


}




/// @nodoc


class BluetoothBlocStateDisconnected implements BluetoothBlocState {
  const BluetoothBlocStateDisconnected({this.bluetoothDevice});
  

 final  BluetoothDevice? bluetoothDevice;

/// Create a copy of BluetoothBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BluetoothBlocStateDisconnectedCopyWith<BluetoothBlocStateDisconnected> get copyWith => _$BluetoothBlocStateDisconnectedCopyWithImpl<BluetoothBlocStateDisconnected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothBlocStateDisconnected&&(identical(other.bluetoothDevice, bluetoothDevice) || other.bluetoothDevice == bluetoothDevice));
}


@override
int get hashCode => Object.hash(runtimeType,bluetoothDevice);

@override
String toString() {
  return 'BluetoothBlocState.disconnected(bluetoothDevice: $bluetoothDevice)';
}


}

/// @nodoc
abstract mixin class $BluetoothBlocStateDisconnectedCopyWith<$Res> implements $BluetoothBlocStateCopyWith<$Res> {
  factory $BluetoothBlocStateDisconnectedCopyWith(BluetoothBlocStateDisconnected value, $Res Function(BluetoothBlocStateDisconnected) _then) = _$BluetoothBlocStateDisconnectedCopyWithImpl;
@useResult
$Res call({
 BluetoothDevice? bluetoothDevice
});




}
/// @nodoc
class _$BluetoothBlocStateDisconnectedCopyWithImpl<$Res>
    implements $BluetoothBlocStateDisconnectedCopyWith<$Res> {
  _$BluetoothBlocStateDisconnectedCopyWithImpl(this._self, this._then);

  final BluetoothBlocStateDisconnected _self;
  final $Res Function(BluetoothBlocStateDisconnected) _then;

/// Create a copy of BluetoothBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bluetoothDevice = freezed,}) {
  return _then(BluetoothBlocStateDisconnected(
bluetoothDevice: freezed == bluetoothDevice ? _self.bluetoothDevice : bluetoothDevice // ignore: cast_nullable_to_non_nullable
as BluetoothDevice?,
  ));
}


}

// dart format on
