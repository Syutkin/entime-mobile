// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrails,
    required TResult Function(String name, int? distance, int? elevation,
            String? url, String? description, String? filePath)
        addTrail,
    required TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)
        updateTrail,
    required TResult Function(int id) deleteTrail,
    required TResult Function(String filePath) loadTrack,
    required TResult Function() unloadTrack,
    required TResult Function(TrackFile track) emitTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult? Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult? Function(int id)? deleteTrail,
    TResult? Function(String filePath)? loadTrack,
    TResult? Function()? unloadTrack,
    TResult? Function(TrackFile track)? emitTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult Function(int id)? deleteTrail,
    TResult Function(String filePath)? loadTrack,
    TResult Function()? unloadTrack,
    TResult Function(TrackFile track)? emitTrack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
    required TResult Function(_LoadTrack value) loadTrack,
    required TResult Function(_UnloadTrack value) unloadTrack,
    required TResult Function(_EmitTrack value) emitTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
    TResult? Function(_LoadTrack value)? loadTrack,
    TResult? Function(_UnloadTrack value)? unloadTrack,
    TResult? Function(_EmitTrack value)? emitTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
    TResult Function(_LoadTrack value)? loadTrack,
    TResult Function(_UnloadTrack value)? unloadTrack,
    TResult Function(_EmitTrack value)? emitTrack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailsEventCopyWith<$Res> {
  factory $TrailsEventCopyWith(
          TrailsEvent value, $Res Function(TrailsEvent) then) =
      _$TrailsEventCopyWithImpl<$Res, TrailsEvent>;
}

/// @nodoc
class _$TrailsEventCopyWithImpl<$Res, $Val extends TrailsEvent>
    implements $TrailsEventCopyWith<$Res> {
  _$TrailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTrailsImplCopyWith<$Res> {
  factory _$$GetTrailsImplCopyWith(
          _$GetTrailsImpl value, $Res Function(_$GetTrailsImpl) then) =
      __$$GetTrailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTrailsImplCopyWithImpl<$Res>
    extends _$TrailsEventCopyWithImpl<$Res, _$GetTrailsImpl>
    implements _$$GetTrailsImplCopyWith<$Res> {
  __$$GetTrailsImplCopyWithImpl(
      _$GetTrailsImpl _value, $Res Function(_$GetTrailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTrailsImpl implements _GetTrails {
  const _$GetTrailsImpl();

  @override
  String toString() {
    return 'TrailsEvent.getTrails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTrailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrails,
    required TResult Function(String name, int? distance, int? elevation,
            String? url, String? description, String? filePath)
        addTrail,
    required TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)
        updateTrail,
    required TResult Function(int id) deleteTrail,
    required TResult Function(String filePath) loadTrack,
    required TResult Function() unloadTrack,
    required TResult Function(TrackFile track) emitTrack,
  }) {
    return getTrails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult? Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult? Function(int id)? deleteTrail,
    TResult? Function(String filePath)? loadTrack,
    TResult? Function()? unloadTrack,
    TResult? Function(TrackFile track)? emitTrack,
  }) {
    return getTrails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult Function(int id)? deleteTrail,
    TResult Function(String filePath)? loadTrack,
    TResult Function()? unloadTrack,
    TResult Function(TrackFile track)? emitTrack,
    required TResult orElse(),
  }) {
    if (getTrails != null) {
      return getTrails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
    required TResult Function(_LoadTrack value) loadTrack,
    required TResult Function(_UnloadTrack value) unloadTrack,
    required TResult Function(_EmitTrack value) emitTrack,
  }) {
    return getTrails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
    TResult? Function(_LoadTrack value)? loadTrack,
    TResult? Function(_UnloadTrack value)? unloadTrack,
    TResult? Function(_EmitTrack value)? emitTrack,
  }) {
    return getTrails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
    TResult Function(_LoadTrack value)? loadTrack,
    TResult Function(_UnloadTrack value)? unloadTrack,
    TResult Function(_EmitTrack value)? emitTrack,
    required TResult orElse(),
  }) {
    if (getTrails != null) {
      return getTrails(this);
    }
    return orElse();
  }
}

abstract class _GetTrails implements TrailsEvent {
  const factory _GetTrails() = _$GetTrailsImpl;
}

/// @nodoc
abstract class _$$AddTrailImplCopyWith<$Res> {
  factory _$$AddTrailImplCopyWith(
          _$AddTrailImpl value, $Res Function(_$AddTrailImpl) then) =
      __$$AddTrailImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      int? distance,
      int? elevation,
      String? url,
      String? description,
      String? filePath});
}

/// @nodoc
class __$$AddTrailImplCopyWithImpl<$Res>
    extends _$TrailsEventCopyWithImpl<$Res, _$AddTrailImpl>
    implements _$$AddTrailImplCopyWith<$Res> {
  __$$AddTrailImplCopyWithImpl(
      _$AddTrailImpl _value, $Res Function(_$AddTrailImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? distance = freezed,
    Object? elevation = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_$AddTrailImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddTrailImpl implements _AddTrail {
  const _$AddTrailImpl(
      {required this.name,
      this.distance,
      this.elevation,
      this.url,
      this.description,
      this.filePath});

  @override
  final String name;
  @override
  final int? distance;
  @override
  final int? elevation;
  @override
  final String? url;
  @override
  final String? description;
  @override
  final String? filePath;

  @override
  String toString() {
    return 'TrailsEvent.addTrail(name: $name, distance: $distance, elevation: $elevation, url: $url, description: $description, filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTrailImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, distance, elevation, url, description, filePath);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTrailImplCopyWith<_$AddTrailImpl> get copyWith =>
      __$$AddTrailImplCopyWithImpl<_$AddTrailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrails,
    required TResult Function(String name, int? distance, int? elevation,
            String? url, String? description, String? filePath)
        addTrail,
    required TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)
        updateTrail,
    required TResult Function(int id) deleteTrail,
    required TResult Function(String filePath) loadTrack,
    required TResult Function() unloadTrack,
    required TResult Function(TrackFile track) emitTrack,
  }) {
    return addTrail(name, distance, elevation, url, description, filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult? Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult? Function(int id)? deleteTrail,
    TResult? Function(String filePath)? loadTrack,
    TResult? Function()? unloadTrack,
    TResult? Function(TrackFile track)? emitTrack,
  }) {
    return addTrail?.call(
        name, distance, elevation, url, description, filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult Function(int id)? deleteTrail,
    TResult Function(String filePath)? loadTrack,
    TResult Function()? unloadTrack,
    TResult Function(TrackFile track)? emitTrack,
    required TResult orElse(),
  }) {
    if (addTrail != null) {
      return addTrail(name, distance, elevation, url, description, filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
    required TResult Function(_LoadTrack value) loadTrack,
    required TResult Function(_UnloadTrack value) unloadTrack,
    required TResult Function(_EmitTrack value) emitTrack,
  }) {
    return addTrail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
    TResult? Function(_LoadTrack value)? loadTrack,
    TResult? Function(_UnloadTrack value)? unloadTrack,
    TResult? Function(_EmitTrack value)? emitTrack,
  }) {
    return addTrail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
    TResult Function(_LoadTrack value)? loadTrack,
    TResult Function(_UnloadTrack value)? unloadTrack,
    TResult Function(_EmitTrack value)? emitTrack,
    required TResult orElse(),
  }) {
    if (addTrail != null) {
      return addTrail(this);
    }
    return orElse();
  }
}

abstract class _AddTrail implements TrailsEvent {
  const factory _AddTrail(
      {required final String name,
      final int? distance,
      final int? elevation,
      final String? url,
      final String? description,
      final String? filePath}) = _$AddTrailImpl;

  String get name;
  int? get distance;
  int? get elevation;
  String? get url;
  String? get description;
  String? get filePath;

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTrailImplCopyWith<_$AddTrailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTrailImplCopyWith<$Res> {
  factory _$$UpdateTrailImplCopyWith(
          _$UpdateTrailImpl value, $Res Function(_$UpdateTrailImpl) then) =
      __$$UpdateTrailImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String? name,
      int? distance,
      int? elevation,
      String? url,
      String? description,
      String? filePath,
      int? fileId,
      bool deleteTrack});
}

/// @nodoc
class __$$UpdateTrailImplCopyWithImpl<$Res>
    extends _$TrailsEventCopyWithImpl<$Res, _$UpdateTrailImpl>
    implements _$$UpdateTrailImplCopyWith<$Res> {
  __$$UpdateTrailImplCopyWithImpl(
      _$UpdateTrailImpl _value, $Res Function(_$UpdateTrailImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? distance = freezed,
    Object? elevation = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? filePath = freezed,
    Object? fileId = freezed,
    Object? deleteTrack = null,
  }) {
    return _then(_$UpdateTrailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int?,
      deleteTrack: null == deleteTrack
          ? _value.deleteTrack
          : deleteTrack // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateTrailImpl implements _UpdateTrail {
  const _$UpdateTrailImpl(
      {required this.id,
      this.name,
      this.distance,
      this.elevation,
      this.url,
      this.description,
      this.filePath,
      this.fileId,
      this.deleteTrack = false});

  @override
  final int id;
  @override
  final String? name;
  @override
  final int? distance;
  @override
  final int? elevation;
  @override
  final String? url;
  @override
  final String? description;
  @override
  final String? filePath;
  @override
  final int? fileId;
  @override
  @JsonKey()
  final bool deleteTrack;

  @override
  String toString() {
    return 'TrailsEvent.updateTrail(id: $id, name: $name, distance: $distance, elevation: $elevation, url: $url, description: $description, filePath: $filePath, fileId: $fileId, deleteTrack: $deleteTrack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTrailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.deleteTrack, deleteTrack) ||
                other.deleteTrack == deleteTrack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, distance, elevation,
      url, description, filePath, fileId, deleteTrack);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTrailImplCopyWith<_$UpdateTrailImpl> get copyWith =>
      __$$UpdateTrailImplCopyWithImpl<_$UpdateTrailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrails,
    required TResult Function(String name, int? distance, int? elevation,
            String? url, String? description, String? filePath)
        addTrail,
    required TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)
        updateTrail,
    required TResult Function(int id) deleteTrail,
    required TResult Function(String filePath) loadTrack,
    required TResult Function() unloadTrack,
    required TResult Function(TrackFile track) emitTrack,
  }) {
    return updateTrail(id, name, distance, elevation, url, description,
        filePath, fileId, deleteTrack);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult? Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult? Function(int id)? deleteTrail,
    TResult? Function(String filePath)? loadTrack,
    TResult? Function()? unloadTrack,
    TResult? Function(TrackFile track)? emitTrack,
  }) {
    return updateTrail?.call(id, name, distance, elevation, url, description,
        filePath, fileId, deleteTrack);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult Function(int id)? deleteTrail,
    TResult Function(String filePath)? loadTrack,
    TResult Function()? unloadTrack,
    TResult Function(TrackFile track)? emitTrack,
    required TResult orElse(),
  }) {
    if (updateTrail != null) {
      return updateTrail(id, name, distance, elevation, url, description,
          filePath, fileId, deleteTrack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
    required TResult Function(_LoadTrack value) loadTrack,
    required TResult Function(_UnloadTrack value) unloadTrack,
    required TResult Function(_EmitTrack value) emitTrack,
  }) {
    return updateTrail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
    TResult? Function(_LoadTrack value)? loadTrack,
    TResult? Function(_UnloadTrack value)? unloadTrack,
    TResult? Function(_EmitTrack value)? emitTrack,
  }) {
    return updateTrail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
    TResult Function(_LoadTrack value)? loadTrack,
    TResult Function(_UnloadTrack value)? unloadTrack,
    TResult Function(_EmitTrack value)? emitTrack,
    required TResult orElse(),
  }) {
    if (updateTrail != null) {
      return updateTrail(this);
    }
    return orElse();
  }
}

abstract class _UpdateTrail implements TrailsEvent {
  const factory _UpdateTrail(
      {required final int id,
      final String? name,
      final int? distance,
      final int? elevation,
      final String? url,
      final String? description,
      final String? filePath,
      final int? fileId,
      final bool deleteTrack}) = _$UpdateTrailImpl;

  int get id;
  String? get name;
  int? get distance;
  int? get elevation;
  String? get url;
  String? get description;
  String? get filePath;
  int? get fileId;
  bool get deleteTrack;

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTrailImplCopyWith<_$UpdateTrailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTrailImplCopyWith<$Res> {
  factory _$$DeleteTrailImplCopyWith(
          _$DeleteTrailImpl value, $Res Function(_$DeleteTrailImpl) then) =
      __$$DeleteTrailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTrailImplCopyWithImpl<$Res>
    extends _$TrailsEventCopyWithImpl<$Res, _$DeleteTrailImpl>
    implements _$$DeleteTrailImplCopyWith<$Res> {
  __$$DeleteTrailImplCopyWithImpl(
      _$DeleteTrailImpl _value, $Res Function(_$DeleteTrailImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTrailImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTrailImpl implements _DeleteTrail {
  const _$DeleteTrailImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TrailsEvent.deleteTrail(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTrailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTrailImplCopyWith<_$DeleteTrailImpl> get copyWith =>
      __$$DeleteTrailImplCopyWithImpl<_$DeleteTrailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrails,
    required TResult Function(String name, int? distance, int? elevation,
            String? url, String? description, String? filePath)
        addTrail,
    required TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)
        updateTrail,
    required TResult Function(int id) deleteTrail,
    required TResult Function(String filePath) loadTrack,
    required TResult Function() unloadTrack,
    required TResult Function(TrackFile track) emitTrack,
  }) {
    return deleteTrail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult? Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult? Function(int id)? deleteTrail,
    TResult? Function(String filePath)? loadTrack,
    TResult? Function()? unloadTrack,
    TResult? Function(TrackFile track)? emitTrack,
  }) {
    return deleteTrail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult Function(int id)? deleteTrail,
    TResult Function(String filePath)? loadTrack,
    TResult Function()? unloadTrack,
    TResult Function(TrackFile track)? emitTrack,
    required TResult orElse(),
  }) {
    if (deleteTrail != null) {
      return deleteTrail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
    required TResult Function(_LoadTrack value) loadTrack,
    required TResult Function(_UnloadTrack value) unloadTrack,
    required TResult Function(_EmitTrack value) emitTrack,
  }) {
    return deleteTrail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
    TResult? Function(_LoadTrack value)? loadTrack,
    TResult? Function(_UnloadTrack value)? unloadTrack,
    TResult? Function(_EmitTrack value)? emitTrack,
  }) {
    return deleteTrail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
    TResult Function(_LoadTrack value)? loadTrack,
    TResult Function(_UnloadTrack value)? unloadTrack,
    TResult Function(_EmitTrack value)? emitTrack,
    required TResult orElse(),
  }) {
    if (deleteTrail != null) {
      return deleteTrail(this);
    }
    return orElse();
  }
}

abstract class _DeleteTrail implements TrailsEvent {
  const factory _DeleteTrail(final int id) = _$DeleteTrailImpl;

  int get id;

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTrailImplCopyWith<_$DeleteTrailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTrackImplCopyWith<$Res> {
  factory _$$LoadTrackImplCopyWith(
          _$LoadTrackImpl value, $Res Function(_$LoadTrackImpl) then) =
      __$$LoadTrackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class __$$LoadTrackImplCopyWithImpl<$Res>
    extends _$TrailsEventCopyWithImpl<$Res, _$LoadTrackImpl>
    implements _$$LoadTrackImplCopyWith<$Res> {
  __$$LoadTrackImplCopyWithImpl(
      _$LoadTrackImpl _value, $Res Function(_$LoadTrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_$LoadTrackImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTrackImpl implements _LoadTrack {
  const _$LoadTrackImpl({required this.filePath});

  @override
  final String filePath;

  @override
  String toString() {
    return 'TrailsEvent.loadTrack(filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTrackImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTrackImplCopyWith<_$LoadTrackImpl> get copyWith =>
      __$$LoadTrackImplCopyWithImpl<_$LoadTrackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrails,
    required TResult Function(String name, int? distance, int? elevation,
            String? url, String? description, String? filePath)
        addTrail,
    required TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)
        updateTrail,
    required TResult Function(int id) deleteTrail,
    required TResult Function(String filePath) loadTrack,
    required TResult Function() unloadTrack,
    required TResult Function(TrackFile track) emitTrack,
  }) {
    return loadTrack(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult? Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult? Function(int id)? deleteTrail,
    TResult? Function(String filePath)? loadTrack,
    TResult? Function()? unloadTrack,
    TResult? Function(TrackFile track)? emitTrack,
  }) {
    return loadTrack?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult Function(int id)? deleteTrail,
    TResult Function(String filePath)? loadTrack,
    TResult Function()? unloadTrack,
    TResult Function(TrackFile track)? emitTrack,
    required TResult orElse(),
  }) {
    if (loadTrack != null) {
      return loadTrack(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
    required TResult Function(_LoadTrack value) loadTrack,
    required TResult Function(_UnloadTrack value) unloadTrack,
    required TResult Function(_EmitTrack value) emitTrack,
  }) {
    return loadTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
    TResult? Function(_LoadTrack value)? loadTrack,
    TResult? Function(_UnloadTrack value)? unloadTrack,
    TResult? Function(_EmitTrack value)? emitTrack,
  }) {
    return loadTrack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
    TResult Function(_LoadTrack value)? loadTrack,
    TResult Function(_UnloadTrack value)? unloadTrack,
    TResult Function(_EmitTrack value)? emitTrack,
    required TResult orElse(),
  }) {
    if (loadTrack != null) {
      return loadTrack(this);
    }
    return orElse();
  }
}

abstract class _LoadTrack implements TrailsEvent {
  const factory _LoadTrack({required final String filePath}) = _$LoadTrackImpl;

  String get filePath;

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTrackImplCopyWith<_$LoadTrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnloadTrackImplCopyWith<$Res> {
  factory _$$UnloadTrackImplCopyWith(
          _$UnloadTrackImpl value, $Res Function(_$UnloadTrackImpl) then) =
      __$$UnloadTrackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnloadTrackImplCopyWithImpl<$Res>
    extends _$TrailsEventCopyWithImpl<$Res, _$UnloadTrackImpl>
    implements _$$UnloadTrackImplCopyWith<$Res> {
  __$$UnloadTrackImplCopyWithImpl(
      _$UnloadTrackImpl _value, $Res Function(_$UnloadTrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnloadTrackImpl implements _UnloadTrack {
  const _$UnloadTrackImpl();

  @override
  String toString() {
    return 'TrailsEvent.unloadTrack()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnloadTrackImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrails,
    required TResult Function(String name, int? distance, int? elevation,
            String? url, String? description, String? filePath)
        addTrail,
    required TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)
        updateTrail,
    required TResult Function(int id) deleteTrail,
    required TResult Function(String filePath) loadTrack,
    required TResult Function() unloadTrack,
    required TResult Function(TrackFile track) emitTrack,
  }) {
    return unloadTrack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult? Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult? Function(int id)? deleteTrail,
    TResult? Function(String filePath)? loadTrack,
    TResult? Function()? unloadTrack,
    TResult? Function(TrackFile track)? emitTrack,
  }) {
    return unloadTrack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult Function(int id)? deleteTrail,
    TResult Function(String filePath)? loadTrack,
    TResult Function()? unloadTrack,
    TResult Function(TrackFile track)? emitTrack,
    required TResult orElse(),
  }) {
    if (unloadTrack != null) {
      return unloadTrack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
    required TResult Function(_LoadTrack value) loadTrack,
    required TResult Function(_UnloadTrack value) unloadTrack,
    required TResult Function(_EmitTrack value) emitTrack,
  }) {
    return unloadTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
    TResult? Function(_LoadTrack value)? loadTrack,
    TResult? Function(_UnloadTrack value)? unloadTrack,
    TResult? Function(_EmitTrack value)? emitTrack,
  }) {
    return unloadTrack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
    TResult Function(_LoadTrack value)? loadTrack,
    TResult Function(_UnloadTrack value)? unloadTrack,
    TResult Function(_EmitTrack value)? emitTrack,
    required TResult orElse(),
  }) {
    if (unloadTrack != null) {
      return unloadTrack(this);
    }
    return orElse();
  }
}

abstract class _UnloadTrack implements TrailsEvent {
  const factory _UnloadTrack() = _$UnloadTrackImpl;
}

/// @nodoc
abstract class _$$EmitTrackImplCopyWith<$Res> {
  factory _$$EmitTrackImplCopyWith(
          _$EmitTrackImpl value, $Res Function(_$EmitTrackImpl) then) =
      __$$EmitTrackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackFile track});
}

/// @nodoc
class __$$EmitTrackImplCopyWithImpl<$Res>
    extends _$TrailsEventCopyWithImpl<$Res, _$EmitTrackImpl>
    implements _$$EmitTrackImplCopyWith<$Res> {
  __$$EmitTrackImplCopyWithImpl(
      _$EmitTrackImpl _value, $Res Function(_$EmitTrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = freezed,
  }) {
    return _then(_$EmitTrackImpl(
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as TrackFile,
    ));
  }
}

/// @nodoc

class _$EmitTrackImpl implements _EmitTrack {
  const _$EmitTrackImpl({required this.track});

  @override
  final TrackFile track;

  @override
  String toString() {
    return 'TrailsEvent.emitTrack(track: $track)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitTrackImpl &&
            const DeepCollectionEquality().equals(other.track, track));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(track));

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmitTrackImplCopyWith<_$EmitTrackImpl> get copyWith =>
      __$$EmitTrackImplCopyWithImpl<_$EmitTrackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrails,
    required TResult Function(String name, int? distance, int? elevation,
            String? url, String? description, String? filePath)
        addTrail,
    required TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)
        updateTrail,
    required TResult Function(int id) deleteTrail,
    required TResult Function(String filePath) loadTrack,
    required TResult Function() unloadTrack,
    required TResult Function(TrackFile track) emitTrack,
  }) {
    return emitTrack(track);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult? Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult? Function(int id)? deleteTrail,
    TResult? Function(String filePath)? loadTrack,
    TResult? Function()? unloadTrack,
    TResult? Function(TrackFile track)? emitTrack,
  }) {
    return emitTrack?.call(track);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String name, int? distance, int? elevation, String? url,
            String? description, String? filePath)?
        addTrail,
    TResult Function(
            int id,
            String? name,
            int? distance,
            int? elevation,
            String? url,
            String? description,
            String? filePath,
            int? fileId,
            bool deleteTrack)?
        updateTrail,
    TResult Function(int id)? deleteTrail,
    TResult Function(String filePath)? loadTrack,
    TResult Function()? unloadTrack,
    TResult Function(TrackFile track)? emitTrack,
    required TResult orElse(),
  }) {
    if (emitTrack != null) {
      return emitTrack(track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
    required TResult Function(_LoadTrack value) loadTrack,
    required TResult Function(_UnloadTrack value) unloadTrack,
    required TResult Function(_EmitTrack value) emitTrack,
  }) {
    return emitTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
    TResult? Function(_LoadTrack value)? loadTrack,
    TResult? Function(_UnloadTrack value)? unloadTrack,
    TResult? Function(_EmitTrack value)? emitTrack,
  }) {
    return emitTrack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
    TResult Function(_LoadTrack value)? loadTrack,
    TResult Function(_UnloadTrack value)? unloadTrack,
    TResult Function(_EmitTrack value)? emitTrack,
    required TResult orElse(),
  }) {
    if (emitTrack != null) {
      return emitTrack(this);
    }
    return orElse();
  }
}

abstract class _EmitTrack implements TrailsEvent {
  const factory _EmitTrack({required final TrackFile track}) = _$EmitTrackImpl;

  TrackFile get track;

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmitTrackImplCopyWith<_$EmitTrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrailInfo> trails, TrackFile? track)
        initialized,
    required TResult Function(List<TrailInfo> trails) loadingTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TrailInfo> trails, TrackFile? track)? initialized,
    TResult? Function(List<TrailInfo> trails)? loadingTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrailInfo> trails, TrackFile? track)? initialized,
    TResult Function(List<TrailInfo> trails)? loadingTrack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadingTrack value) loadingTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadingTrack value)? loadingTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadingTrack value)? loadingTrack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailsStateCopyWith<$Res> {
  factory $TrailsStateCopyWith(
          TrailsState value, $Res Function(TrailsState) then) =
      _$TrailsStateCopyWithImpl<$Res, TrailsState>;
}

/// @nodoc
class _$TrailsStateCopyWithImpl<$Res, $Val extends TrailsState>
    implements $TrailsStateCopyWith<$Res> {
  _$TrailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TrailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TrailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrailInfo> trails, TrackFile? track)
        initialized,
    required TResult Function(List<TrailInfo> trails) loadingTrack,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TrailInfo> trails, TrackFile? track)? initialized,
    TResult? Function(List<TrailInfo> trails)? loadingTrack,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrailInfo> trails, TrackFile? track)? initialized,
    TResult Function(List<TrailInfo> trails)? loadingTrack,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadingTrack value) loadingTrack,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadingTrack value)? loadingTrack,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadingTrack value)? loadingTrack,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TrailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TrailInfo> trails, TrackFile? track});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$TrailsStateCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trails = null,
    Object? track = freezed,
  }) {
    return _then(_$InitializedImpl(
      trails: null == trails
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<TrailInfo>,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as TrackFile?,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl({required final List<TrailInfo> trails, this.track})
      : _trails = trails;

  final List<TrailInfo> _trails;
  @override
  List<TrailInfo> get trails {
    if (_trails is EqualUnmodifiableListView) return _trails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trails);
  }

  @override
  final TrackFile? track;

  @override
  String toString() {
    return 'TrailsState.initialized(trails: $trails, track: $track)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            const DeepCollectionEquality().equals(other._trails, _trails) &&
            const DeepCollectionEquality().equals(other.track, track));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trails),
      const DeepCollectionEquality().hash(track));

  /// Create a copy of TrailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrailInfo> trails, TrackFile? track)
        initialized,
    required TResult Function(List<TrailInfo> trails) loadingTrack,
  }) {
    return initialized(trails, track);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TrailInfo> trails, TrackFile? track)? initialized,
    TResult? Function(List<TrailInfo> trails)? loadingTrack,
  }) {
    return initialized?.call(trails, track);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrailInfo> trails, TrackFile? track)? initialized,
    TResult Function(List<TrailInfo> trails)? loadingTrack,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(trails, track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadingTrack value) loadingTrack,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadingTrack value)? loadingTrack,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadingTrack value)? loadingTrack,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TrailsState {
  const factory _Initialized(
      {required final List<TrailInfo> trails,
      final TrackFile? track}) = _$InitializedImpl;

  List<TrailInfo> get trails;
  TrackFile? get track;

  /// Create a copy of TrailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingTrackImplCopyWith<$Res> {
  factory _$$LoadingTrackImplCopyWith(
          _$LoadingTrackImpl value, $Res Function(_$LoadingTrackImpl) then) =
      __$$LoadingTrackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TrailInfo> trails});
}

/// @nodoc
class __$$LoadingTrackImplCopyWithImpl<$Res>
    extends _$TrailsStateCopyWithImpl<$Res, _$LoadingTrackImpl>
    implements _$$LoadingTrackImplCopyWith<$Res> {
  __$$LoadingTrackImplCopyWithImpl(
      _$LoadingTrackImpl _value, $Res Function(_$LoadingTrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trails = null,
  }) {
    return _then(_$LoadingTrackImpl(
      trails: null == trails
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<TrailInfo>,
    ));
  }
}

/// @nodoc

class _$LoadingTrackImpl implements _LoadingTrack {
  const _$LoadingTrackImpl({required final List<TrailInfo> trails})
      : _trails = trails;

  final List<TrailInfo> _trails;
  @override
  List<TrailInfo> get trails {
    if (_trails is EqualUnmodifiableListView) return _trails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trails);
  }

  @override
  String toString() {
    return 'TrailsState.loadingTrack(trails: $trails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingTrackImpl &&
            const DeepCollectionEquality().equals(other._trails, _trails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trails));

  /// Create a copy of TrailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingTrackImplCopyWith<_$LoadingTrackImpl> get copyWith =>
      __$$LoadingTrackImplCopyWithImpl<_$LoadingTrackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrailInfo> trails, TrackFile? track)
        initialized,
    required TResult Function(List<TrailInfo> trails) loadingTrack,
  }) {
    return loadingTrack(trails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TrailInfo> trails, TrackFile? track)? initialized,
    TResult? Function(List<TrailInfo> trails)? loadingTrack,
  }) {
    return loadingTrack?.call(trails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrailInfo> trails, TrackFile? track)? initialized,
    TResult Function(List<TrailInfo> trails)? loadingTrack,
    required TResult orElse(),
  }) {
    if (loadingTrack != null) {
      return loadingTrack(trails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadingTrack value) loadingTrack,
  }) {
    return loadingTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadingTrack value)? loadingTrack,
  }) {
    return loadingTrack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadingTrack value)? loadingTrack,
    required TResult orElse(),
  }) {
    if (loadingTrack != null) {
      return loadingTrack(this);
    }
    return orElse();
  }
}

abstract class _LoadingTrack implements TrailsState {
  const factory _LoadingTrack({required final List<TrailInfo> trails}) =
      _$LoadingTrackImpl;

  List<TrailInfo> get trails;

  /// Create a copy of TrailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingTrackImplCopyWith<_$LoadingTrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
