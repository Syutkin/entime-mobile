// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onChanged,
    required TResult Function(Race race) addRace,
    required TResult Function(int raceId) selectStages,
    required TResult Function(Stage stage) addStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChanged value) onChanged,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_AddStage value) addStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseEventCopyWith<$Res> {
  factory $DatabaseEventCopyWith(
          DatabaseEvent value, $Res Function(DatabaseEvent) then) =
      _$DatabaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseEventCopyWithImpl<$Res>
    implements $DatabaseEventCopyWith<$Res> {
  _$DatabaseEventCopyWithImpl(this._value, this._then);

  final DatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(DatabaseEvent) _then;
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, (v) => _then(v as _$_Initialize));

  @override
  _$_Initialize get _value => super._value as _$_Initialize;
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'DatabaseEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onChanged,
    required TResult Function(Race race) addRace,
    required TResult Function(int raceId) selectStages,
    required TResult Function(Stage stage) addStage,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
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
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChanged value) onChanged,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_AddStage value) addStage,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements DatabaseEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
abstract class _$$_OnChangedCopyWith<$Res> {
  factory _$$_OnChangedCopyWith(
          _$_OnChanged value, $Res Function(_$_OnChanged) then) =
      __$$_OnChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnChangedCopyWithImpl<$Res> extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_OnChangedCopyWith<$Res> {
  __$$_OnChangedCopyWithImpl(
      _$_OnChanged _value, $Res Function(_$_OnChanged) _then)
      : super(_value, (v) => _then(v as _$_OnChanged));

  @override
  _$_OnChanged get _value => super._value as _$_OnChanged;
}

/// @nodoc

class _$_OnChanged implements _OnChanged {
  const _$_OnChanged();

  @override
  String toString() {
    return 'DatabaseEvent.onChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onChanged,
    required TResult Function(Race race) addRace,
    required TResult Function(int raceId) selectStages,
    required TResult Function(Stage stage) addStage,
  }) {
    return onChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
  }) {
    return onChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChanged value) onChanged,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_AddStage value) addStage,
  }) {
    return onChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
  }) {
    return onChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(this);
    }
    return orElse();
  }
}

abstract class _OnChanged implements DatabaseEvent {
  const factory _OnChanged() = _$_OnChanged;
}

/// @nodoc
abstract class _$$_AddRaceCopyWith<$Res> {
  factory _$$_AddRaceCopyWith(
          _$_AddRace value, $Res Function(_$_AddRace) then) =
      __$$_AddRaceCopyWithImpl<$Res>;
  $Res call({Race race});
}

/// @nodoc
class __$$_AddRaceCopyWithImpl<$Res> extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_AddRaceCopyWith<$Res> {
  __$$_AddRaceCopyWithImpl(_$_AddRace _value, $Res Function(_$_AddRace) _then)
      : super(_value, (v) => _then(v as _$_AddRace));

  @override
  _$_AddRace get _value => super._value as _$_AddRace;

  @override
  $Res call({
    Object? race = freezed,
  }) {
    return _then(_$_AddRace(
      race == freezed
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as Race,
    ));
  }
}

/// @nodoc

class _$_AddRace implements _AddRace {
  const _$_AddRace(this.race);

  @override
  final Race race;

  @override
  String toString() {
    return 'DatabaseEvent.addRace(race: $race)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddRace &&
            const DeepCollectionEquality().equals(other.race, race));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(race));

  @JsonKey(ignore: true)
  @override
  _$$_AddRaceCopyWith<_$_AddRace> get copyWith =>
      __$$_AddRaceCopyWithImpl<_$_AddRace>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onChanged,
    required TResult Function(Race race) addRace,
    required TResult Function(int raceId) selectStages,
    required TResult Function(Stage stage) addStage,
  }) {
    return addRace(race);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
  }) {
    return addRace?.call(race);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
    required TResult orElse(),
  }) {
    if (addRace != null) {
      return addRace(race);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChanged value) onChanged,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_AddStage value) addStage,
  }) {
    return addRace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
  }) {
    return addRace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
    required TResult orElse(),
  }) {
    if (addRace != null) {
      return addRace(this);
    }
    return orElse();
  }
}

abstract class _AddRace implements DatabaseEvent {
  const factory _AddRace(final Race race) = _$_AddRace;

  Race get race;
  @JsonKey(ignore: true)
  _$$_AddRaceCopyWith<_$_AddRace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectStagesCopyWith<$Res> {
  factory _$$_SelectStagesCopyWith(
          _$_SelectStages value, $Res Function(_$_SelectStages) then) =
      __$$_SelectStagesCopyWithImpl<$Res>;
  $Res call({int raceId});
}

/// @nodoc
class __$$_SelectStagesCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_SelectStagesCopyWith<$Res> {
  __$$_SelectStagesCopyWithImpl(
      _$_SelectStages _value, $Res Function(_$_SelectStages) _then)
      : super(_value, (v) => _then(v as _$_SelectStages));

  @override
  _$_SelectStages get _value => super._value as _$_SelectStages;

  @override
  $Res call({
    Object? raceId = freezed,
  }) {
    return _then(_$_SelectStages(
      raceId == freezed
          ? _value.raceId
          : raceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectStages implements _SelectStages {
  const _$_SelectStages(this.raceId);

  @override
  final int raceId;

  @override
  String toString() {
    return 'DatabaseEvent.selectStages(raceId: $raceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectStages &&
            const DeepCollectionEquality().equals(other.raceId, raceId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(raceId));

  @JsonKey(ignore: true)
  @override
  _$$_SelectStagesCopyWith<_$_SelectStages> get copyWith =>
      __$$_SelectStagesCopyWithImpl<_$_SelectStages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onChanged,
    required TResult Function(Race race) addRace,
    required TResult Function(int raceId) selectStages,
    required TResult Function(Stage stage) addStage,
  }) {
    return selectStages(raceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
  }) {
    return selectStages?.call(raceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
    required TResult orElse(),
  }) {
    if (selectStages != null) {
      return selectStages(raceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChanged value) onChanged,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_AddStage value) addStage,
  }) {
    return selectStages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
  }) {
    return selectStages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
    required TResult orElse(),
  }) {
    if (selectStages != null) {
      return selectStages(this);
    }
    return orElse();
  }
}

abstract class _SelectStages implements DatabaseEvent {
  const factory _SelectStages(final int raceId) = _$_SelectStages;

  int get raceId;
  @JsonKey(ignore: true)
  _$$_SelectStagesCopyWith<_$_SelectStages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddStageCopyWith<$Res> {
  factory _$$_AddStageCopyWith(
          _$_AddStage value, $Res Function(_$_AddStage) then) =
      __$$_AddStageCopyWithImpl<$Res>;
  $Res call({Stage stage});
}

/// @nodoc
class __$$_AddStageCopyWithImpl<$Res> extends _$DatabaseEventCopyWithImpl<$Res>
    implements _$$_AddStageCopyWith<$Res> {
  __$$_AddStageCopyWithImpl(
      _$_AddStage _value, $Res Function(_$_AddStage) _then)
      : super(_value, (v) => _then(v as _$_AddStage));

  @override
  _$_AddStage get _value => super._value as _$_AddStage;

  @override
  $Res call({
    Object? stage = freezed,
  }) {
    return _then(_$_AddStage(
      stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage,
    ));
  }
}

/// @nodoc

class _$_AddStage implements _AddStage {
  const _$_AddStage(this.stage);

  @override
  final Stage stage;

  @override
  String toString() {
    return 'DatabaseEvent.addStage(stage: $stage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStage &&
            const DeepCollectionEquality().equals(other.stage, stage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stage));

  @JsonKey(ignore: true)
  @override
  _$$_AddStageCopyWith<_$_AddStage> get copyWith =>
      __$$_AddStageCopyWithImpl<_$_AddStage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() onChanged,
    required TResult Function(Race race) addRace,
    required TResult Function(int raceId) selectStages,
    required TResult Function(Stage stage) addStage,
  }) {
    return addStage(stage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
  }) {
    return addStage?.call(stage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? onChanged,
    TResult Function(Race race)? addRace,
    TResult Function(int raceId)? selectStages,
    TResult Function(Stage stage)? addStage,
    required TResult orElse(),
  }) {
    if (addStage != null) {
      return addStage(stage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_OnChanged value) onChanged,
    required TResult Function(_AddRace value) addRace,
    required TResult Function(_SelectStages value) selectStages,
    required TResult Function(_AddStage value) addStage,
  }) {
    return addStage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
  }) {
    return addStage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_AddRace value)? addRace,
    TResult Function(_SelectStages value)? selectStages,
    TResult Function(_AddStage value)? addStage,
    required TResult orElse(),
  }) {
    if (addStage != null) {
      return addStage(this);
    }
    return orElse();
  }
}

abstract class _AddStage implements DatabaseEvent {
  const factory _AddStage(final Stage stage) = _$_AddStage;

  Stage get stage;
  @JsonKey(ignore: true)
  _$$_AddStageCopyWith<_$_AddStage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DatabaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<Participant> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<Participant> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<Participant> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails)?
        initialized,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
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
abstract class $DatabaseStateCopyWith<$Res> {
  factory $DatabaseStateCopyWith(
          DatabaseState value, $Res Function(DatabaseState) then) =
      _$DatabaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseStateCopyWithImpl<$Res>
    implements $DatabaseStateCopyWith<$Res> {
  _$DatabaseStateCopyWithImpl(this._value, this._then);

  final DatabaseState _value;
  // ignore: unused_field
  final $Res Function(DatabaseState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$DatabaseStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DatabaseState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<Participant> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails)
        initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<Participant> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails)?
        initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<Participant> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails)?
        initialized,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
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

abstract class _Initial implements DatabaseState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  $Res call(
      {List<Race> races,
      List<Stage> stages,
      List<Rider> riders,
      List<Status> statuses,
      List<Participant> participants,
      List<Start> starts,
      List<Finish> finishes,
      List<Trail> trails});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, (v) => _then(v as _$_Initialized));

  @override
  _$_Initialized get _value => super._value as _$_Initialized;

  @override
  $Res call({
    Object? races = freezed,
    Object? stages = freezed,
    Object? riders = freezed,
    Object? statuses = freezed,
    Object? participants = freezed,
    Object? starts = freezed,
    Object? finishes = freezed,
    Object? trails = freezed,
  }) {
    return _then(_$_Initialized(
      races: races == freezed
          ? _value._races
          : races // ignore: cast_nullable_to_non_nullable
              as List<Race>,
      stages: stages == freezed
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>,
      riders: riders == freezed
          ? _value._riders
          : riders // ignore: cast_nullable_to_non_nullable
              as List<Rider>,
      statuses: statuses == freezed
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<Status>,
      participants: participants == freezed
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      starts: starts == freezed
          ? _value._starts
          : starts // ignore: cast_nullable_to_non_nullable
              as List<Start>,
      finishes: finishes == freezed
          ? _value._finishes
          : finishes // ignore: cast_nullable_to_non_nullable
              as List<Finish>,
      trails: trails == freezed
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(
      {required final List<Race> races,
      required final List<Stage> stages,
      required final List<Rider> riders,
      required final List<Status> statuses,
      required final List<Participant> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails})
      : _races = races,
        _stages = stages,
        _riders = riders,
        _statuses = statuses,
        _participants = participants,
        _starts = starts,
        _finishes = finishes,
        _trails = trails;

  final List<Race> _races;
  @override
  List<Race> get races {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_races);
  }

  final List<Stage> _stages;
  @override
  List<Stage> get stages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stages);
  }

  final List<Rider> _riders;
  @override
  List<Rider> get riders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_riders);
  }

  final List<Status> _statuses;
  @override
  List<Status> get statuses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  final List<Participant> _participants;
  @override
  List<Participant> get participants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<Start> _starts;
  @override
  List<Start> get starts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_starts);
  }

  final List<Finish> _finishes;
  @override
  List<Finish> get finishes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_finishes);
  }

  final List<Trail> _trails;
  @override
  List<Trail> get trails {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trails);
  }

  @override
  String toString() {
    return 'DatabaseState.initialized(races: $races, stages: $stages, riders: $riders, statuses: $statuses, participants: $participants, starts: $starts, finishes: $finishes, trails: $trails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            const DeepCollectionEquality().equals(other._races, _races) &&
            const DeepCollectionEquality().equals(other._stages, _stages) &&
            const DeepCollectionEquality().equals(other._riders, _riders) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other._starts, _starts) &&
            const DeepCollectionEquality().equals(other._finishes, _finishes) &&
            const DeepCollectionEquality().equals(other._trails, _trails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_races),
      const DeepCollectionEquality().hash(_stages),
      const DeepCollectionEquality().hash(_riders),
      const DeepCollectionEquality().hash(_statuses),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_starts),
      const DeepCollectionEquality().hash(_finishes),
      const DeepCollectionEquality().hash(_trails));

  @JsonKey(ignore: true)
  @override
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<Participant> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails)
        initialized,
  }) {
    return initialized(races, stages, riders, statuses, participants, starts,
        finishes, trails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<Participant> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails)?
        initialized,
  }) {
    return initialized?.call(races, stages, riders, statuses, participants,
        starts, finishes, trails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Race> races,
            List<Stage> stages,
            List<Rider> riders,
            List<Status> statuses,
            List<Participant> participants,
            List<Start> starts,
            List<Finish> finishes,
            List<Trail> trails)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(races, stages, riders, statuses, participants, starts,
          finishes, trails);
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
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

abstract class _Initialized implements DatabaseState {
  const factory _Initialized(
      {required final List<Race> races,
      required final List<Stage> stages,
      required final List<Rider> riders,
      required final List<Status> statuses,
      required final List<Participant> participants,
      required final List<Start> starts,
      required final List<Finish> finishes,
      required final List<Trail> trails}) = _$_Initialized;

  List<Race> get races;
  List<Stage> get stages;
  List<Rider> get riders;
  List<Status> get statuses;
  List<Participant> get participants;
  List<Start> get starts;
  List<Finish> get finishes;
  List<Trail> get trails;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}
