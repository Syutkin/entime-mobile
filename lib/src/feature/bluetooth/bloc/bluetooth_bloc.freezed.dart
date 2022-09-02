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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
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
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
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
abstract class _$$_InitializeBluetoothCopyWith<$Res> {
  factory _$$_InitializeBluetoothCopyWith(_$_InitializeBluetooth value,
          $Res Function(_$_InitializeBluetooth) then) =
      __$$_InitializeBluetoothCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializeBluetoothCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$_InitializeBluetoothCopyWith<$Res> {
  __$$_InitializeBluetoothCopyWithImpl(_$_InitializeBluetooth _value,
      $Res Function(_$_InitializeBluetooth) _then)
      : super(_value, (v) => _then(v as _$_InitializeBluetooth));

  @override
  _$_InitializeBluetooth get _value => super._value as _$_InitializeBluetooth;
}

/// @nodoc

class _$_InitializeBluetooth implements _InitializeBluetooth {
  const _$_InitializeBluetooth();

  @override
  String toString() {
    return 'BluetoothEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitializeBluetooth);
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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
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
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
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
  const factory _InitializeBluetooth() = _$_InitializeBluetooth;
}

/// @nodoc
abstract class _$$_EnableBluetoothCopyWith<$Res> {
  factory _$$_EnableBluetoothCopyWith(
          _$_EnableBluetooth value, $Res Function(_$_EnableBluetooth) then) =
      __$$_EnableBluetoothCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EnableBluetoothCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$_EnableBluetoothCopyWith<$Res> {
  __$$_EnableBluetoothCopyWithImpl(
      _$_EnableBluetooth _value, $Res Function(_$_EnableBluetooth) _then)
      : super(_value, (v) => _then(v as _$_EnableBluetooth));

  @override
  _$_EnableBluetooth get _value => super._value as _$_EnableBluetooth;
}

/// @nodoc

class _$_EnableBluetooth implements _EnableBluetooth {
  const _$_EnableBluetooth();

  @override
  String toString() {
    return 'BluetoothEvent.enable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EnableBluetooth);
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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
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
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) {
    return enable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
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
  const factory _EnableBluetooth() = _$_EnableBluetooth;
}

/// @nodoc
abstract class _$$_DisableBluetoothCopyWith<$Res> {
  factory _$$_DisableBluetoothCopyWith(
          _$_DisableBluetooth value, $Res Function(_$_DisableBluetooth) then) =
      __$$_DisableBluetoothCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisableBluetoothCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$_DisableBluetoothCopyWith<$Res> {
  __$$_DisableBluetoothCopyWithImpl(
      _$_DisableBluetooth _value, $Res Function(_$_DisableBluetooth) _then)
      : super(_value, (v) => _then(v as _$_DisableBluetooth));

  @override
  _$_DisableBluetooth get _value => super._value as _$_DisableBluetooth;
}

/// @nodoc

class _$_DisableBluetooth implements _DisableBluetooth {
  const _$_DisableBluetooth();

  @override
  String toString() {
    return 'BluetoothEvent.disable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DisableBluetooth);
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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
    required TResult Function(_SelectDevice value) selectDevice,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return disable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) {
    return disable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable(this);
    }
    return orElse();
  }
}

abstract class _DisableBluetooth implements BluetoothEvent {
  const factory _DisableBluetooth() = _$_DisableBluetooth;
}

/// @nodoc
abstract class _$$_SelectDeviceCopyWith<$Res> {
  factory _$$_SelectDeviceCopyWith(
          _$_SelectDevice value, $Res Function(_$_SelectDevice) then) =
      __$$_SelectDeviceCopyWithImpl<$Res>;
  $Res call({BluetoothDeviceWithAvailability? deviceWithAvailability});
}

/// @nodoc
class __$$_SelectDeviceCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$_SelectDeviceCopyWith<$Res> {
  __$$_SelectDeviceCopyWithImpl(
      _$_SelectDevice _value, $Res Function(_$_SelectDevice) _then)
      : super(_value, (v) => _then(v as _$_SelectDevice));

  @override
  _$_SelectDevice get _value => super._value as _$_SelectDevice;

  @override
  $Res call({
    Object? deviceWithAvailability = freezed,
  }) {
    return _then(_$_SelectDevice(
      deviceWithAvailability: deviceWithAvailability == freezed
          ? _value.deviceWithAvailability
          : deviceWithAvailability // ignore: cast_nullable_to_non_nullable
              as BluetoothDeviceWithAvailability?,
    ));
  }
}

/// @nodoc

class _$_SelectDevice implements _SelectDevice {
  const _$_SelectDevice({this.deviceWithAvailability});

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
            other is _$_SelectDevice &&
            const DeepCollectionEquality()
                .equals(other.deviceWithAvailability, deviceWithAvailability));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(deviceWithAvailability));

  @JsonKey(ignore: true)
  @override
  _$$_SelectDeviceCopyWith<_$_SelectDevice> get copyWith =>
      __$$_SelectDeviceCopyWithImpl<_$_SelectDevice>(this, _$identity);

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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
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
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) {
    return selectDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
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
      _$_SelectDevice;

  BluetoothDeviceWithAvailability? get deviceWithAvailability;
  @JsonKey(ignore: true)
  _$$_SelectDeviceCopyWith<_$_SelectDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConnectedCopyWith<$Res> {
  factory _$$_ConnectedCopyWith(
          _$_Connected value, $Res Function(_$_Connected) then) =
      __$$_ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectedCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$_ConnectedCopyWith<$Res> {
  __$$_ConnectedCopyWithImpl(
      _$_Connected _value, $Res Function(_$_Connected) _then)
      : super(_value, (v) => _then(v as _$_Connected));

  @override
  _$_Connected get _value => super._value as _$_Connected;
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected();

  @override
  String toString() {
    return 'BluetoothEvent.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Connected);
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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
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
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
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
  const factory _Connected() = _$_Connected;
}

/// @nodoc
abstract class _$$_ConnectCopyWith<$Res> {
  factory _$$_ConnectCopyWith(
          _$_Connect value, $Res Function(_$_Connect) then) =
      __$$_ConnectCopyWithImpl<$Res>;
  $Res call({BluetoothDevice? selectedDevice});
}

/// @nodoc
class __$$_ConnectCopyWithImpl<$Res> extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$_ConnectCopyWith<$Res> {
  __$$_ConnectCopyWithImpl(_$_Connect _value, $Res Function(_$_Connect) _then)
      : super(_value, (v) => _then(v as _$_Connect));

  @override
  _$_Connect get _value => super._value as _$_Connect;

  @override
  $Res call({
    Object? selectedDevice = freezed,
  }) {
    return _then(_$_Connect(
      selectedDevice: selectedDevice == freezed
          ? _value.selectedDevice
          : selectedDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
    ));
  }
}

/// @nodoc

class _$_Connect implements _Connect {
  const _$_Connect({this.selectedDevice});

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
            other is _$_Connect &&
            const DeepCollectionEquality()
                .equals(other.selectedDevice, selectedDevice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedDevice));

  @JsonKey(ignore: true)
  @override
  _$$_ConnectCopyWith<_$_Connect> get copyWith =>
      __$$_ConnectCopyWithImpl<_$_Connect>(this, _$identity);

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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
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
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
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
  const factory _Connect({final BluetoothDevice? selectedDevice}) = _$_Connect;

  BluetoothDevice? get selectedDevice;
  @JsonKey(ignore: true)
  _$$_ConnectCopyWith<_$_Connect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DisconnectCopyWith<$Res> {
  factory _$$_DisconnectCopyWith(
          _$_Disconnect value, $Res Function(_$_Disconnect) then) =
      __$$_DisconnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisconnectCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$_DisconnectCopyWith<$Res> {
  __$$_DisconnectCopyWithImpl(
      _$_Disconnect _value, $Res Function(_$_Disconnect) _then)
      : super(_value, (v) => _then(v as _$_Disconnect));

  @override
  _$_Disconnect get _value => super._value as _$_Disconnect;
}

/// @nodoc

class _$_Disconnect implements _Disconnect {
  const _$_Disconnect();

  @override
  String toString() {
    return 'BluetoothEvent.disconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Disconnect);
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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
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
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
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
  const factory _Disconnect() = _$_Disconnect;
}

/// @nodoc
abstract class _$$_DisconnectedCopyWith<$Res> {
  factory _$$_DisconnectedCopyWith(
          _$_Disconnected value, $Res Function(_$_Disconnected) then) =
      __$$_DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisconnectedCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$_DisconnectedCopyWith<$Res> {
  __$$_DisconnectedCopyWithImpl(
      _$_Disconnected _value, $Res Function(_$_Disconnected) _then)
      : super(_value, (v) => _then(v as _$_Disconnected));

  @override
  _$_Disconnected get _value => super._value as _$_Disconnected;
}

/// @nodoc

class _$_Disconnected implements _Disconnected {
  const _$_Disconnected();

  @override
  String toString() {
    return 'BluetoothEvent.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Disconnected);
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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
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
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
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
  const factory _Disconnected() = _$_Disconnected;
}

/// @nodoc
abstract class _$$_MessageReceivedCopyWith<$Res> {
  factory _$$_MessageReceivedCopyWith(
          _$_MessageReceived value, $Res Function(_$_MessageReceived) then) =
      __$$_MessageReceivedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_MessageReceivedCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$_MessageReceivedCopyWith<$Res> {
  __$$_MessageReceivedCopyWithImpl(
      _$_MessageReceived _value, $Res Function(_$_MessageReceived) _then)
      : super(_value, (v) => _then(v as _$_MessageReceived));

  @override
  _$_MessageReceived get _value => super._value as _$_MessageReceived;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_MessageReceived(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageReceived implements _MessageReceived {
  const _$_MessageReceived({required this.message});

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
            other is _$_MessageReceived &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_MessageReceivedCopyWith<_$_MessageReceived> get copyWith =>
      __$$_MessageReceivedCopyWithImpl<_$_MessageReceived>(this, _$identity);

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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
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
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
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
  const factory _MessageReceived({required final String message}) =
      _$_MessageReceived;

  String get message;
  @JsonKey(ignore: true)
  _$$_MessageReceivedCopyWith<_$_MessageReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendMessageCopyWith<$Res> {
  factory _$$_SendMessageCopyWith(
          _$_SendMessage value, $Res Function(_$_SendMessage) then) =
      __$$_SendMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_SendMessageCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements _$$_SendMessageCopyWith<$Res> {
  __$$_SendMessageCopyWithImpl(
      _$_SendMessage _value, $Res Function(_$_SendMessage) _then)
      : super(_value, (v) => _then(v as _$_SendMessage));

  @override
  _$_SendMessage get _value => super._value as _$_SendMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SendMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({required this.message});

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
            other is _$_SendMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      __$$_SendMessageCopyWithImpl<_$_SendMessage>(this, _$identity);

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
    required TResult Function(_InitializeBluetooth value) initialize,
    required TResult Function(_EnableBluetooth value) enable,
    required TResult Function(_DisableBluetooth value) disable,
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
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
    TResult Function(_SelectDevice value)? selectDevice,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeBluetooth value)? initialize,
    TResult Function(_EnableBluetooth value)? enable,
    TResult Function(_DisableBluetooth value)? disable,
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
  const factory _SendMessage({required final String message}) = _$_SendMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
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
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function(BluetoothMessage? message)? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
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
    required TResult Function(BluetoothMessage? message) connected,
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
    TResult Function(BluetoothMessage? message)? connected,
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
    required TResult Function(BluetoothMessage? message) connected,
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
    TResult Function(BluetoothMessage? message)? connected,
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
    required TResult Function(BluetoothMessage? message) connected,
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
    TResult Function(BluetoothMessage? message)? connected,
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
  $Res call({BluetoothMessage? message});

  $BluetoothMessageCopyWith<$Res>? get message;
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

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BluetoothConnectedState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as BluetoothMessage?,
    ));
  }

  @override
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

class _$BluetoothConnectedState implements BluetoothConnectedState {
  const _$BluetoothConnectedState({this.message});

  @override
  final BluetoothMessage? message;

  @override
  String toString() {
    return 'BluetoothBlocState.connected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothConnectedState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$BluetoothConnectedStateCopyWith<_$BluetoothConnectedState> get copyWith =>
      __$$BluetoothConnectedStateCopyWithImpl<_$BluetoothConnectedState>(
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
    TResult Function()? notInitialized,
    TResult Function()? notEnabled,
    TResult Function()? connecting,
    TResult Function(BluetoothMessage? message)? connected,
    TResult Function()? disconnecting,
    TResult Function(BluetoothDevice? bluetoothDevice)? disconnected,
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
  const factory BluetoothConnectedState({final BluetoothMessage? message}) =
      _$BluetoothConnectedState;

  BluetoothMessage? get message;
  @JsonKey(ignore: true)
  _$$BluetoothConnectedStateCopyWith<_$BluetoothConnectedState> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(BluetoothMessage? message) connected,
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
    TResult Function(BluetoothMessage? message)? connected,
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
    required TResult Function(BluetoothMessage? message) connected,
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
    TResult Function(BluetoothMessage? message)? connected,
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
