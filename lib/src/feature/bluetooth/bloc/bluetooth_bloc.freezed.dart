// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bluetooth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BluetoothEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothEventCopyWith<$Res> {
  factory $BluetoothEventCopyWith(
          BluetoothEvent value, $Res Function(BluetoothEvent) then) =
      _$BluetoothEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BluetoothEventCopyWithImpl<$Res>
    implements $BluetoothEventCopyWith<$Res> {
  _$BluetoothEventCopyWithImpl(this._value, this._then);

  final BluetoothEvent _value;
  // ignore: unused_field
  final $Res Function(BluetoothEvent) _then;
}

/// @nodoc
abstract class _$$InitializeBluetoothCopyWith<$Res> {
  factory _$$InitializeBluetoothCopyWith(_$InitializeBluetooth value,
          $Res Function(_$InitializeBluetooth) then) =
      __$$InitializeBluetoothCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeBluetoothCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$InitializeBluetoothCopyWith<$Res> {
  __$$InitializeBluetoothCopyWithImpl(
      _$InitializeBluetooth _value, $Res Function(_$InitializeBluetooth) _then)
      : super(_value, (v) => _then(v as _$InitializeBluetooth));

  @override
  _$InitializeBluetooth get _value => super._value as _$InitializeBluetooth;
}

/// @nodoc

class _$InitializeBluetooth implements InitializeBluetooth {
  const _$InitializeBluetooth();

  @override
  String toString() {
    return 'BluetoothEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeBluetooth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
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
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class InitializeBluetooth implements BluetoothEvent {
  const factory InitializeBluetooth() = _$InitializeBluetooth;
}

/// @nodoc
abstract class _$$EnableBluetoothCopyWith<$Res> {
  factory _$$EnableBluetoothCopyWith(
          _$EnableBluetooth value, $Res Function(_$EnableBluetooth) then) =
      __$$EnableBluetoothCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnableBluetoothCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$EnableBluetoothCopyWith<$Res> {
  __$$EnableBluetoothCopyWithImpl(
      _$EnableBluetooth _value, $Res Function(_$EnableBluetooth) _then)
      : super(_value, (v) => _then(v as _$EnableBluetooth));

  @override
  _$EnableBluetooth get _value => super._value as _$EnableBluetooth;
}

/// @nodoc

class _$EnableBluetooth implements EnableBluetooth {
  const _$EnableBluetooth();

  @override
  String toString() {
    return 'BluetoothEvent.enable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnableBluetooth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return enable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) {
    return enable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
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
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return enable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) {
    return enable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (enable != null) {
      return enable(this);
    }
    return orElse();
  }
}

abstract class EnableBluetooth implements BluetoothEvent {
  const factory EnableBluetooth() = _$EnableBluetooth;
}

/// @nodoc
abstract class _$$DisableBluetoothCopyWith<$Res> {
  factory _$$DisableBluetoothCopyWith(
          _$DisableBluetooth value, $Res Function(_$DisableBluetooth) then) =
      __$$DisableBluetoothCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisableBluetoothCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$DisableBluetoothCopyWith<$Res> {
  __$$DisableBluetoothCopyWithImpl(
      _$DisableBluetooth _value, $Res Function(_$DisableBluetooth) _then)
      : super(_value, (v) => _then(v as _$DisableBluetooth));

  @override
  _$DisableBluetooth get _value => super._value as _$DisableBluetooth;
}

/// @nodoc

class _$DisableBluetooth implements DisableBluetooth {
  const _$DisableBluetooth();

  @override
  String toString() {
    return 'BluetoothEvent.disable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisableBluetooth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return disable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) {
    return disable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return disable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) {
    return disable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable(this);
    }
    return orElse();
  }
}

abstract class DisableBluetooth implements BluetoothEvent {
  const factory DisableBluetooth() = _$DisableBluetooth;
}

/// @nodoc
abstract class _$$SelectDeviceCopyWith<$Res> {
  factory _$$SelectDeviceCopyWith(
          _$SelectDevice value, $Res Function(_$SelectDevice) then) =
      __$$SelectDeviceCopyWithImpl<$Res>;
  $Res call({BluetoothDeviceWithAvailability? deviceWithAvailability});
}

/// @nodoc
class __$$SelectDeviceCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$SelectDeviceCopyWith<$Res> {
  __$$SelectDeviceCopyWithImpl(
      _$SelectDevice _value, $Res Function(_$SelectDevice) _then)
      : super(_value, (v) => _then(v as _$SelectDevice));

  @override
  _$SelectDevice get _value => super._value as _$SelectDevice;

  @override
  $Res call({
    Object? deviceWithAvailability = freezed,
  }) {
    return _then(_$SelectDevice(
      deviceWithAvailability: deviceWithAvailability == freezed
          ? _value.deviceWithAvailability
          : deviceWithAvailability // ignore: cast_nullable_to_non_nullable
              as BluetoothDeviceWithAvailability?,
    ));
  }
}

/// @nodoc

class _$SelectDevice implements SelectDevice {
  const _$SelectDevice({this.deviceWithAvailability});

  @override
  final BluetoothDeviceWithAvailability? deviceWithAvailability;

  @override
  String toString() {
    return 'BluetoothEvent.selectDevice(deviceWithAvailability: $deviceWithAvailability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDevice &&
            const DeepCollectionEquality()
                .equals(other.deviceWithAvailability, deviceWithAvailability));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(deviceWithAvailability));

  @JsonKey(ignore: true)
  @override
  _$$SelectDeviceCopyWith<_$SelectDevice> get copyWith =>
      __$$SelectDeviceCopyWithImpl<_$SelectDevice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return selectDevice(deviceWithAvailability);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) {
    return selectDevice?.call(deviceWithAvailability);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
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
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return selectDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) {
    return selectDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (selectDevice != null) {
      return selectDevice(this);
    }
    return orElse();
  }
}

abstract class SelectDevice implements BluetoothEvent {
  const factory SelectDevice(
          {final BluetoothDeviceWithAvailability? deviceWithAvailability}) =
      _$SelectDevice;

  BluetoothDeviceWithAvailability? get deviceWithAvailability;
  @JsonKey(ignore: true)
  _$$SelectDeviceCopyWith<_$SelectDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectedCopyWith<$Res> {
  factory _$$ConnectedCopyWith(
          _$Connected value, $Res Function(_$Connected) then) =
      __$$ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedCopyWithImpl<$Res> extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$ConnectedCopyWith<$Res> {
  __$$ConnectedCopyWithImpl(
      _$Connected _value, $Res Function(_$Connected) _then)
      : super(_value, (v) => _then(v as _$Connected));

  @override
  _$Connected get _value => super._value as _$Connected;
}

/// @nodoc

class _$Connected implements Connected {
  const _$Connected();

  @override
  String toString() {
    return 'BluetoothEvent.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Connected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
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
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements BluetoothEvent {
  const factory Connected() = _$Connected;
}

/// @nodoc
abstract class _$$ConnectCopyWith<$Res> {
  factory _$$ConnectCopyWith(_$Connect value, $Res Function(_$Connect) then) =
      __$$ConnectCopyWithImpl<$Res>;
  $Res call({BluetoothDevice? selectedDevice});
}

/// @nodoc
class __$$ConnectCopyWithImpl<$Res> extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$ConnectCopyWith<$Res> {
  __$$ConnectCopyWithImpl(_$Connect _value, $Res Function(_$Connect) _then)
      : super(_value, (v) => _then(v as _$Connect));

  @override
  _$Connect get _value => super._value as _$Connect;

  @override
  $Res call({
    Object? selectedDevice = freezed,
  }) {
    return _then(_$Connect(
      selectedDevice: selectedDevice == freezed
          ? _value.selectedDevice
          : selectedDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
    ));
  }
}

/// @nodoc

class _$Connect implements Connect {
  const _$Connect({this.selectedDevice});

  @override
  final BluetoothDevice? selectedDevice;

  @override
  String toString() {
    return 'BluetoothEvent.connect(selectedDevice: $selectedDevice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Connect &&
            const DeepCollectionEquality()
                .equals(other.selectedDevice, selectedDevice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedDevice));

  @JsonKey(ignore: true)
  @override
  _$$ConnectCopyWith<_$Connect> get copyWith =>
      __$$ConnectCopyWithImpl<_$Connect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return connect(selectedDevice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) {
    return connect?.call(selectedDevice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
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
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class Connect implements BluetoothEvent {
  const factory Connect({final BluetoothDevice? selectedDevice}) = _$Connect;

  BluetoothDevice? get selectedDevice;
  @JsonKey(ignore: true)
  _$$ConnectCopyWith<_$Connect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisconnectCopyWith<$Res> {
  factory _$$DisconnectCopyWith(
          _$Disconnect value, $Res Function(_$Disconnect) then) =
      __$$DisconnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$DisconnectCopyWith<$Res> {
  __$$DisconnectCopyWithImpl(
      _$Disconnect _value, $Res Function(_$Disconnect) _then)
      : super(_value, (v) => _then(v as _$Disconnect));

  @override
  _$Disconnect get _value => super._value as _$Disconnect;
}

/// @nodoc

class _$Disconnect implements Disconnect {
  const _$Disconnect();

  @override
  String toString() {
    return 'BluetoothEvent.disconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Disconnect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
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
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class Disconnect implements BluetoothEvent {
  const factory Disconnect() = _$Disconnect;
}

/// @nodoc
abstract class _$$DisconnectedCopyWith<$Res> {
  factory _$$DisconnectedCopyWith(
          _$Disconnected value, $Res Function(_$Disconnected) then) =
      __$$DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectedCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$DisconnectedCopyWith<$Res> {
  __$$DisconnectedCopyWithImpl(
      _$Disconnected _value, $Res Function(_$Disconnected) _then)
      : super(_value, (v) => _then(v as _$Disconnected));

  @override
  _$Disconnected get _value => super._value as _$Disconnected;
}

/// @nodoc

class _$Disconnected implements Disconnected {
  const _$Disconnected();

  @override
  String toString() {
    return 'BluetoothEvent.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
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
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements BluetoothEvent {
  const factory Disconnected() = _$Disconnected;
}

/// @nodoc
abstract class _$$MessageReceivedCopyWith<$Res> {
  factory _$$MessageReceivedCopyWith(
          _$MessageReceived value, $Res Function(_$MessageReceived) then) =
      __$$MessageReceivedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$MessageReceivedCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$MessageReceivedCopyWith<$Res> {
  __$$MessageReceivedCopyWithImpl(
      _$MessageReceived _value, $Res Function(_$MessageReceived) _then)
      : super(_value, (v) => _then(v as _$MessageReceived));

  @override
  _$MessageReceived get _value => super._value as _$MessageReceived;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$MessageReceived(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageReceived implements MessageReceived {
  const _$MessageReceived({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BluetoothEvent.messageReceived(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceived &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$MessageReceivedCopyWith<_$MessageReceived> get copyWith =>
      __$$MessageReceivedCopyWithImpl<_$MessageReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) {
    return messageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class MessageReceived implements BluetoothEvent {
  const factory MessageReceived({required final String message}) =
      _$MessageReceived;

  String get message;
  @JsonKey(ignore: true)
  _$$MessageReceivedCopyWith<_$MessageReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageCopyWith<$Res> {
  factory _$$SendMessageCopyWith(
          _$SendMessage value, $Res Function(_$SendMessage) then) =
      __$$SendMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$SendMessageCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$SendMessageCopyWith<$Res> {
  __$$SendMessageCopyWithImpl(
      _$SendMessage _value, $Res Function(_$SendMessage) _then)
      : super(_value, (v) => _then(v as _$SendMessage));

  @override
  _$SendMessage get _value => super._value as _$SendMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SendMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessage implements SendMessage {
  const _$SendMessage({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BluetoothEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$SendMessageCopyWith<_$SendMessage> get copyWith =>
      __$$SendMessageCopyWithImpl<_$SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() enable,
    required TResult Function() disable,
    required TResult Function(
            BluetoothDeviceWithAvailability? deviceWithAvailability)
        selectDevice,
    required TResult Function() connected,
    required TResult Function(BluetoothDevice? selectedDevice) connect,
    required TResult Function() disconnect,
    required TResult Function() disconnected,
    required TResult Function(String message) messageReceived,
    required TResult Function(String message) sendMessage,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
    TResult Function(String message)? sendMessage,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? enable,
    TResult Function()? disable,
    TResult Function(BluetoothDeviceWithAvailability? deviceWithAvailability)?
        selectDevice,
    TResult Function()? connected,
    TResult Function(BluetoothDevice? selectedDevice)? connect,
    TResult Function()? disconnect,
    TResult Function()? disconnected,
    TResult Function(String message)? messageReceived,
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
    required TResult Function(InitializeBluetooth value) initialize,
    required TResult Function(EnableBluetooth value) enable,
    required TResult Function(DisableBluetooth value) disable,
    required TResult Function(SelectDevice value) selectDevice,
    required TResult Function(Connected value) connected,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeBluetooth value)? initialize,
    TResult Function(EnableBluetooth value)? enable,
    TResult Function(DisableBluetooth value)? disable,
    TResult Function(SelectDevice value)? selectDevice,
    TResult Function(Connected value)? connected,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements BluetoothEvent {
  const factory SendMessage({required final String message}) = _$SendMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$SendMessageCopyWith<_$SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BluetoothBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothNotInitializedState value)
        notInitialized,
    required TResult Function(BluetoothNotEnabledState value) notEnabled,
    required TResult Function(BluetoothConnectingState value) connecting,
    required TResult Function(BluetoothConnectedState value) connected,
    required TResult Function(BluetoothDisconnectingState value) disconnecting,
    required TResult Function(BluetoothDisconnectedState value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothBlocStateCopyWith<$Res> {
  factory $BluetoothBlocStateCopyWith(
          BluetoothBlocState value, $Res Function(BluetoothBlocState) then) =
      _$BluetoothBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BluetoothBlocStateCopyWithImpl<$Res>
    implements $BluetoothBlocStateCopyWith<$Res> {
  _$BluetoothBlocStateCopyWithImpl(this._value, this._then);

  final BluetoothBlocState _value;
  // ignore: unused_field
  final $Res Function(BluetoothBlocState) _then;
}

/// @nodoc
abstract class _$$BluetoothNotInitializedStateCopyWith<$Res> {
  factory _$$BluetoothNotInitializedStateCopyWith(
          _$BluetoothNotInitializedState value,
          $Res Function(_$BluetoothNotInitializedState) then) =
      __$$BluetoothNotInitializedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothNotInitializedStateCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res>
    implements _$$BluetoothNotInitializedStateCopyWith<$Res> {
  __$$BluetoothNotInitializedStateCopyWithImpl(
      _$BluetoothNotInitializedState _value,
      $Res Function(_$BluetoothNotInitializedState) _then)
      : super(_value, (v) => _then(v as _$BluetoothNotInitializedState));

  @override
  _$BluetoothNotInitializedState get _value =>
      super._value as _$BluetoothNotInitializedState;
}

/// @nodoc

class _$BluetoothNotInitializedState implements BluetoothNotInitializedState {
  const _$BluetoothNotInitializedState();

  @override
  String toString() {
    return 'BluetoothBlocState.notInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothNotInitializedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return notInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return notInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
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
    required TResult Function(BluetoothNotInitializedState value)
        notInitialized,
    required TResult Function(BluetoothNotEnabledState value) notEnabled,
    required TResult Function(BluetoothConnectingState value) connecting,
    required TResult Function(BluetoothConnectedState value) connected,
    required TResult Function(BluetoothDisconnectingState value) disconnecting,
    required TResult Function(BluetoothDisconnectedState value) disconnected,
  }) {
    return notInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
  }) {
    return notInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized(this);
    }
    return orElse();
  }
}

abstract class BluetoothNotInitializedState implements BluetoothBlocState {
  const factory BluetoothNotInitializedState() = _$BluetoothNotInitializedState;
}

/// @nodoc
abstract class _$$BluetoothNotEnabledStateCopyWith<$Res> {
  factory _$$BluetoothNotEnabledStateCopyWith(_$BluetoothNotEnabledState value,
          $Res Function(_$BluetoothNotEnabledState) then) =
      __$$BluetoothNotEnabledStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothNotEnabledStateCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res>
    implements _$$BluetoothNotEnabledStateCopyWith<$Res> {
  __$$BluetoothNotEnabledStateCopyWithImpl(_$BluetoothNotEnabledState _value,
      $Res Function(_$BluetoothNotEnabledState) _then)
      : super(_value, (v) => _then(v as _$BluetoothNotEnabledState));

  @override
  _$BluetoothNotEnabledState get _value =>
      super._value as _$BluetoothNotEnabledState;
}

/// @nodoc

class _$BluetoothNotEnabledState implements BluetoothNotEnabledState {
  const _$BluetoothNotEnabledState();

  @override
  String toString() {
    return 'BluetoothBlocState.notEnabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothNotEnabledState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return notEnabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return notEnabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
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
    required TResult Function(BluetoothNotInitializedState value)
        notInitialized,
    required TResult Function(BluetoothNotEnabledState value) notEnabled,
    required TResult Function(BluetoothConnectingState value) connecting,
    required TResult Function(BluetoothConnectedState value) connected,
    required TResult Function(BluetoothDisconnectingState value) disconnecting,
    required TResult Function(BluetoothDisconnectedState value) disconnected,
  }) {
    return notEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
  }) {
    return notEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
    required TResult orElse(),
  }) {
    if (notEnabled != null) {
      return notEnabled(this);
    }
    return orElse();
  }
}

abstract class BluetoothNotEnabledState implements BluetoothBlocState {
  const factory BluetoothNotEnabledState() = _$BluetoothNotEnabledState;
}

/// @nodoc
abstract class _$$BluetoothConnectingStateCopyWith<$Res> {
  factory _$$BluetoothConnectingStateCopyWith(_$BluetoothConnectingState value,
          $Res Function(_$BluetoothConnectingState) then) =
      __$$BluetoothConnectingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothConnectingStateCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res>
    implements _$$BluetoothConnectingStateCopyWith<$Res> {
  __$$BluetoothConnectingStateCopyWithImpl(_$BluetoothConnectingState _value,
      $Res Function(_$BluetoothConnectingState) _then)
      : super(_value, (v) => _then(v as _$BluetoothConnectingState));

  @override
  _$BluetoothConnectingState get _value =>
      super._value as _$BluetoothConnectingState;
}

/// @nodoc

class _$BluetoothConnectingState implements BluetoothConnectingState {
  const _$BluetoothConnectingState();

  @override
  String toString() {
    return 'BluetoothBlocState.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothConnectingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
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
    required TResult Function(BluetoothNotInitializedState value)
        notInitialized,
    required TResult Function(BluetoothNotEnabledState value) notEnabled,
    required TResult Function(BluetoothConnectingState value) connecting,
    required TResult Function(BluetoothConnectedState value) connected,
    required TResult Function(BluetoothDisconnectingState value) disconnecting,
    required TResult Function(BluetoothDisconnectedState value) disconnected,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class BluetoothConnectingState implements BluetoothBlocState {
  const factory BluetoothConnectingState() = _$BluetoothConnectingState;
}

/// @nodoc
abstract class _$$BluetoothConnectedStateCopyWith<$Res> {
  factory _$$BluetoothConnectedStateCopyWith(_$BluetoothConnectedState value,
          $Res Function(_$BluetoothConnectedState) then) =
      __$$BluetoothConnectedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothConnectedStateCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res>
    implements _$$BluetoothConnectedStateCopyWith<$Res> {
  __$$BluetoothConnectedStateCopyWithImpl(_$BluetoothConnectedState _value,
      $Res Function(_$BluetoothConnectedState) _then)
      : super(_value, (v) => _then(v as _$BluetoothConnectedState));

  @override
  _$BluetoothConnectedState get _value =>
      super._value as _$BluetoothConnectedState;
}

/// @nodoc

class _$BluetoothConnectedState implements BluetoothConnectedState {
  const _$BluetoothConnectedState();

  @override
  String toString() {
    return 'BluetoothBlocState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothConnectedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
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
    required TResult Function(BluetoothNotInitializedState value)
        notInitialized,
    required TResult Function(BluetoothNotEnabledState value) notEnabled,
    required TResult Function(BluetoothConnectingState value) connecting,
    required TResult Function(BluetoothConnectedState value) connected,
    required TResult Function(BluetoothDisconnectingState value) disconnecting,
    required TResult Function(BluetoothDisconnectedState value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class BluetoothConnectedState implements BluetoothBlocState {
  const factory BluetoothConnectedState() = _$BluetoothConnectedState;
}

/// @nodoc
abstract class _$$BluetoothDisconnectingStateCopyWith<$Res> {
  factory _$$BluetoothDisconnectingStateCopyWith(
          _$BluetoothDisconnectingState value,
          $Res Function(_$BluetoothDisconnectingState) then) =
      __$$BluetoothDisconnectingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothDisconnectingStateCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res>
    implements _$$BluetoothDisconnectingStateCopyWith<$Res> {
  __$$BluetoothDisconnectingStateCopyWithImpl(
      _$BluetoothDisconnectingState _value,
      $Res Function(_$BluetoothDisconnectingState) _then)
      : super(_value, (v) => _then(v as _$BluetoothDisconnectingState));

  @override
  _$BluetoothDisconnectingState get _value =>
      super._value as _$BluetoothDisconnectingState;
}

/// @nodoc

class _$BluetoothDisconnectingState implements BluetoothDisconnectingState {
  const _$BluetoothDisconnectingState();

  @override
  String toString() {
    return 'BluetoothBlocState.disconnecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothDisconnectingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return disconnecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return disconnecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
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
    required TResult Function(BluetoothNotInitializedState value)
        notInitialized,
    required TResult Function(BluetoothNotEnabledState value) notEnabled,
    required TResult Function(BluetoothConnectingState value) connecting,
    required TResult Function(BluetoothConnectedState value) connected,
    required TResult Function(BluetoothDisconnectingState value) disconnecting,
    required TResult Function(BluetoothDisconnectedState value) disconnected,
  }) {
    return disconnecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
  }) {
    return disconnecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting(this);
    }
    return orElse();
  }
}

abstract class BluetoothDisconnectingState implements BluetoothBlocState {
  const factory BluetoothDisconnectingState() = _$BluetoothDisconnectingState;
}

/// @nodoc
abstract class _$$BluetoothDisconnectedStateCopyWith<$Res> {
  factory _$$BluetoothDisconnectedStateCopyWith(
          _$BluetoothDisconnectedState value,
          $Res Function(_$BluetoothDisconnectedState) then) =
      __$$BluetoothDisconnectedStateCopyWithImpl<$Res>;
  $Res call({BluetoothDevice? bluetoothDevice});
}

/// @nodoc
class __$$BluetoothDisconnectedStateCopyWithImpl<$Res>
    extends _$BluetoothBlocStateCopyWithImpl<$Res>
    implements _$$BluetoothDisconnectedStateCopyWith<$Res> {
  __$$BluetoothDisconnectedStateCopyWithImpl(
      _$BluetoothDisconnectedState _value,
      $Res Function(_$BluetoothDisconnectedState) _then)
      : super(_value, (v) => _then(v as _$BluetoothDisconnectedState));

  @override
  _$BluetoothDisconnectedState get _value =>
      super._value as _$BluetoothDisconnectedState;

  @override
  $Res call({
    Object? bluetoothDevice = freezed,
  }) {
    return _then(_$BluetoothDisconnectedState(
      bluetoothDevice: bluetoothDevice == freezed
          ? _value.bluetoothDevice
          : bluetoothDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
    ));
  }
}

/// @nodoc

class _$BluetoothDisconnectedState implements BluetoothDisconnectedState {
  const _$BluetoothDisconnectedState({this.bluetoothDevice});

  @override
  final BluetoothDevice? bluetoothDevice;

  @override
  String toString() {
    return 'BluetoothBlocState.disconnected(bluetoothDevice: $bluetoothDevice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothDisconnectedState &&
            const DeepCollectionEquality()
                .equals(other.bluetoothDevice, bluetoothDevice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bluetoothDevice));

  @JsonKey(ignore: true)
  @override
  _$$BluetoothDisconnectedStateCopyWith<_$BluetoothDisconnectedState>
      get copyWith => __$$BluetoothDisconnectedStateCopyWithImpl<
          _$BluetoothDisconnectedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() notEnabled,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function(BluetoothDevice? bluetoothDevice) disconnected,
  }) {
    return disconnected(bluetoothDevice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
  }) {
    return disconnected?.call(bluetoothDevice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function()? connected,
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
    required TResult Function(BluetoothNotInitializedState value)
        notInitialized,
    required TResult Function(BluetoothNotEnabledState value) notEnabled,
    required TResult Function(BluetoothConnectingState value) connecting,
    required TResult Function(BluetoothConnectedState value) connected,
    required TResult Function(BluetoothDisconnectingState value) disconnecting,
    required TResult Function(BluetoothDisconnectedState value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothNotInitializedState value)? notInitialized,
    TResult Function(BluetoothNotEnabledState value)? notEnabled,
    TResult Function(BluetoothConnectingState value)? connecting,
    TResult Function(BluetoothConnectedState value)? connected,
    TResult Function(BluetoothDisconnectingState value)? disconnecting,
    TResult Function(BluetoothDisconnectedState value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class BluetoothDisconnectedState implements BluetoothBlocState {
  const factory BluetoothDisconnectedState(
      {final BluetoothDevice? bluetoothDevice}) = _$BluetoothDisconnectedState;

  BluetoothDevice? get bluetoothDevice;
  @JsonKey(ignore: true)
  _$$BluetoothDisconnectedStateCopyWith<_$BluetoothDisconnectedState>
      get copyWith => throw _privateConstructorUsedError;
}
