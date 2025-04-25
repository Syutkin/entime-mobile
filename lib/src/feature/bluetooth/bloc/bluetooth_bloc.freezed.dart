// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  const _SelectDevice({this.deviceWithAvailability});
  

 final  BluetoothDeviceWithAvailability? deviceWithAvailability;

/// Create a copy of BluetoothEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectDeviceCopyWith<_SelectDevice> get copyWith => __$SelectDeviceCopyWithImpl<_SelectDevice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectDevice&&(identical(other.deviceWithAvailability, deviceWithAvailability) || other.deviceWithAvailability == deviceWithAvailability));
}


@override
int get hashCode => Object.hash(runtimeType,deviceWithAvailability);

@override
String toString() {
  return 'BluetoothEvent.selectDevice(deviceWithAvailability: $deviceWithAvailability)';
}


}

/// @nodoc
abstract mixin class _$SelectDeviceCopyWith<$Res> implements $BluetoothEventCopyWith<$Res> {
  factory _$SelectDeviceCopyWith(_SelectDevice value, $Res Function(_SelectDevice) _then) = __$SelectDeviceCopyWithImpl;
@useResult
$Res call({
 BluetoothDeviceWithAvailability? deviceWithAvailability
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
@pragma('vm:prefer-inline') $Res call({Object? deviceWithAvailability = freezed,}) {
  return _then(_SelectDevice(
deviceWithAvailability: freezed == deviceWithAvailability ? _self.deviceWithAvailability : deviceWithAvailability // ignore: cast_nullable_to_non_nullable
as BluetoothDeviceWithAvailability?,
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
  const BluetoothBlocStateConnected({this.message});
  

 final  BluetoothMessage? message;

/// Create a copy of BluetoothBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BluetoothBlocStateConnectedCopyWith<BluetoothBlocStateConnected> get copyWith => _$BluetoothBlocStateConnectedCopyWithImpl<BluetoothBlocStateConnected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothBlocStateConnected&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BluetoothBlocState.connected(message: $message)';
}


}

/// @nodoc
abstract mixin class $BluetoothBlocStateConnectedCopyWith<$Res> implements $BluetoothBlocStateCopyWith<$Res> {
  factory $BluetoothBlocStateConnectedCopyWith(BluetoothBlocStateConnected value, $Res Function(BluetoothBlocStateConnected) _then) = _$BluetoothBlocStateConnectedCopyWithImpl;
@useResult
$Res call({
 BluetoothMessage? message
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
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(BluetoothBlocStateConnected(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as BluetoothMessage?,
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
