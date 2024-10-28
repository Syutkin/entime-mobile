// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluetooth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BluetoothEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message, int stageId) messageReceived,
    required TResult Function(String message) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? enable,
    TResult? Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult? Function()? connected,
    TResult? Function(BluetoothDevice? selectedDevice)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? disconnected,
    TResult? Function(String message, int stageId)? messageReceived,
    TResult? Function(String message)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message, int stageId)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeBluetooth value)? initialize,
    TResult? Function(_EnableBluetooth value)? enable,
    TResult? Function(_SelectDevice value)? selectDevice,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothEventCopyWith<$Res> {
  factory $BluetoothEventCopyWith(
          BluetoothEvent value, $Res Function(BluetoothEvent) then) =
      _$BluetoothEventCopyWithImpl<$Res, BluetoothEvent>;
}

/// @nodoc
class _$BluetoothEventCopyWithImpl<$Res, $Val extends BluetoothEvent>
    implements $BluetoothEventCopyWith<$Res> {
  _$BluetoothEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeBluetoothImplCopyWith<$Res> {
  factory _$$InitializeBluetoothImplCopyWith(_$InitializeBluetoothImpl value,
          $Res Function(_$InitializeBluetoothImpl) then) =
      __$$InitializeBluetoothImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeBluetoothImplCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res, _$InitializeBluetoothImpl>
    implements _$$InitializeBluetoothImplCopyWith<$Res> {
  __$$InitializeBluetoothImplCopyWithImpl(_$InitializeBluetoothImpl _value,
      $Res Function(_$InitializeBluetoothImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeBluetoothImpl implements _InitializeBluetooth {
  const _$InitializeBluetoothImpl();

  @override
  String toString() {
    return 'BluetoothEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeBluetoothImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message, int stageId) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? enable,
    TResult? Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult? Function()? connected,
    TResult? Function(BluetoothDevice? selectedDevice)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? disconnected,
    TResult? Function(String message, int stageId)? messageReceived,
    TResult? Function(String message)? sendMessage,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message, int stageId)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeBluetooth value)? initialize,
    TResult? Function(_EnableBluetooth value)? enable,
    TResult? Function(_SelectDevice value)? selectDevice,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _InitializeBluetooth implements BluetoothEvent {
  const factory _InitializeBluetooth() = _$InitializeBluetoothImpl;
}

/// @nodoc
abstract class _$$EnableBluetoothImplCopyWith<$Res> {
  factory _$$EnableBluetoothImplCopyWith(_$EnableBluetoothImpl value,
          $Res Function(_$EnableBluetoothImpl) then) =
      __$$EnableBluetoothImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnableBluetoothImplCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res, _$EnableBluetoothImpl>
    implements _$$EnableBluetoothImplCopyWith<$Res> {
  __$$EnableBluetoothImplCopyWithImpl(
      _$EnableBluetoothImpl _value, $Res Function(_$EnableBluetoothImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EnableBluetoothImpl implements _EnableBluetooth {
  const _$EnableBluetoothImpl();

  @override
  String toString() {
    return 'BluetoothEvent.enable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnableBluetoothImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message, int stageId) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return enable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? enable,
    TResult? Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult? Function()? connected,
    TResult? Function(BluetoothDevice? selectedDevice)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? disconnected,
    TResult? Function(String message, int stageId)? messageReceived,
    TResult? Function(String message)? sendMessage,
  }) {
    return enable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message, int stageId)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (enable != null) {
      return enable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return enable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeBluetooth value)? initialize,
    TResult? Function(_EnableBluetooth value)? enable,
    TResult? Function(_SelectDevice value)? selectDevice,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return enable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (enable != null) {
      return enable(this);
    }
    return orElse();
  }
}

abstract class _EnableBluetooth implements BluetoothEvent {
  const factory _EnableBluetooth() = _$EnableBluetoothImpl;
}

/// @nodoc
abstract class _$$SelectDeviceImplCopyWith<$Res> {
  factory _$$SelectDeviceImplCopyWith(
          _$SelectDeviceImpl value, $Res Function(_$SelectDeviceImpl) then) =
      __$$SelectDeviceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BluetoothDeviceWithAvailability? deviceWithAvailability});
}

/// @nodoc
class __$$SelectDeviceImplCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res, _$SelectDeviceImpl>
    implements _$$SelectDeviceImplCopyWith<$Res> {
  __$$SelectDeviceImplCopyWithImpl(
      _$SelectDeviceImpl _value, $Res Function(_$SelectDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceWithAvailability = freezed,
  }) {
    return _then(_$SelectDeviceImpl(
      deviceWithAvailability: freezed == deviceWithAvailability
          ? _value.deviceWithAvailability
          : deviceWithAvailability // ignore: cast_nullable_to_non_nullable
              as BluetoothDeviceWithAvailability?,
    ));
  }
}

/// @nodoc

class _$SelectDeviceImpl implements _SelectDevice {
  const _$SelectDeviceImpl({this.deviceWithAvailability});

  @override
  final BluetoothDeviceWithAvailability? deviceWithAvailability;

  @override
  String toString() {
    return 'BluetoothEvent.selectDevice(deviceWithAvailability: $deviceWithAvailability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDeviceImpl &&
            (identical(other.deviceWithAvailability, deviceWithAvailability) ||
                other.deviceWithAvailability == deviceWithAvailability));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceWithAvailability);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDeviceImplCopyWith<_$SelectDeviceImpl> get copyWith =>
      __$$SelectDeviceImplCopyWithImpl<_$SelectDeviceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message, int stageId) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return selectDevice(deviceWithAvailability);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? enable,
    TResult? Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult? Function()? connected,
    TResult? Function(BluetoothDevice? selectedDevice)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? disconnected,
    TResult? Function(String message, int stageId)? messageReceived,
    TResult? Function(String message)? sendMessage,
  }) {
    return selectDevice?.call(deviceWithAvailability);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message, int stageId)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (selectDevice != null) {
      return selectDevice(deviceWithAvailability);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return selectDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeBluetooth value)? initialize,
    TResult? Function(_EnableBluetooth value)? enable,
    TResult? Function(_SelectDevice value)? selectDevice,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return selectDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (selectDevice != null) {
      return selectDevice(this);
    }
    return orElse();
  }
}

abstract class _SelectDevice implements BluetoothEvent {
  const factory _SelectDevice(
          {final BluetoothDeviceWithAvailability? deviceWithAvailability}) =
      _$SelectDeviceImpl;

  BluetoothDeviceWithAvailability? get deviceWithAvailability;

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectDeviceImplCopyWith<_$SelectDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectedImplCopyWith<$Res> {
  factory _$$ConnectedImplCopyWith(
          _$ConnectedImpl value, $Res Function(_$ConnectedImpl) then) =
      __$$ConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedImplCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res, _$ConnectedImpl>
    implements _$$ConnectedImplCopyWith<$Res> {
  __$$ConnectedImplCopyWithImpl(
      _$ConnectedImpl _value, $Res Function(_$ConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectedImpl implements _Connected {
  const _$ConnectedImpl();

  @override
  String toString() {
    return 'BluetoothEvent.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message, int stageId) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? enable,
    TResult? Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult? Function()? connected,
    TResult? Function(BluetoothDevice? selectedDevice)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? disconnected,
    TResult? Function(String message, int stageId)? messageReceived,
    TResult? Function(String message)? sendMessage,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message, int stageId)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeBluetooth value)? initialize,
    TResult? Function(_EnableBluetooth value)? enable,
    TResult? Function(_SelectDevice value)? selectDevice,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements BluetoothEvent {
  const factory _Connected() = _$ConnectedImpl;
}

/// @nodoc
abstract class _$$ConnectImplCopyWith<$Res> {
  factory _$$ConnectImplCopyWith(
          _$ConnectImpl value, $Res Function(_$ConnectImpl) then) =
      __$$ConnectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BluetoothDevice? selectedDevice});
}

/// @nodoc
class __$$ConnectImplCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res, _$ConnectImpl>
    implements _$$ConnectImplCopyWith<$Res> {
  __$$ConnectImplCopyWithImpl(
      _$ConnectImpl _value, $Res Function(_$ConnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDevice = freezed,
  }) {
    return _then(_$ConnectImpl(
      selectedDevice: freezed == selectedDevice
          ? _value.selectedDevice
          : selectedDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
    ));
  }
}

/// @nodoc

class _$ConnectImpl implements _Connect {
  const _$ConnectImpl({this.selectedDevice});

  @override
  final BluetoothDevice? selectedDevice;

  @override
  String toString() {
    return 'BluetoothEvent.connect(selectedDevice: $selectedDevice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectImpl &&
            (identical(other.selectedDevice, selectedDevice) ||
                other.selectedDevice == selectedDevice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDevice);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectImplCopyWith<_$ConnectImpl> get copyWith =>
      __$$ConnectImplCopyWithImpl<_$ConnectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message, int stageId) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return connect(selectedDevice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? enable,
    TResult? Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult? Function()? connected,
    TResult? Function(BluetoothDevice? selectedDevice)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? disconnected,
    TResult? Function(String message, int stageId)? messageReceived,
    TResult? Function(String message)? sendMessage,
  }) {
    return connect?.call(selectedDevice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message, int stageId)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(selectedDevice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeBluetooth value)? initialize,
    TResult? Function(_EnableBluetooth value)? enable,
    TResult? Function(_SelectDevice value)? selectDevice,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _Connect implements BluetoothEvent {
  const factory _Connect({final BluetoothDevice? selectedDevice}) =
      _$ConnectImpl;

  BluetoothDevice? get selectedDevice;

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectImplCopyWith<_$ConnectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisconnectImplCopyWith<$Res> {
  factory _$$DisconnectImplCopyWith(
          _$DisconnectImpl value, $Res Function(_$DisconnectImpl) then) =
      __$$DisconnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectImplCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res, _$DisconnectImpl>
    implements _$$DisconnectImplCopyWith<$Res> {
  __$$DisconnectImplCopyWithImpl(
      _$DisconnectImpl _value, $Res Function(_$DisconnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectImpl implements _Disconnect {
  const _$DisconnectImpl();

  @override
  String toString() {
    return 'BluetoothEvent.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message, int stageId) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? enable,
    TResult? Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult? Function()? connected,
    TResult? Function(BluetoothDevice? selectedDevice)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? disconnected,
    TResult? Function(String message, int stageId)? messageReceived,
    TResult? Function(String message)? sendMessage,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message, int stageId)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeBluetooth value)? initialize,
    TResult? Function(_EnableBluetooth value)? enable,
    TResult? Function(_SelectDevice value)? selectDevice,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class _Disconnect implements BluetoothEvent {
  const factory _Disconnect() = _$DisconnectImpl;
}

/// @nodoc
abstract class _$$DisconnectedImplCopyWith<$Res> {
  factory _$$DisconnectedImplCopyWith(
          _$DisconnectedImpl value, $Res Function(_$DisconnectedImpl) then) =
      __$$DisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectedImplCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res, _$DisconnectedImpl>
    implements _$$DisconnectedImplCopyWith<$Res> {
  __$$DisconnectedImplCopyWithImpl(
      _$DisconnectedImpl _value, $Res Function(_$DisconnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectedImpl implements _Disconnected {
  const _$DisconnectedImpl();

  @override
  String toString() {
    return 'BluetoothEvent.disconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message, int stageId) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? enable,
    TResult? Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult? Function()? connected,
    TResult? Function(BluetoothDevice? selectedDevice)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? disconnected,
    TResult? Function(String message, int stageId)? messageReceived,
    TResult? Function(String message)? sendMessage,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message, int stageId)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeBluetooth value)? initialize,
    TResult? Function(_EnableBluetooth value)? enable,
    TResult? Function(_SelectDevice value)? selectDevice,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements BluetoothEvent {
  const factory _Disconnected() = _$DisconnectedImpl;
}

/// @nodoc
abstract class _$$MessageReceivedImplCopyWith<$Res> {
  factory _$$MessageReceivedImplCopyWith(_$MessageReceivedImpl value,
          $Res Function(_$MessageReceivedImpl) then) =
      __$$MessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, int stageId});
}

/// @nodoc
class __$$MessageReceivedImplCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res, _$MessageReceivedImpl>
    implements _$$MessageReceivedImplCopyWith<$Res> {
  __$$MessageReceivedImplCopyWithImpl(
      _$MessageReceivedImpl _value, $Res Function(_$MessageReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stageId = null,
  }) {
    return _then(_$MessageReceivedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MessageReceivedImpl implements _MessageReceived {
  const _$MessageReceivedImpl({required this.message, required this.stageId});

  @override
  final String message;
  @override
  final int stageId;

  @override
  String toString() {
    return 'BluetoothEvent.messageReceived(message: $message, stageId: $stageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stageId, stageId) || other.stageId == stageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stageId);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      __$$MessageReceivedImplCopyWithImpl<_$MessageReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message, int stageId) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return messageReceived(message, stageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? enable,
    TResult? Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult? Function()? connected,
    TResult? Function(BluetoothDevice? selectedDevice)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? disconnected,
    TResult? Function(String message, int stageId)? messageReceived,
    TResult? Function(String message)? sendMessage,
  }) {
    return messageReceived?.call(message, stageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message, int stageId)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(message, stageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeBluetooth value)? initialize,
    TResult? Function(_EnableBluetooth value)? enable,
    TResult? Function(_SelectDevice value)? selectDevice,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class _MessageReceived implements BluetoothEvent {
  const factory _MessageReceived(
      {required final String message,
      required final int stageId}) = _$MessageReceivedImpl;

  String get message;
  int get stageId;

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BluetoothEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message, int stageId) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? enable,
    TResult? Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult? Function()? connected,
    TResult? Function(BluetoothDevice? selectedDevice)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? disconnected,
    TResult? Function(String message, int stageId)? messageReceived,
    TResult? Function(String message)? sendMessage,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message, int stageId)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeBluetooth value)? initialize,
    TResult? Function(_EnableBluetooth value)? enable,
    TResult? Function(_SelectDevice value)? selectDevice,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements BluetoothEvent {
  const factory _SendMessage({required final String message}) =
      _$SendMessageImpl;

  String get message;

  /// Create a copy of BluetoothEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BluetoothBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function(BluetoothMessage? message) connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function()? notEnabled,
    TResult? Function()? connecting,
    TResult? Function(BluetoothMessage? message)? connected,
    TResult? Function()? disconnecting,
    TResult? Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function(BluetoothMessage? message)? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothNotInitialized value) notInitialized,
    required TResult Function(BluetoothNotEnabled value) notEnabled,
    required TResult Function(BluetoothConnecting value) connecting,
    required TResult Function(BluetoothConnected value) connected,
    required TResult Function(BluetoothDisconnecting value) disconnecting,
    required TResult Function(BluetoothDisconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothNotInitialized value)? notInitialized,
    TResult? Function(BluetoothNotEnabled value)? notEnabled,
    TResult? Function(BluetoothConnecting value)? connecting,
    TResult? Function(BluetoothConnected value)? connected,
    TResult? Function(BluetoothDisconnecting value)? disconnecting,
    TResult? Function(BluetoothDisconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitialized value)? notInitialized,
    TResult Function(BluetoothNotEnabled value)? notEnabled,
    TResult Function(BluetoothConnecting value)? connecting,
    TResult Function(BluetoothConnected value)? connected,
    TResult Function(BluetoothDisconnecting value)? disconnecting,
    TResult Function(BluetoothDisconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothBlocStateCopyWith<$Res> {
  factory $BluetoothBlocStateCopyWith(
          BluetoothBlocState value, $Res Function(BluetoothBlocState) then) =
      _$BluetoothBlocStateCopyWithImpl<$Res, BluetoothBlocState>;
}

/// @nodoc
class _$BluetoothBlocStateCopyWithImpl<$Res, $Val extends BluetoothBlocState>
    implements $BluetoothBlocStateCopyWith<$Res> {
  _$BluetoothBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BluetoothNotInitializedImplCopyWith<$Res> {
  factory _$$BluetoothNotInitializedImplCopyWith(
          _$BluetoothNotInitializedImpl value,
          $Res Function(_$BluetoothNotInitializedImpl) then) =
      __$$BluetoothNotInitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothNotInitializedImplCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res,
        _$BluetoothNotInitializedImpl>
    implements _$$BluetoothNotInitializedImplCopyWith<$Res> {
  __$$BluetoothNotInitializedImplCopyWithImpl(
      _$BluetoothNotInitializedImpl _value,
      $Res Function(_$BluetoothNotInitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BluetoothNotInitializedImpl implements BluetoothNotInitialized {
  const _$BluetoothNotInitializedImpl();

  @override
  String toString() {
    return 'BluetoothBlocState.notInitialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothNotInitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function(BluetoothMessage? message) connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return notInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function()? notEnabled,
    TResult? Function()? connecting,
    TResult? Function(BluetoothMessage? message)? connected,
    TResult? Function()? disconnecting,
    TResult? Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return notInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function(BluetoothMessage? message)? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothNotInitialized value) notInitialized,
    required TResult Function(BluetoothNotEnabled value) notEnabled,
    required TResult Function(BluetoothConnecting value) connecting,
    required TResult Function(BluetoothConnected value) connected,
    required TResult Function(BluetoothDisconnecting value) disconnecting,
    required TResult Function(BluetoothDisconnected value) disconnected,
  }) {
    return notInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothNotInitialized value)? notInitialized,
    TResult? Function(BluetoothNotEnabled value)? notEnabled,
    TResult? Function(BluetoothConnecting value)? connecting,
    TResult? Function(BluetoothConnected value)? connected,
    TResult? Function(BluetoothDisconnecting value)? disconnecting,
    TResult? Function(BluetoothDisconnected value)? disconnected,
  }) {
    return notInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitialized value)? notInitialized,
    TResult Function(BluetoothNotEnabled value)? notEnabled,
    TResult Function(BluetoothConnecting value)? connecting,
    TResult Function(BluetoothConnected value)? connected,
    TResult Function(BluetoothDisconnecting value)? disconnecting,
    TResult Function(BluetoothDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized(this);
    }
    return orElse();
  }
}

abstract class BluetoothNotInitialized implements BluetoothBlocState {
  const factory BluetoothNotInitialized() = _$BluetoothNotInitializedImpl;
}

/// @nodoc
abstract class _$$BluetoothNotEnabledImplCopyWith<$Res> {
  factory _$$BluetoothNotEnabledImplCopyWith(_$BluetoothNotEnabledImpl value,
          $Res Function(_$BluetoothNotEnabledImpl) then) =
      __$$BluetoothNotEnabledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothNotEnabledImplCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res, _$BluetoothNotEnabledImpl>
    implements _$$BluetoothNotEnabledImplCopyWith<$Res> {
  __$$BluetoothNotEnabledImplCopyWithImpl(_$BluetoothNotEnabledImpl _value,
      $Res Function(_$BluetoothNotEnabledImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BluetoothNotEnabledImpl implements BluetoothNotEnabled {
  const _$BluetoothNotEnabledImpl();

  @override
  String toString() {
    return 'BluetoothBlocState.notEnabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothNotEnabledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function(BluetoothMessage? message) connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return notEnabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function()? notEnabled,
    TResult? Function()? connecting,
    TResult? Function(BluetoothMessage? message)? connected,
    TResult? Function()? disconnecting,
    TResult? Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return notEnabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function(BluetoothMessage? message)? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
    required TResult orElse(),
  }) {
    if (notEnabled != null) {
      return notEnabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothNotInitialized value) notInitialized,
    required TResult Function(BluetoothNotEnabled value) notEnabled,
    required TResult Function(BluetoothConnecting value) connecting,
    required TResult Function(BluetoothConnected value) connected,
    required TResult Function(BluetoothDisconnecting value) disconnecting,
    required TResult Function(BluetoothDisconnected value) disconnected,
  }) {
    return notEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothNotInitialized value)? notInitialized,
    TResult? Function(BluetoothNotEnabled value)? notEnabled,
    TResult? Function(BluetoothConnecting value)? connecting,
    TResult? Function(BluetoothConnected value)? connected,
    TResult? Function(BluetoothDisconnecting value)? disconnecting,
    TResult? Function(BluetoothDisconnected value)? disconnected,
  }) {
    return notEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitialized value)? notInitialized,
    TResult Function(BluetoothNotEnabled value)? notEnabled,
    TResult Function(BluetoothConnecting value)? connecting,
    TResult Function(BluetoothConnected value)? connected,
    TResult Function(BluetoothDisconnecting value)? disconnecting,
    TResult Function(BluetoothDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (notEnabled != null) {
      return notEnabled(this);
    }
    return orElse();
  }
}

abstract class BluetoothNotEnabled implements BluetoothBlocState {
  const factory BluetoothNotEnabled() = _$BluetoothNotEnabledImpl;
}

/// @nodoc
abstract class _$$BluetoothConnectingImplCopyWith<$Res> {
  factory _$$BluetoothConnectingImplCopyWith(_$BluetoothConnectingImpl value,
          $Res Function(_$BluetoothConnectingImpl) then) =
      __$$BluetoothConnectingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothConnectingImplCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res, _$BluetoothConnectingImpl>
    implements _$$BluetoothConnectingImplCopyWith<$Res> {
  __$$BluetoothConnectingImplCopyWithImpl(_$BluetoothConnectingImpl _value,
      $Res Function(_$BluetoothConnectingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BluetoothConnectingImpl implements BluetoothConnecting {
  const _$BluetoothConnectingImpl();

  @override
  String toString() {
    return 'BluetoothBlocState.connecting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothConnectingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function(BluetoothMessage? message) connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function()? notEnabled,
    TResult? Function()? connecting,
    TResult? Function(BluetoothMessage? message)? connected,
    TResult? Function()? disconnecting,
    TResult? Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function(BluetoothMessage? message)? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
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
    required TResult Function(BluetoothNotInitialized value) notInitialized,
    required TResult Function(BluetoothNotEnabled value) notEnabled,
    required TResult Function(BluetoothConnecting value) connecting,
    required TResult Function(BluetoothConnected value) connected,
    required TResult Function(BluetoothDisconnecting value) disconnecting,
    required TResult Function(BluetoothDisconnected value) disconnected,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothNotInitialized value)? notInitialized,
    TResult? Function(BluetoothNotEnabled value)? notEnabled,
    TResult? Function(BluetoothConnecting value)? connecting,
    TResult? Function(BluetoothConnected value)? connected,
    TResult? Function(BluetoothDisconnecting value)? disconnecting,
    TResult? Function(BluetoothDisconnected value)? disconnected,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitialized value)? notInitialized,
    TResult Function(BluetoothNotEnabled value)? notEnabled,
    TResult Function(BluetoothConnecting value)? connecting,
    TResult Function(BluetoothConnected value)? connected,
    TResult Function(BluetoothDisconnecting value)? disconnecting,
    TResult Function(BluetoothDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class BluetoothConnecting implements BluetoothBlocState {
  const factory BluetoothConnecting() = _$BluetoothConnectingImpl;
}

/// @nodoc
abstract class _$$BluetoothConnectedImplCopyWith<$Res> {
  factory _$$BluetoothConnectedImplCopyWith(_$BluetoothConnectedImpl value,
          $Res Function(_$BluetoothConnectedImpl) then) =
      __$$BluetoothConnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BluetoothMessage? message});

  $BluetoothMessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$BluetoothConnectedImplCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res, _$BluetoothConnectedImpl>
    implements _$$BluetoothConnectedImplCopyWith<$Res> {
  __$$BluetoothConnectedImplCopyWithImpl(_$BluetoothConnectedImpl _value,
      $Res Function(_$BluetoothConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BluetoothConnectedImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as BluetoothMessage?,
    ));
  }

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BluetoothMessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $BluetoothMessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$BluetoothConnectedImpl implements BluetoothConnected {
  const _$BluetoothConnectedImpl({this.message});

  @override
  final BluetoothMessage? message;

  @override
  String toString() {
    return 'BluetoothBlocState.connected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothConnectedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BluetoothConnectedImplCopyWith<_$BluetoothConnectedImpl> get copyWith =>
      __$$BluetoothConnectedImplCopyWithImpl<_$BluetoothConnectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function(BluetoothMessage? message) connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return connected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function()? notEnabled,
    TResult? Function()? connecting,
    TResult? Function(BluetoothMessage? message)? connected,
    TResult? Function()? disconnecting,
    TResult? Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return connected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function(BluetoothMessage? message)? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothNotInitialized value) notInitialized,
    required TResult Function(BluetoothNotEnabled value) notEnabled,
    required TResult Function(BluetoothConnecting value) connecting,
    required TResult Function(BluetoothConnected value) connected,
    required TResult Function(BluetoothDisconnecting value) disconnecting,
    required TResult Function(BluetoothDisconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothNotInitialized value)? notInitialized,
    TResult? Function(BluetoothNotEnabled value)? notEnabled,
    TResult? Function(BluetoothConnecting value)? connecting,
    TResult? Function(BluetoothConnected value)? connected,
    TResult? Function(BluetoothDisconnecting value)? disconnecting,
    TResult? Function(BluetoothDisconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitialized value)? notInitialized,
    TResult Function(BluetoothNotEnabled value)? notEnabled,
    TResult Function(BluetoothConnecting value)? connecting,
    TResult Function(BluetoothConnected value)? connected,
    TResult Function(BluetoothDisconnecting value)? disconnecting,
    TResult Function(BluetoothDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class BluetoothConnected implements BluetoothBlocState {
  const factory BluetoothConnected({final BluetoothMessage? message}) =
      _$BluetoothConnectedImpl;

  BluetoothMessage? get message;

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BluetoothConnectedImplCopyWith<_$BluetoothConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BluetoothDisconnectingImplCopyWith<$Res> {
  factory _$$BluetoothDisconnectingImplCopyWith(
          _$BluetoothDisconnectingImpl value,
          $Res Function(_$BluetoothDisconnectingImpl) then) =
      __$$BluetoothDisconnectingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothDisconnectingImplCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res, _$BluetoothDisconnectingImpl>
    implements _$$BluetoothDisconnectingImplCopyWith<$Res> {
  __$$BluetoothDisconnectingImplCopyWithImpl(
      _$BluetoothDisconnectingImpl _value,
      $Res Function(_$BluetoothDisconnectingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BluetoothDisconnectingImpl implements BluetoothDisconnecting {
  const _$BluetoothDisconnectingImpl();

  @override
  String toString() {
    return 'BluetoothBlocState.disconnecting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothDisconnectingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function(BluetoothMessage? message) connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return disconnecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function()? notEnabled,
    TResult? Function()? connecting,
    TResult? Function(BluetoothMessage? message)? connected,
    TResult? Function()? disconnecting,
    TResult? Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return disconnecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function(BluetoothMessage? message)? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothNotInitialized value) notInitialized,
    required TResult Function(BluetoothNotEnabled value) notEnabled,
    required TResult Function(BluetoothConnecting value) connecting,
    required TResult Function(BluetoothConnected value) connected,
    required TResult Function(BluetoothDisconnecting value) disconnecting,
    required TResult Function(BluetoothDisconnected value) disconnected,
  }) {
    return disconnecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothNotInitialized value)? notInitialized,
    TResult? Function(BluetoothNotEnabled value)? notEnabled,
    TResult? Function(BluetoothConnecting value)? connecting,
    TResult? Function(BluetoothConnected value)? connected,
    TResult? Function(BluetoothDisconnecting value)? disconnecting,
    TResult? Function(BluetoothDisconnected value)? disconnected,
  }) {
    return disconnecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitialized value)? notInitialized,
    TResult Function(BluetoothNotEnabled value)? notEnabled,
    TResult Function(BluetoothConnecting value)? connecting,
    TResult Function(BluetoothConnected value)? connected,
    TResult Function(BluetoothDisconnecting value)? disconnecting,
    TResult Function(BluetoothDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting(this);
    }
    return orElse();
  }
}

abstract class BluetoothDisconnecting implements BluetoothBlocState {
  const factory BluetoothDisconnecting() = _$BluetoothDisconnectingImpl;
}

/// @nodoc
abstract class _$$BluetoothDisconnectedImplCopyWith<$Res> {
  factory _$$BluetoothDisconnectedImplCopyWith(
          _$BluetoothDisconnectedImpl value,
          $Res Function(_$BluetoothDisconnectedImpl) then) =
      __$$BluetoothDisconnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BluetoothDevice? bluetoothDevice});
}

/// @nodoc
class __$$BluetoothDisconnectedImplCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res, _$BluetoothDisconnectedImpl>
    implements _$$BluetoothDisconnectedImplCopyWith<$Res> {
  __$$BluetoothDisconnectedImplCopyWithImpl(_$BluetoothDisconnectedImpl _value,
      $Res Function(_$BluetoothDisconnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bluetoothDevice = freezed,
  }) {
    return _then(_$BluetoothDisconnectedImpl(
      bluetoothDevice: freezed == bluetoothDevice
          ? _value.bluetoothDevice
          : bluetoothDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
    ));
  }
}

/// @nodoc

class _$BluetoothDisconnectedImpl implements BluetoothDisconnected {
  const _$BluetoothDisconnectedImpl({this.bluetoothDevice});

  @override
  final BluetoothDevice? bluetoothDevice;

  @override
  String toString() {
    return 'BluetoothBlocState.disconnected(bluetoothDevice: $bluetoothDevice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothDisconnectedImpl &&
            (identical(other.bluetoothDevice, bluetoothDevice) ||
                other.bluetoothDevice == bluetoothDevice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bluetoothDevice);

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BluetoothDisconnectedImplCopyWith<_$BluetoothDisconnectedImpl>
      get copyWith => __$$BluetoothDisconnectedImplCopyWithImpl<
          _$BluetoothDisconnectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function(BluetoothMessage? message) connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return disconnected(bluetoothDevice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function()? notEnabled,
    TResult? Function()? connecting,
    TResult? Function(BluetoothMessage? message)? connected,
    TResult? Function()? disconnecting,
    TResult? Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return disconnected?.call(bluetoothDevice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function(BluetoothMessage? message)? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(bluetoothDevice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothNotInitialized value) notInitialized,
    required TResult Function(BluetoothNotEnabled value) notEnabled,
    required TResult Function(BluetoothConnecting value) connecting,
    required TResult Function(BluetoothConnected value) connected,
    required TResult Function(BluetoothDisconnecting value) disconnecting,
    required TResult Function(BluetoothDisconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothNotInitialized value)? notInitialized,
    TResult? Function(BluetoothNotEnabled value)? notEnabled,
    TResult? Function(BluetoothConnecting value)? connecting,
    TResult? Function(BluetoothConnected value)? connected,
    TResult? Function(BluetoothDisconnecting value)? disconnecting,
    TResult? Function(BluetoothDisconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitialized value)? notInitialized,
    TResult Function(BluetoothNotEnabled value)? notEnabled,
    TResult Function(BluetoothConnecting value)? connecting,
    TResult Function(BluetoothConnected value)? connected,
    TResult Function(BluetoothDisconnecting value)? disconnecting,
    TResult Function(BluetoothDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class BluetoothDisconnected implements BluetoothBlocState {
  const factory BluetoothDisconnected(
      {final BluetoothDevice? bluetoothDevice}) = _$BluetoothDisconnectedImpl;

  BluetoothDevice? get bluetoothDevice;

  /// Create a copy of BluetoothBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BluetoothDisconnectedImplCopyWith<_$BluetoothDisconnectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
