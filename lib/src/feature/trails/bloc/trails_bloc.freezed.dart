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
    required TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)
        addTrail,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateTrail,
    required TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)
        upsertTrail,
    required TResult Function(int id) deleteTrail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult? Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult? Function(int id)? deleteTrail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult Function(int id)? deleteTrail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_UpsertTrail value) upsertTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_UpsertTrail value)? upsertTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_UpsertTrail value)? upsertTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
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
    required TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)
        addTrail,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateTrail,
    required TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)
        upsertTrail,
    required TResult Function(int id) deleteTrail,
  }) {
    return getTrails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult? Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult? Function(int id)? deleteTrail,
  }) {
    return getTrails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult Function(int id)? deleteTrail,
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
    required TResult Function(_UpsertTrail value) upsertTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
  }) {
    return getTrails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_UpsertTrail value)? upsertTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
  }) {
    return getTrails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_UpsertTrail value)? upsertTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
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
      {String? name,
      int? distance,
      int? elevation,
      Uint8List? gpxTrack,
      String? url,
      String? description});
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
    Object? name = freezed,
    Object? distance = freezed,
    Object? elevation = freezed,
    Object? gpxTrack = freezed,
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_$AddTrailImpl(
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
      gpxTrack: freezed == gpxTrack
          ? _value.gpxTrack
          : gpxTrack // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      this.gpxTrack,
      this.url,
      this.description});

  @override
  final String? name;
  @override
  final int? distance;
  @override
  final int? elevation;
  @override
  final Uint8List? gpxTrack;
  @override
  final String? url;
  @override
  final String? description;

  @override
  String toString() {
    return 'TrailsEvent.addTrail(name: $name, distance: $distance, elevation: $elevation, gpxTrack: $gpxTrack, url: $url, description: $description)';
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
            const DeepCollectionEquality().equals(other.gpxTrack, gpxTrack) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, distance, elevation,
      const DeepCollectionEquality().hash(gpxTrack), url, description);

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
    required TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)
        addTrail,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateTrail,
    required TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)
        upsertTrail,
    required TResult Function(int id) deleteTrail,
  }) {
    return addTrail(name, distance, elevation, gpxTrack, url, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult? Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult? Function(int id)? deleteTrail,
  }) {
    return addTrail?.call(
        name, distance, elevation, gpxTrack, url, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult Function(int id)? deleteTrail,
    required TResult orElse(),
  }) {
    if (addTrail != null) {
      return addTrail(name, distance, elevation, gpxTrack, url, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_UpsertTrail value) upsertTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
  }) {
    return addTrail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_UpsertTrail value)? upsertTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
  }) {
    return addTrail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_UpsertTrail value)? upsertTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
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
      {required final String? name,
      final int? distance,
      final int? elevation,
      final Uint8List? gpxTrack,
      final String? url,
      final String? description}) = _$AddTrailImpl;

  String? get name;
  int? get distance;
  int? get elevation;
  Uint8List? get gpxTrack;
  String? get url;
  String? get description;

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
      {int? id,
      String? name,
      DateTime? startDate,
      DateTime? finishDate,
      String? location,
      String? url,
      String? description});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? startDate = freezed,
    Object? finishDate = freezed,
    Object? location = freezed,
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_$UpdateTrailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishDate: freezed == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateTrailImpl implements _UpdateTrail {
  const _$UpdateTrailImpl(
      {this.id,
      this.name,
      this.startDate,
      this.finishDate,
      this.location,
      this.url,
      this.description});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final DateTime? startDate;
  @override
  final DateTime? finishDate;
  @override
  final String? location;
  @override
  final String? url;
  @override
  final String? description;

  @override
  String toString() {
    return 'TrailsEvent.updateTrail(id: $id, name: $name, startDate: $startDate, finishDate: $finishDate, location: $location, url: $url, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTrailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.finishDate, finishDate) ||
                other.finishDate == finishDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, startDate, finishDate, location, url, description);

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
    required TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)
        addTrail,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateTrail,
    required TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)
        upsertTrail,
    required TResult Function(int id) deleteTrail,
  }) {
    return updateTrail(
        id, name, startDate, finishDate, location, url, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult? Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult? Function(int id)? deleteTrail,
  }) {
    return updateTrail?.call(
        id, name, startDate, finishDate, location, url, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult Function(int id)? deleteTrail,
    required TResult orElse(),
  }) {
    if (updateTrail != null) {
      return updateTrail(
          id, name, startDate, finishDate, location, url, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_UpsertTrail value) upsertTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
  }) {
    return updateTrail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_UpsertTrail value)? upsertTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
  }) {
    return updateTrail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_UpsertTrail value)? upsertTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
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
      {final int? id,
      final String? name,
      final DateTime? startDate,
      final DateTime? finishDate,
      final String? location,
      final String? url,
      final String? description}) = _$UpdateTrailImpl;

  int? get id;
  String? get name;
  DateTime? get startDate;
  DateTime? get finishDate;
  String? get location;
  String? get url;
  String? get description;

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTrailImplCopyWith<_$UpdateTrailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpsertTrailImplCopyWith<$Res> {
  factory _$$UpsertTrailImplCopyWith(
          _$UpsertTrailImpl value, $Res Function(_$UpsertTrailImpl) then) =
      __$$UpsertTrailImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? distance,
      int? elevation,
      Uint8List? gpxTrack,
      String? url,
      String? description,
      bool? isDeleted});
}

/// @nodoc
class __$$UpsertTrailImplCopyWithImpl<$Res>
    extends _$TrailsEventCopyWithImpl<$Res, _$UpsertTrailImpl>
    implements _$$UpsertTrailImplCopyWith<$Res> {
  __$$UpsertTrailImplCopyWithImpl(
      _$UpsertTrailImpl _value, $Res Function(_$UpsertTrailImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? distance = freezed,
    Object? elevation = freezed,
    Object? gpxTrack = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? isDeleted = freezed,
  }) {
    return _then(_$UpsertTrailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      gpxTrack: freezed == gpxTrack
          ? _value.gpxTrack
          : gpxTrack // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$UpsertTrailImpl implements _UpsertTrail {
  const _$UpsertTrailImpl(
      {this.id,
      this.name,
      this.distance,
      this.elevation,
      this.gpxTrack,
      this.url,
      this.description,
      this.isDeleted});

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? distance;
  @override
  final int? elevation;
  @override
  final Uint8List? gpxTrack;
  @override
  final String? url;
  @override
  final String? description;
  @override
  final bool? isDeleted;

  @override
  String toString() {
    return 'TrailsEvent.upsertTrail(id: $id, name: $name, distance: $distance, elevation: $elevation, gpxTrack: $gpxTrack, url: $url, description: $description, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpsertTrailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            const DeepCollectionEquality().equals(other.gpxTrack, gpxTrack) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      distance,
      elevation,
      const DeepCollectionEquality().hash(gpxTrack),
      url,
      description,
      isDeleted);

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpsertTrailImplCopyWith<_$UpsertTrailImpl> get copyWith =>
      __$$UpsertTrailImplCopyWithImpl<_$UpsertTrailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrails,
    required TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)
        addTrail,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateTrail,
    required TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)
        upsertTrail,
    required TResult Function(int id) deleteTrail,
  }) {
    return upsertTrail(
        id, name, distance, elevation, gpxTrack, url, description, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult? Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult? Function(int id)? deleteTrail,
  }) {
    return upsertTrail?.call(
        id, name, distance, elevation, gpxTrack, url, description, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult Function(int id)? deleteTrail,
    required TResult orElse(),
  }) {
    if (upsertTrail != null) {
      return upsertTrail(
          id, name, distance, elevation, gpxTrack, url, description, isDeleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrails value) getTrails,
    required TResult Function(_AddTrail value) addTrail,
    required TResult Function(_UpdateTrail value) updateTrail,
    required TResult Function(_UpsertTrail value) upsertTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
  }) {
    return upsertTrail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_UpsertTrail value)? upsertTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
  }) {
    return upsertTrail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_UpsertTrail value)? upsertTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
    required TResult orElse(),
  }) {
    if (upsertTrail != null) {
      return upsertTrail(this);
    }
    return orElse();
  }
}

abstract class _UpsertTrail implements TrailsEvent {
  const factory _UpsertTrail(
      {final int? id,
      final String? name,
      final int? distance,
      final int? elevation,
      final Uint8List? gpxTrack,
      final String? url,
      final String? description,
      final bool? isDeleted}) = _$UpsertTrailImpl;

  int? get id;
  String? get name;
  int? get distance;
  int? get elevation;
  Uint8List? get gpxTrack;
  String? get url;
  String? get description;
  bool? get isDeleted;

  /// Create a copy of TrailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpsertTrailImplCopyWith<_$UpsertTrailImpl> get copyWith =>
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
    required TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)
        addTrail,
    required TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)
        updateTrail,
    required TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)
        upsertTrail,
    required TResult Function(int id) deleteTrail,
  }) {
    return deleteTrail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrails,
    TResult? Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult? Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult? Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult? Function(int id)? deleteTrail,
  }) {
    return deleteTrail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrails,
    TResult Function(String? name, int? distance, int? elevation,
            Uint8List? gpxTrack, String? url, String? description)?
        addTrail,
    TResult Function(
            int? id,
            String? name,
            DateTime? startDate,
            DateTime? finishDate,
            String? location,
            String? url,
            String? description)?
        updateTrail,
    TResult Function(
            int? id,
            String? name,
            int? distance,
            int? elevation,
            Uint8List? gpxTrack,
            String? url,
            String? description,
            bool? isDeleted)?
        upsertTrail,
    TResult Function(int id)? deleteTrail,
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
    required TResult Function(_UpsertTrail value) upsertTrail,
    required TResult Function(_DeleteTrail value) deleteTrail,
  }) {
    return deleteTrail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrails value)? getTrails,
    TResult? Function(_AddTrail value)? addTrail,
    TResult? Function(_UpdateTrail value)? updateTrail,
    TResult? Function(_UpsertTrail value)? upsertTrail,
    TResult? Function(_DeleteTrail value)? deleteTrail,
  }) {
    return deleteTrail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrails value)? getTrails,
    TResult Function(_AddTrail value)? addTrail,
    TResult Function(_UpdateTrail value)? updateTrail,
    TResult Function(_UpsertTrail value)? upsertTrail,
    TResult Function(_DeleteTrail value)? deleteTrail,
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
mixin _$TrailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Trail> trails) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Trail> trails)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Trail> trails)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
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
    required TResult Function(List<Trail> trails) initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Trail> trails)? initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Trail> trails)? initialized,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
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
  $Res call({List<Trail> trails});
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
  }) {
    return _then(_$InitializedImpl(
      trails: null == trails
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl({required final List<Trail> trails})
      : _trails = trails;

  final List<Trail> _trails;
  @override
  List<Trail> get trails {
    if (_trails is EqualUnmodifiableListView) return _trails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trails);
  }

  @override
  String toString() {
    return 'TrailsState.initialized(trails: $trails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
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
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Trail> trails) initialized,
  }) {
    return initialized(trails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Trail> trails)? initialized,
  }) {
    return initialized?.call(trails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Trail> trails)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(trails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TrailsState {
  const factory _Initialized({required final List<Trail> trails}) =
      _$InitializedImpl;

  List<Trail> get trails;

  /// Create a copy of TrailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
