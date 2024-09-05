// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protocol_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProtocolEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtocolEventCopyWith<$Res> {
  factory $ProtocolEventCopyWith(
          ProtocolEvent value, $Res Function(ProtocolEvent) then) =
      _$ProtocolEventCopyWithImpl<$Res, ProtocolEvent>;
}

/// @nodoc
class _$ProtocolEventCopyWithImpl<$Res, $Val extends ProtocolEvent>
    implements $ProtocolEventCopyWith<$Res> {
  _$ProtocolEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectProtocolImplCopyWith<$Res> {
  factory _$$SelectProtocolImplCopyWith(_$SelectProtocolImpl value,
          $Res Function(_$SelectProtocolImpl) then) =
      __$$SelectProtocolImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? file, PlatformFile? csv});
}

/// @nodoc
class __$$SelectProtocolImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$SelectProtocolImpl>
    implements _$$SelectProtocolImplCopyWith<$Res> {
  __$$SelectProtocolImplCopyWithImpl(
      _$SelectProtocolImpl _value, $Res Function(_$SelectProtocolImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? csv = freezed,
  }) {
    return _then(_$SelectProtocolImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      csv: freezed == csv
          ? _value.csv
          : csv // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ));
  }
}

/// @nodoc

class _$SelectProtocolImpl implements SelectProtocol {
  const _$SelectProtocolImpl({this.file, this.csv});

  @override
  final String? file;
  @override
  final PlatformFile? csv;

  @override
  String toString() {
    return 'ProtocolEvent.select(file: $file, csv: $csv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectProtocolImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.csv, csv) || other.csv == csv));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, csv);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectProtocolImplCopyWith<_$SelectProtocolImpl> get copyWith =>
      __$$SelectProtocolImplCopyWithImpl<_$SelectProtocolImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return select(file, csv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return select?.call(file, csv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(file, csv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class SelectProtocol implements ProtocolEvent {
  const factory SelectProtocol({final String? file, final PlatformFile? csv}) =
      _$SelectProtocolImpl;

  String? get file;
  PlatformFile? get csv;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectProtocolImplCopyWith<_$SelectProtocolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeselectProtocolImplCopyWith<$Res> {
  factory _$$DeselectProtocolImplCopyWith(_$DeselectProtocolImpl value,
          $Res Function(_$DeselectProtocolImpl) then) =
      __$$DeselectProtocolImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeselectProtocolImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$DeselectProtocolImpl>
    implements _$$DeselectProtocolImplCopyWith<$Res> {
  __$$DeselectProtocolImplCopyWithImpl(_$DeselectProtocolImpl _value,
      $Res Function(_$DeselectProtocolImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeselectProtocolImpl implements DeselectProtocol {
  const _$DeselectProtocolImpl();

  @override
  String toString() {
    return 'ProtocolEvent.deselect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeselectProtocolImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return deselect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return deselect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (deselect != null) {
      return deselect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return deselect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return deselect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (deselect != null) {
      return deselect(this);
    }
    return orElse();
  }
}

abstract class DeselectProtocol implements ProtocolEvent {
  const factory DeselectProtocol() = _$DeselectProtocolImpl;
}

/// @nodoc
abstract class _$$ProtocolAddStartNumberImplCopyWith<$Res> {
  factory _$$ProtocolAddStartNumberImplCopyWith(
          _$ProtocolAddStartNumberImpl value,
          $Res Function(_$ProtocolAddStartNumberImpl) then) =
      __$$ProtocolAddStartNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StartTime startTime, bool forceAdd});

  $StartTimeCopyWith<$Res> get startTime;
}

/// @nodoc
class __$$ProtocolAddStartNumberImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolAddStartNumberImpl>
    implements _$$ProtocolAddStartNumberImplCopyWith<$Res> {
  __$$ProtocolAddStartNumberImplCopyWithImpl(
      _$ProtocolAddStartNumberImpl _value,
      $Res Function(_$ProtocolAddStartNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? forceAdd = null,
  }) {
    return _then(_$ProtocolAddStartNumberImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as StartTime,
      forceAdd: null == forceAdd
          ? _value.forceAdd
          : forceAdd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StartTimeCopyWith<$Res> get startTime {
    return $StartTimeCopyWith<$Res>(_value.startTime, (value) {
      return _then(_value.copyWith(startTime: value));
    });
  }
}

/// @nodoc

class _$ProtocolAddStartNumberImpl implements ProtocolAddStartNumber {
  const _$ProtocolAddStartNumberImpl(
      {required this.startTime, this.forceAdd = false});

  @override
  final StartTime startTime;
  @override
  @JsonKey()
  final bool forceAdd;

  @override
  String toString() {
    return 'ProtocolEvent.addStartNumber(startTime: $startTime, forceAdd: $forceAdd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolAddStartNumberImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.forceAdd, forceAdd) ||
                other.forceAdd == forceAdd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, forceAdd);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolAddStartNumberImplCopyWith<_$ProtocolAddStartNumberImpl>
      get copyWith => __$$ProtocolAddStartNumberImplCopyWithImpl<
          _$ProtocolAddStartNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return addStartNumber(startTime, forceAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return addStartNumber?.call(startTime, forceAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addStartNumber != null) {
      return addStartNumber(startTime, forceAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return addStartNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return addStartNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addStartNumber != null) {
      return addStartNumber(this);
    }
    return orElse();
  }
}

abstract class ProtocolAddStartNumber implements ProtocolEvent {
  const factory ProtocolAddStartNumber(
      {required final StartTime startTime,
      final bool forceAdd}) = _$ProtocolAddStartNumberImpl;

  StartTime get startTime;
  bool get forceAdd;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolAddStartNumberImplCopyWith<_$ProtocolAddStartNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolUpdateAutomaticCorrectionImplCopyWith<$Res> {
  factory _$$ProtocolUpdateAutomaticCorrectionImplCopyWith(
          _$ProtocolUpdateAutomaticCorrectionImpl value,
          $Res Function(_$ProtocolUpdateAutomaticCorrectionImpl) then) =
      __$$ProtocolUpdateAutomaticCorrectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AutomaticStart automaticStart, bool forceUpdate});

  $AutomaticStartCopyWith<$Res> get automaticStart;
}

/// @nodoc
class __$$ProtocolUpdateAutomaticCorrectionImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res,
        _$ProtocolUpdateAutomaticCorrectionImpl>
    implements _$$ProtocolUpdateAutomaticCorrectionImplCopyWith<$Res> {
  __$$ProtocolUpdateAutomaticCorrectionImplCopyWithImpl(
      _$ProtocolUpdateAutomaticCorrectionImpl _value,
      $Res Function(_$ProtocolUpdateAutomaticCorrectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? automaticStart = null,
    Object? forceUpdate = null,
  }) {
    return _then(_$ProtocolUpdateAutomaticCorrectionImpl(
      automaticStart: null == automaticStart
          ? _value.automaticStart
          : automaticStart // ignore: cast_nullable_to_non_nullable
              as AutomaticStart,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutomaticStartCopyWith<$Res> get automaticStart {
    return $AutomaticStartCopyWith<$Res>(_value.automaticStart, (value) {
      return _then(_value.copyWith(automaticStart: value));
    });
  }
}

/// @nodoc

class _$ProtocolUpdateAutomaticCorrectionImpl
    implements ProtocolUpdateAutomaticCorrection {
  const _$ProtocolUpdateAutomaticCorrectionImpl(
      {required this.automaticStart, this.forceUpdate = false});

  @override
  final AutomaticStart automaticStart;
  @override
  @JsonKey()
  final bool forceUpdate;

  @override
  String toString() {
    return 'ProtocolEvent.updateAutomaticCorrection(automaticStart: $automaticStart, forceUpdate: $forceUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolUpdateAutomaticCorrectionImpl &&
            (identical(other.automaticStart, automaticStart) ||
                other.automaticStart == automaticStart) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, automaticStart, forceUpdate);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolUpdateAutomaticCorrectionImplCopyWith<
          _$ProtocolUpdateAutomaticCorrectionImpl>
      get copyWith => __$$ProtocolUpdateAutomaticCorrectionImplCopyWithImpl<
          _$ProtocolUpdateAutomaticCorrectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return updateAutomaticCorrection(automaticStart, forceUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return updateAutomaticCorrection?.call(automaticStart, forceUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateAutomaticCorrection != null) {
      return updateAutomaticCorrection(automaticStart, forceUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return updateAutomaticCorrection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return updateAutomaticCorrection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateAutomaticCorrection != null) {
      return updateAutomaticCorrection(this);
    }
    return orElse();
  }
}

abstract class ProtocolUpdateAutomaticCorrection implements ProtocolEvent {
  const factory ProtocolUpdateAutomaticCorrection(
      {required final AutomaticStart automaticStart,
      final bool forceUpdate}) = _$ProtocolUpdateAutomaticCorrectionImpl;

  AutomaticStart get automaticStart;
  bool get forceUpdate;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolUpdateAutomaticCorrectionImplCopyWith<
          _$ProtocolUpdateAutomaticCorrectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolUpdateManualStartTimeImplCopyWith<$Res> {
  factory _$$ProtocolUpdateManualStartTimeImplCopyWith(
          _$ProtocolUpdateManualStartTimeImpl value,
          $Res Function(_$ProtocolUpdateManualStartTimeImpl) then) =
      __$$ProtocolUpdateManualStartTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime time});
}

/// @nodoc
class __$$ProtocolUpdateManualStartTimeImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res,
        _$ProtocolUpdateManualStartTimeImpl>
    implements _$$ProtocolUpdateManualStartTimeImplCopyWith<$Res> {
  __$$ProtocolUpdateManualStartTimeImplCopyWithImpl(
      _$ProtocolUpdateManualStartTimeImpl _value,
      $Res Function(_$ProtocolUpdateManualStartTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$ProtocolUpdateManualStartTimeImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ProtocolUpdateManualStartTimeImpl
    implements ProtocolUpdateManualStartTime {
  const _$ProtocolUpdateManualStartTimeImpl({required this.time});

  @override
  final DateTime time;

  @override
  String toString() {
    return 'ProtocolEvent.updateManualStartTime(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolUpdateManualStartTimeImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolUpdateManualStartTimeImplCopyWith<
          _$ProtocolUpdateManualStartTimeImpl>
      get copyWith => __$$ProtocolUpdateManualStartTimeImplCopyWithImpl<
          _$ProtocolUpdateManualStartTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return updateManualStartTime(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return updateManualStartTime?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateManualStartTime != null) {
      return updateManualStartTime(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return updateManualStartTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return updateManualStartTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateManualStartTime != null) {
      return updateManualStartTime(this);
    }
    return orElse();
  }
}

abstract class ProtocolUpdateManualStartTime implements ProtocolEvent {
  const factory ProtocolUpdateManualStartTime({required final DateTime time}) =
      _$ProtocolUpdateManualStartTimeImpl;

  DateTime get time;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolUpdateManualStartTimeImplCopyWith<
          _$ProtocolUpdateManualStartTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolAddFinishTimeImplCopyWith<$Res> {
  factory _$$ProtocolAddFinishTimeImplCopyWith(
          _$ProtocolAddFinishTimeImpl value,
          $Res Function(_$ProtocolAddFinishTimeImpl) then) =
      __$$ProtocolAddFinishTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String time, DateTime timeStamp});
}

/// @nodoc
class __$$ProtocolAddFinishTimeImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolAddFinishTimeImpl>
    implements _$$ProtocolAddFinishTimeImplCopyWith<$Res> {
  __$$ProtocolAddFinishTimeImplCopyWithImpl(_$ProtocolAddFinishTimeImpl _value,
      $Res Function(_$ProtocolAddFinishTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? timeStamp = null,
  }) {
    return _then(_$ProtocolAddFinishTimeImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ProtocolAddFinishTimeImpl implements ProtocolAddFinishTime {
  const _$ProtocolAddFinishTimeImpl(
      {required this.time, required this.timeStamp});

  @override
  final String time;
  @override
  final DateTime timeStamp;

  @override
  String toString() {
    return 'ProtocolEvent.addFinishTime(time: $time, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolAddFinishTimeImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, timeStamp);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolAddFinishTimeImplCopyWith<_$ProtocolAddFinishTimeImpl>
      get copyWith => __$$ProtocolAddFinishTimeImplCopyWithImpl<
          _$ProtocolAddFinishTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return addFinishTime(time, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return addFinishTime?.call(time, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addFinishTime != null) {
      return addFinishTime(time, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return addFinishTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return addFinishTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addFinishTime != null) {
      return addFinishTime(this);
    }
    return orElse();
  }
}

abstract class ProtocolAddFinishTime implements ProtocolEvent {
  const factory ProtocolAddFinishTime(
      {required final String time,
      required final DateTime timeStamp}) = _$ProtocolAddFinishTimeImpl;

  String get time;
  DateTime get timeStamp;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolAddFinishTimeImplCopyWith<_$ProtocolAddFinishTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolAddFinishTimeManualImplCopyWith<$Res> {
  factory _$$ProtocolAddFinishTimeManualImplCopyWith(
          _$ProtocolAddFinishTimeManualImpl value,
          $Res Function(_$ProtocolAddFinishTimeManualImpl) then) =
      __$$ProtocolAddFinishTimeManualImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String time});
}

/// @nodoc
class __$$ProtocolAddFinishTimeManualImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolAddFinishTimeManualImpl>
    implements _$$ProtocolAddFinishTimeManualImplCopyWith<$Res> {
  __$$ProtocolAddFinishTimeManualImplCopyWithImpl(
      _$ProtocolAddFinishTimeManualImpl _value,
      $Res Function(_$ProtocolAddFinishTimeManualImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$ProtocolAddFinishTimeManualImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProtocolAddFinishTimeManualImpl implements ProtocolAddFinishTimeManual {
  const _$ProtocolAddFinishTimeManualImpl({required this.time});

  @override
  final String time;

  @override
  String toString() {
    return 'ProtocolEvent.addFinishTimeManual(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolAddFinishTimeManualImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolAddFinishTimeManualImplCopyWith<_$ProtocolAddFinishTimeManualImpl>
      get copyWith => __$$ProtocolAddFinishTimeManualImplCopyWithImpl<
          _$ProtocolAddFinishTimeManualImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return addFinishTimeManual(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return addFinishTimeManual?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addFinishTimeManual != null) {
      return addFinishTimeManual(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return addFinishTimeManual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return addFinishTimeManual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (addFinishTimeManual != null) {
      return addFinishTimeManual(this);
    }
    return orElse();
  }
}

abstract class ProtocolAddFinishTimeManual implements ProtocolEvent {
  const factory ProtocolAddFinishTimeManual({required final String time}) =
      _$ProtocolAddFinishTimeManualImpl;

  String get time;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolAddFinishTimeManualImplCopyWith<_$ProtocolAddFinishTimeManualImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolUpdateItemInfoAtStartImplCopyWith<$Res> {
  factory _$$ProtocolUpdateItemInfoAtStartImplCopyWith(
          _$ProtocolUpdateItemInfoAtStartImpl value,
          $Res Function(_$ProtocolUpdateItemInfoAtStartImpl) then) =
      __$$ProtocolUpdateItemInfoAtStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StartItem item});

  $StartItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ProtocolUpdateItemInfoAtStartImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res,
        _$ProtocolUpdateItemInfoAtStartImpl>
    implements _$$ProtocolUpdateItemInfoAtStartImplCopyWith<$Res> {
  __$$ProtocolUpdateItemInfoAtStartImplCopyWithImpl(
      _$ProtocolUpdateItemInfoAtStartImpl _value,
      $Res Function(_$ProtocolUpdateItemInfoAtStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$ProtocolUpdateItemInfoAtStartImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as StartItem,
    ));
  }

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StartItemCopyWith<$Res> get item {
    return $StartItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$ProtocolUpdateItemInfoAtStartImpl
    implements ProtocolUpdateItemInfoAtStart {
  const _$ProtocolUpdateItemInfoAtStartImpl({required this.item});

  @override
  final StartItem item;

  @override
  String toString() {
    return 'ProtocolEvent.updateItemInfoAtStart(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolUpdateItemInfoAtStartImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolUpdateItemInfoAtStartImplCopyWith<
          _$ProtocolUpdateItemInfoAtStartImpl>
      get copyWith => __$$ProtocolUpdateItemInfoAtStartImplCopyWithImpl<
          _$ProtocolUpdateItemInfoAtStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return updateItemInfoAtStart(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return updateItemInfoAtStart?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateItemInfoAtStart != null) {
      return updateItemInfoAtStart(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return updateItemInfoAtStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return updateItemInfoAtStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (updateItemInfoAtStart != null) {
      return updateItemInfoAtStart(this);
    }
    return orElse();
  }
}

abstract class ProtocolUpdateItemInfoAtStart implements ProtocolEvent {
  const factory ProtocolUpdateItemInfoAtStart({required final StartItem item}) =
      _$ProtocolUpdateItemInfoAtStartImpl;

  StartItem get item;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolUpdateItemInfoAtStartImplCopyWith<
          _$ProtocolUpdateItemInfoAtStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolClearStartResultsDebugImplCopyWith<$Res> {
  factory _$$ProtocolClearStartResultsDebugImplCopyWith(
          _$ProtocolClearStartResultsDebugImpl value,
          $Res Function(_$ProtocolClearStartResultsDebugImpl) then) =
      __$$ProtocolClearStartResultsDebugImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolClearStartResultsDebugImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res,
        _$ProtocolClearStartResultsDebugImpl>
    implements _$$ProtocolClearStartResultsDebugImplCopyWith<$Res> {
  __$$ProtocolClearStartResultsDebugImplCopyWithImpl(
      _$ProtocolClearStartResultsDebugImpl _value,
      $Res Function(_$ProtocolClearStartResultsDebugImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProtocolClearStartResultsDebugImpl
    implements ProtocolClearStartResultsDebug {
  const _$ProtocolClearStartResultsDebugImpl();

  @override
  String toString() {
    return 'ProtocolEvent.clearStartResultsDebug()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolClearStartResultsDebugImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return clearStartResultsDebug();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return clearStartResultsDebug?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearStartResultsDebug != null) {
      return clearStartResultsDebug();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return clearStartResultsDebug(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return clearStartResultsDebug?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearStartResultsDebug != null) {
      return clearStartResultsDebug(this);
    }
    return orElse();
  }
}

abstract class ProtocolClearStartResultsDebug implements ProtocolEvent {
  const factory ProtocolClearStartResultsDebug() =
      _$ProtocolClearStartResultsDebugImpl;
}

/// @nodoc
abstract class _$$ProtocolClearFinishResultsDebugImplCopyWith<$Res> {
  factory _$$ProtocolClearFinishResultsDebugImplCopyWith(
          _$ProtocolClearFinishResultsDebugImpl value,
          $Res Function(_$ProtocolClearFinishResultsDebugImpl) then) =
      __$$ProtocolClearFinishResultsDebugImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolClearFinishResultsDebugImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res,
        _$ProtocolClearFinishResultsDebugImpl>
    implements _$$ProtocolClearFinishResultsDebugImplCopyWith<$Res> {
  __$$ProtocolClearFinishResultsDebugImplCopyWithImpl(
      _$ProtocolClearFinishResultsDebugImpl _value,
      $Res Function(_$ProtocolClearFinishResultsDebugImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProtocolClearFinishResultsDebugImpl
    implements ProtocolClearFinishResultsDebug {
  const _$ProtocolClearFinishResultsDebugImpl();

  @override
  String toString() {
    return 'ProtocolEvent.clearFinishResultsDebug()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolClearFinishResultsDebugImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return clearFinishResultsDebug();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return clearFinishResultsDebug?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearFinishResultsDebug != null) {
      return clearFinishResultsDebug();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return clearFinishResultsDebug(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return clearFinishResultsDebug?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearFinishResultsDebug != null) {
      return clearFinishResultsDebug(this);
    }
    return orElse();
  }
}

abstract class ProtocolClearFinishResultsDebug implements ProtocolEvent {
  const factory ProtocolClearFinishResultsDebug() =
      _$ProtocolClearFinishResultsDebugImpl;
}

/// @nodoc
abstract class _$$ProtocolHideAllFinishResultsImplCopyWith<$Res> {
  factory _$$ProtocolHideAllFinishResultsImplCopyWith(
          _$ProtocolHideAllFinishResultsImpl value,
          $Res Function(_$ProtocolHideAllFinishResultsImpl) then) =
      __$$ProtocolHideAllFinishResultsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolHideAllFinishResultsImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res,
        _$ProtocolHideAllFinishResultsImpl>
    implements _$$ProtocolHideAllFinishResultsImplCopyWith<$Res> {
  __$$ProtocolHideAllFinishResultsImplCopyWithImpl(
      _$ProtocolHideAllFinishResultsImpl _value,
      $Res Function(_$ProtocolHideAllFinishResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProtocolHideAllFinishResultsImpl
    implements ProtocolHideAllFinishResults {
  const _$ProtocolHideAllFinishResultsImpl();

  @override
  String toString() {
    return 'ProtocolEvent.hideAllFinishResults()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolHideAllFinishResultsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return hideAllFinishResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return hideAllFinishResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (hideAllFinishResults != null) {
      return hideAllFinishResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return hideAllFinishResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return hideAllFinishResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (hideAllFinishResults != null) {
      return hideAllFinishResults(this);
    }
    return orElse();
  }
}

abstract class ProtocolHideAllFinishResults implements ProtocolEvent {
  const factory ProtocolHideAllFinishResults() =
      _$ProtocolHideAllFinishResultsImpl;
}

/// @nodoc
abstract class _$$ProtocolClearNumberAtFinishImplCopyWith<$Res> {
  factory _$$ProtocolClearNumberAtFinishImplCopyWith(
          _$ProtocolClearNumberAtFinishImpl value,
          $Res Function(_$ProtocolClearNumberAtFinishImpl) then) =
      __$$ProtocolClearNumberAtFinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$ProtocolClearNumberAtFinishImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolClearNumberAtFinishImpl>
    implements _$$ProtocolClearNumberAtFinishImplCopyWith<$Res> {
  __$$ProtocolClearNumberAtFinishImplCopyWithImpl(
      _$ProtocolClearNumberAtFinishImpl _value,
      $Res Function(_$ProtocolClearNumberAtFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$ProtocolClearNumberAtFinishImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProtocolClearNumberAtFinishImpl implements ProtocolClearNumberAtFinish {
  const _$ProtocolClearNumberAtFinishImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'ProtocolEvent.clearNumberAtFinish(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolClearNumberAtFinishImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolClearNumberAtFinishImplCopyWith<_$ProtocolClearNumberAtFinishImpl>
      get copyWith => __$$ProtocolClearNumberAtFinishImplCopyWithImpl<
          _$ProtocolClearNumberAtFinishImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return clearNumberAtFinish(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return clearNumberAtFinish?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearNumberAtFinish != null) {
      return clearNumberAtFinish(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return clearNumberAtFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return clearNumberAtFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (clearNumberAtFinish != null) {
      return clearNumberAtFinish(this);
    }
    return orElse();
  }
}

abstract class ProtocolClearNumberAtFinish implements ProtocolEvent {
  const factory ProtocolClearNumberAtFinish({required final int number}) =
      _$ProtocolClearNumberAtFinishImpl;

  int get number;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolClearNumberAtFinishImplCopyWith<_$ProtocolClearNumberAtFinishImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolSetDNSImplCopyWith<$Res> {
  factory _$$ProtocolSetDNSImplCopyWith(_$ProtocolSetDNSImpl value,
          $Res Function(_$ProtocolSetDNSImpl) then) =
      __$$ProtocolSetDNSImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$ProtocolSetDNSImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolSetDNSImpl>
    implements _$$ProtocolSetDNSImplCopyWith<$Res> {
  __$$ProtocolSetDNSImplCopyWithImpl(
      _$ProtocolSetDNSImpl _value, $Res Function(_$ProtocolSetDNSImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$ProtocolSetDNSImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProtocolSetDNSImpl implements ProtocolSetDNS {
  const _$ProtocolSetDNSImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'ProtocolEvent.setDNS(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolSetDNSImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolSetDNSImplCopyWith<_$ProtocolSetDNSImpl> get copyWith =>
      __$$ProtocolSetDNSImplCopyWithImpl<_$ProtocolSetDNSImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return setDNS(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return setDNS?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setDNS != null) {
      return setDNS(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return setDNS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return setDNS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setDNS != null) {
      return setDNS(this);
    }
    return orElse();
  }
}

abstract class ProtocolSetDNS implements ProtocolEvent {
  const factory ProtocolSetDNS({required final int number}) =
      _$ProtocolSetDNSImpl;

  int get number;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolSetDNSImplCopyWith<_$ProtocolSetDNSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolSetDNFImplCopyWith<$Res> {
  factory _$$ProtocolSetDNFImplCopyWith(_$ProtocolSetDNFImpl value,
          $Res Function(_$ProtocolSetDNFImpl) then) =
      __$$ProtocolSetDNFImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$ProtocolSetDNFImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolSetDNFImpl>
    implements _$$ProtocolSetDNFImplCopyWith<$Res> {
  __$$ProtocolSetDNFImplCopyWithImpl(
      _$ProtocolSetDNFImpl _value, $Res Function(_$ProtocolSetDNFImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$ProtocolSetDNFImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProtocolSetDNFImpl implements ProtocolSetDNF {
  const _$ProtocolSetDNFImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'ProtocolEvent.setDNF(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolSetDNFImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolSetDNFImplCopyWith<_$ProtocolSetDNFImpl> get copyWith =>
      __$$ProtocolSetDNFImplCopyWithImpl<_$ProtocolSetDNFImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return setDNF(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return setDNF?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setDNF != null) {
      return setDNF(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return setDNF(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return setDNF?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setDNF != null) {
      return setDNF(this);
    }
    return orElse();
  }
}

abstract class ProtocolSetDNF implements ProtocolEvent {
  const factory ProtocolSetDNF({required final int number}) =
      _$ProtocolSetDNFImpl;

  int get number;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolSetDNFImplCopyWith<_$ProtocolSetDNFImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolHideFinishTimeImplCopyWith<$Res> {
  factory _$$ProtocolHideFinishTimeImplCopyWith(
          _$ProtocolHideFinishTimeImpl value,
          $Res Function(_$ProtocolHideFinishTimeImpl) then) =
      __$$ProtocolHideFinishTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ProtocolHideFinishTimeImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolHideFinishTimeImpl>
    implements _$$ProtocolHideFinishTimeImplCopyWith<$Res> {
  __$$ProtocolHideFinishTimeImplCopyWithImpl(
      _$ProtocolHideFinishTimeImpl _value,
      $Res Function(_$ProtocolHideFinishTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ProtocolHideFinishTimeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProtocolHideFinishTimeImpl implements ProtocolHideFinishTime {
  const _$ProtocolHideFinishTimeImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ProtocolEvent.hideFinishTime(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolHideFinishTimeImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolHideFinishTimeImplCopyWith<_$ProtocolHideFinishTimeImpl>
      get copyWith => __$$ProtocolHideFinishTimeImplCopyWithImpl<
          _$ProtocolHideFinishTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return hideFinishTime(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return hideFinishTime?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (hideFinishTime != null) {
      return hideFinishTime(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return hideFinishTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return hideFinishTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (hideFinishTime != null) {
      return hideFinishTime(this);
    }
    return orElse();
  }
}

abstract class ProtocolHideFinishTime implements ProtocolEvent {
  const factory ProtocolHideFinishTime({required final int id}) =
      _$ProtocolHideFinishTimeImpl;

  int get id;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolHideFinishTimeImplCopyWith<_$ProtocolHideFinishTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolSetNumberToFinishTimeImplCopyWith<$Res> {
  factory _$$ProtocolSetNumberToFinishTimeImplCopyWith(
          _$ProtocolSetNumberToFinishTimeImpl value,
          $Res Function(_$ProtocolSetNumberToFinishTimeImpl) then) =
      __$$ProtocolSetNumberToFinishTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, int number, String finishTime});
}

/// @nodoc
class __$$ProtocolSetNumberToFinishTimeImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res,
        _$ProtocolSetNumberToFinishTimeImpl>
    implements _$$ProtocolSetNumberToFinishTimeImplCopyWith<$Res> {
  __$$ProtocolSetNumberToFinishTimeImplCopyWithImpl(
      _$ProtocolSetNumberToFinishTimeImpl _value,
      $Res Function(_$ProtocolSetNumberToFinishTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? finishTime = null,
  }) {
    return _then(_$ProtocolSetNumberToFinishTimeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProtocolSetNumberToFinishTimeImpl
    implements ProtocolSetNumberToFinishTime {
  const _$ProtocolSetNumberToFinishTimeImpl(
      {required this.id, required this.number, required this.finishTime});

  @override
  final int id;
  @override
  final int number;
  @override
  final String finishTime;

  @override
  String toString() {
    return 'ProtocolEvent.setNumberToFinishTime(id: $id, number: $number, finishTime: $finishTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolSetNumberToFinishTimeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, number, finishTime);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolSetNumberToFinishTimeImplCopyWith<
          _$ProtocolSetNumberToFinishTimeImpl>
      get copyWith => __$$ProtocolSetNumberToFinishTimeImplCopyWithImpl<
          _$ProtocolSetNumberToFinishTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return setNumberToFinishTime(id, number, finishTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return setNumberToFinishTime?.call(id, number, finishTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setNumberToFinishTime != null) {
      return setNumberToFinishTime(id, number, finishTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return setNumberToFinishTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return setNumberToFinishTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (setNumberToFinishTime != null) {
      return setNumberToFinishTime(this);
    }
    return orElse();
  }
}

abstract class ProtocolSetNumberToFinishTime implements ProtocolEvent {
  const factory ProtocolSetNumberToFinishTime(
      {required final int id,
      required final int number,
      required final String finishTime}) = _$ProtocolSetNumberToFinishTimeImpl;

  int get id;
  int get number;
  String get finishTime;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolSetNumberToFinishTimeImplCopyWith<
          _$ProtocolSetNumberToFinishTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolGetNumbersOnTraceImplCopyWith<$Res> {
  factory _$$ProtocolGetNumbersOnTraceImplCopyWith(
          _$ProtocolGetNumbersOnTraceImpl value,
          $Res Function(_$ProtocolGetNumbersOnTraceImpl) then) =
      __$$ProtocolGetNumbersOnTraceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolGetNumbersOnTraceImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolGetNumbersOnTraceImpl>
    implements _$$ProtocolGetNumbersOnTraceImplCopyWith<$Res> {
  __$$ProtocolGetNumbersOnTraceImplCopyWithImpl(
      _$ProtocolGetNumbersOnTraceImpl _value,
      $Res Function(_$ProtocolGetNumbersOnTraceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProtocolGetNumbersOnTraceImpl implements ProtocolGetNumbersOnTrace {
  const _$ProtocolGetNumbersOnTraceImpl();

  @override
  String toString() {
    return 'ProtocolEvent.getNumbersOnTrace()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolGetNumbersOnTraceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return getNumbersOnTrace();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return getNumbersOnTrace?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (getNumbersOnTrace != null) {
      return getNumbersOnTrace();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return getNumbersOnTrace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return getNumbersOnTrace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (getNumbersOnTrace != null) {
      return getNumbersOnTrace(this);
    }
    return orElse();
  }
}

abstract class ProtocolGetNumbersOnTrace implements ProtocolEvent {
  const factory ProtocolGetNumbersOnTrace() = _$ProtocolGetNumbersOnTraceImpl;
}

/// @nodoc
abstract class _$$ProtocolLoadStartFromCsvImplCopyWith<$Res> {
  factory _$$ProtocolLoadStartFromCsvImplCopyWith(
          _$ProtocolLoadStartFromCsvImpl value,
          $Res Function(_$ProtocolLoadStartFromCsvImpl) then) =
      __$$ProtocolLoadStartFromCsvImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlatformFile? csv});
}

/// @nodoc
class __$$ProtocolLoadStartFromCsvImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolLoadStartFromCsvImpl>
    implements _$$ProtocolLoadStartFromCsvImplCopyWith<$Res> {
  __$$ProtocolLoadStartFromCsvImplCopyWithImpl(
      _$ProtocolLoadStartFromCsvImpl _value,
      $Res Function(_$ProtocolLoadStartFromCsvImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? csv = freezed,
  }) {
    return _then(_$ProtocolLoadStartFromCsvImpl(
      csv: freezed == csv
          ? _value.csv
          : csv // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ));
  }
}

/// @nodoc

class _$ProtocolLoadStartFromCsvImpl implements ProtocolLoadStartFromCsv {
  const _$ProtocolLoadStartFromCsvImpl({this.csv});

  @override
  final PlatformFile? csv;

  @override
  String toString() {
    return 'ProtocolEvent.loadStartFromCsv(csv: $csv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolLoadStartFromCsvImpl &&
            (identical(other.csv, csv) || other.csv == csv));
  }

  @override
  int get hashCode => Object.hash(runtimeType, csv);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolLoadStartFromCsvImplCopyWith<_$ProtocolLoadStartFromCsvImpl>
      get copyWith => __$$ProtocolLoadStartFromCsvImplCopyWithImpl<
          _$ProtocolLoadStartFromCsvImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return loadStartFromCsv(csv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return loadStartFromCsv?.call(csv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (loadStartFromCsv != null) {
      return loadStartFromCsv(csv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return loadStartFromCsv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return loadStartFromCsv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (loadStartFromCsv != null) {
      return loadStartFromCsv(this);
    }
    return orElse();
  }
}

abstract class ProtocolLoadStartFromCsv implements ProtocolEvent {
  const factory ProtocolLoadStartFromCsv({final PlatformFile? csv}) =
      _$ProtocolLoadStartFromCsvImpl;

  PlatformFile? get csv;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolLoadStartFromCsvImplCopyWith<_$ProtocolLoadStartFromCsvImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolShareStartImplCopyWith<$Res> {
  factory _$$ProtocolShareStartImplCopyWith(_$ProtocolShareStartImpl value,
          $Res Function(_$ProtocolShareStartImpl) then) =
      __$$ProtocolShareStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolShareStartImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolShareStartImpl>
    implements _$$ProtocolShareStartImplCopyWith<$Res> {
  __$$ProtocolShareStartImplCopyWithImpl(_$ProtocolShareStartImpl _value,
      $Res Function(_$ProtocolShareStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProtocolShareStartImpl implements ProtocolShareStart {
  const _$ProtocolShareStartImpl();

  @override
  String toString() {
    return 'ProtocolEvent.shareStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProtocolShareStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return shareStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return shareStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (shareStart != null) {
      return shareStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return shareStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return shareStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (shareStart != null) {
      return shareStart(this);
    }
    return orElse();
  }
}

abstract class ProtocolShareStart implements ProtocolEvent {
  const factory ProtocolShareStart() = _$ProtocolShareStartImpl;
}

/// @nodoc
abstract class _$$ProtocolShareFinishImplCopyWith<$Res> {
  factory _$$ProtocolShareFinishImplCopyWith(_$ProtocolShareFinishImpl value,
          $Res Function(_$ProtocolShareFinishImpl) then) =
      __$$ProtocolShareFinishImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolShareFinishImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res, _$ProtocolShareFinishImpl>
    implements _$$ProtocolShareFinishImplCopyWith<$Res> {
  __$$ProtocolShareFinishImplCopyWithImpl(_$ProtocolShareFinishImpl _value,
      $Res Function(_$ProtocolShareFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProtocolShareFinishImpl implements ProtocolShareFinish {
  const _$ProtocolShareFinishImpl();

  @override
  String toString() {
    return 'ProtocolEvent.shareFinish()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolShareFinishImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return shareFinish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return shareFinish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (shareFinish != null) {
      return shareFinish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return shareFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return shareFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (shareFinish != null) {
      return shareFinish(this);
    }
    return orElse();
  }
}

abstract class ProtocolShareFinish implements ProtocolEvent {
  const factory ProtocolShareFinish() = _$ProtocolShareFinishImpl;
}

/// @nodoc
abstract class _$$ProtocolSelectAwaitingNumberImplCopyWith<$Res> {
  factory _$$ProtocolSelectAwaitingNumberImplCopyWith(
          _$ProtocolSelectAwaitingNumberImpl value,
          $Res Function(_$ProtocolSelectAwaitingNumberImpl) then) =
      __$$ProtocolSelectAwaitingNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$ProtocolSelectAwaitingNumberImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res,
        _$ProtocolSelectAwaitingNumberImpl>
    implements _$$ProtocolSelectAwaitingNumberImplCopyWith<$Res> {
  __$$ProtocolSelectAwaitingNumberImplCopyWithImpl(
      _$ProtocolSelectAwaitingNumberImpl _value,
      $Res Function(_$ProtocolSelectAwaitingNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$ProtocolSelectAwaitingNumberImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProtocolSelectAwaitingNumberImpl
    implements ProtocolSelectAwaitingNumber {
  const _$ProtocolSelectAwaitingNumberImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'ProtocolEvent.selectAwaitingNumber(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolSelectAwaitingNumberImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolSelectAwaitingNumberImplCopyWith<
          _$ProtocolSelectAwaitingNumberImpl>
      get copyWith => __$$ProtocolSelectAwaitingNumberImplCopyWithImpl<
          _$ProtocolSelectAwaitingNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return selectAwaitingNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return selectAwaitingNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (selectAwaitingNumber != null) {
      return selectAwaitingNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return selectAwaitingNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return selectAwaitingNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (selectAwaitingNumber != null) {
      return selectAwaitingNumber(this);
    }
    return orElse();
  }
}

abstract class ProtocolSelectAwaitingNumber implements ProtocolEvent {
  const factory ProtocolSelectAwaitingNumber({required final int number}) =
      _$ProtocolSelectAwaitingNumberImpl;

  int get number;

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolSelectAwaitingNumberImplCopyWith<
          _$ProtocolSelectAwaitingNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolDeselectAwaitingNumberImplCopyWith<$Res> {
  factory _$$ProtocolDeselectAwaitingNumberImplCopyWith(
          _$ProtocolDeselectAwaitingNumberImpl value,
          $Res Function(_$ProtocolDeselectAwaitingNumberImpl) then) =
      __$$ProtocolDeselectAwaitingNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolDeselectAwaitingNumberImplCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res,
        _$ProtocolDeselectAwaitingNumberImpl>
    implements _$$ProtocolDeselectAwaitingNumberImplCopyWith<$Res> {
  __$$ProtocolDeselectAwaitingNumberImplCopyWithImpl(
      _$ProtocolDeselectAwaitingNumberImpl _value,
      $Res Function(_$ProtocolDeselectAwaitingNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProtocolDeselectAwaitingNumberImpl
    implements ProtocolDeselectAwaitingNumber {
  const _$ProtocolDeselectAwaitingNumberImpl();

  @override
  String toString() {
    return 'ProtocolEvent.deselectAwaitingNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolDeselectAwaitingNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? file, PlatformFile? csv) select,
    required TResult Function() deselect,
    required TResult Function(StartTime startTime, bool forceAdd)
        addStartNumber,
    required TResult Function(AutomaticStart automaticStart, bool forceUpdate)
        updateAutomaticCorrection,
    required TResult Function(DateTime time) updateManualStartTime,
    required TResult Function(String time, DateTime timeStamp) addFinishTime,
    required TResult Function(String time) addFinishTimeManual,
    required TResult Function(StartItem item) updateItemInfoAtStart,
    required TResult Function() clearStartResultsDebug,
    required TResult Function() clearFinishResultsDebug,
    required TResult Function() hideAllFinishResults,
    required TResult Function(int number) clearNumberAtFinish,
    required TResult Function(int number) setDNS,
    required TResult Function(int number) setDNF,
    required TResult Function(int id) hideFinishTime,
    required TResult Function(int id, int number, String finishTime)
        setNumberToFinishTime,
    required TResult Function() getNumbersOnTrace,
    required TResult Function(PlatformFile? csv) loadStartFromCsv,
    required TResult Function() shareStart,
    required TResult Function() shareFinish,
    required TResult Function(int number) selectAwaitingNumber,
    required TResult Function() deselectAwaitingNumber,
  }) {
    return deselectAwaitingNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? file, PlatformFile? csv)? select,
    TResult? Function()? deselect,
    TResult? Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult? Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult? Function(DateTime time)? updateManualStartTime,
    TResult? Function(String time, DateTime timeStamp)? addFinishTime,
    TResult? Function(String time)? addFinishTimeManual,
    TResult? Function(StartItem item)? updateItemInfoAtStart,
    TResult? Function()? clearStartResultsDebug,
    TResult? Function()? clearFinishResultsDebug,
    TResult? Function()? hideAllFinishResults,
    TResult? Function(int number)? clearNumberAtFinish,
    TResult? Function(int number)? setDNS,
    TResult? Function(int number)? setDNF,
    TResult? Function(int id)? hideFinishTime,
    TResult? Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult? Function()? getNumbersOnTrace,
    TResult? Function(PlatformFile? csv)? loadStartFromCsv,
    TResult? Function()? shareStart,
    TResult? Function()? shareFinish,
    TResult? Function(int number)? selectAwaitingNumber,
    TResult? Function()? deselectAwaitingNumber,
  }) {
    return deselectAwaitingNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? file, PlatformFile? csv)? select,
    TResult Function()? deselect,
    TResult Function(StartTime startTime, bool forceAdd)? addStartNumber,
    TResult Function(AutomaticStart automaticStart, bool forceUpdate)?
        updateAutomaticCorrection,
    TResult Function(DateTime time)? updateManualStartTime,
    TResult Function(String time, DateTime timeStamp)? addFinishTime,
    TResult Function(String time)? addFinishTimeManual,
    TResult Function(StartItem item)? updateItemInfoAtStart,
    TResult Function()? clearStartResultsDebug,
    TResult Function()? clearFinishResultsDebug,
    TResult Function()? hideAllFinishResults,
    TResult Function(int number)? clearNumberAtFinish,
    TResult Function(int number)? setDNS,
    TResult Function(int number)? setDNF,
    TResult Function(int id)? hideFinishTime,
    TResult Function(int id, int number, String finishTime)?
        setNumberToFinishTime,
    TResult Function()? getNumbersOnTrace,
    TResult Function(PlatformFile? csv)? loadStartFromCsv,
    TResult Function()? shareStart,
    TResult Function()? shareFinish,
    TResult Function(int number)? selectAwaitingNumber,
    TResult Function()? deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (deselectAwaitingNumber != null) {
      return deselectAwaitingNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectProtocol value) select,
    required TResult Function(DeselectProtocol value) deselect,
    required TResult Function(ProtocolAddStartNumber value) addStartNumber,
    required TResult Function(ProtocolUpdateAutomaticCorrection value)
        updateAutomaticCorrection,
    required TResult Function(ProtocolUpdateManualStartTime value)
        updateManualStartTime,
    required TResult Function(ProtocolAddFinishTime value) addFinishTime,
    required TResult Function(ProtocolAddFinishTimeManual value)
        addFinishTimeManual,
    required TResult Function(ProtocolUpdateItemInfoAtStart value)
        updateItemInfoAtStart,
    required TResult Function(ProtocolClearStartResultsDebug value)
        clearStartResultsDebug,
    required TResult Function(ProtocolClearFinishResultsDebug value)
        clearFinishResultsDebug,
    required TResult Function(ProtocolHideAllFinishResults value)
        hideAllFinishResults,
    required TResult Function(ProtocolClearNumberAtFinish value)
        clearNumberAtFinish,
    required TResult Function(ProtocolSetDNS value) setDNS,
    required TResult Function(ProtocolSetDNF value) setDNF,
    required TResult Function(ProtocolHideFinishTime value) hideFinishTime,
    required TResult Function(ProtocolSetNumberToFinishTime value)
        setNumberToFinishTime,
    required TResult Function(ProtocolGetNumbersOnTrace value)
        getNumbersOnTrace,
    required TResult Function(ProtocolLoadStartFromCsv value) loadStartFromCsv,
    required TResult Function(ProtocolShareStart value) shareStart,
    required TResult Function(ProtocolShareFinish value) shareFinish,
    required TResult Function(ProtocolSelectAwaitingNumber value)
        selectAwaitingNumber,
    required TResult Function(ProtocolDeselectAwaitingNumber value)
        deselectAwaitingNumber,
  }) {
    return deselectAwaitingNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectProtocol value)? select,
    TResult? Function(DeselectProtocol value)? deselect,
    TResult? Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult? Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult? Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult? Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult? Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult? Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult? Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult? Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult? Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult? Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult? Function(ProtocolSetDNS value)? setDNS,
    TResult? Function(ProtocolSetDNF value)? setDNF,
    TResult? Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult? Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult? Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult? Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult? Function(ProtocolShareStart value)? shareStart,
    TResult? Function(ProtocolShareFinish value)? shareFinish,
    TResult? Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult? Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
  }) {
    return deselectAwaitingNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectProtocol value)? select,
    TResult Function(DeselectProtocol value)? deselect,
    TResult Function(ProtocolAddStartNumber value)? addStartNumber,
    TResult Function(ProtocolUpdateAutomaticCorrection value)?
        updateAutomaticCorrection,
    TResult Function(ProtocolUpdateManualStartTime value)?
        updateManualStartTime,
    TResult Function(ProtocolAddFinishTime value)? addFinishTime,
    TResult Function(ProtocolAddFinishTimeManual value)? addFinishTimeManual,
    TResult Function(ProtocolUpdateItemInfoAtStart value)?
        updateItemInfoAtStart,
    TResult Function(ProtocolClearStartResultsDebug value)?
        clearStartResultsDebug,
    TResult Function(ProtocolClearFinishResultsDebug value)?
        clearFinishResultsDebug,
    TResult Function(ProtocolHideAllFinishResults value)? hideAllFinishResults,
    TResult Function(ProtocolClearNumberAtFinish value)? clearNumberAtFinish,
    TResult Function(ProtocolSetDNS value)? setDNS,
    TResult Function(ProtocolSetDNF value)? setDNF,
    TResult Function(ProtocolHideFinishTime value)? hideFinishTime,
    TResult Function(ProtocolSetNumberToFinishTime value)?
        setNumberToFinishTime,
    TResult Function(ProtocolGetNumbersOnTrace value)? getNumbersOnTrace,
    TResult Function(ProtocolLoadStartFromCsv value)? loadStartFromCsv,
    TResult Function(ProtocolShareStart value)? shareStart,
    TResult Function(ProtocolShareFinish value)? shareFinish,
    TResult Function(ProtocolSelectAwaitingNumber value)? selectAwaitingNumber,
    TResult Function(ProtocolDeselectAwaitingNumber value)?
        deselectAwaitingNumber,
    required TResult orElse(),
  }) {
    if (deselectAwaitingNumber != null) {
      return deselectAwaitingNumber(this);
    }
    return orElse();
  }
}

abstract class ProtocolDeselectAwaitingNumber implements ProtocolEvent {
  const factory ProtocolDeselectAwaitingNumber() =
      _$ProtocolDeselectAwaitingNumberImpl;
}

/// @nodoc
mixin _$ProtocolState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSelected,
    required TResult Function(
            List<StartItem> startProtocol,
            List<FinishItem> finishProtocol,
            List<StartItem> numbersOnTraceProtocol,
            String databasePath,
            bool? updateFinishNumber,
            AutomaticStart? automaticStart,
            List<StartItem>? previousStart,
            StartTime? startTime,
            int? autoFinishNumber,
            int? awaitingNumber)
        selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notSelected,
    TResult? Function(
            List<StartItem> startProtocol,
            List<FinishItem> finishProtocol,
            List<StartItem> numbersOnTraceProtocol,
            String databasePath,
            bool? updateFinishNumber,
            AutomaticStart? automaticStart,
            List<StartItem>? previousStart,
            StartTime? startTime,
            int? autoFinishNumber,
            int? awaitingNumber)?
        selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function(
            List<StartItem> startProtocol,
            List<FinishItem> finishProtocol,
            List<StartItem> numbersOnTraceProtocol,
            String databasePath,
            bool? updateFinishNumber,
            AutomaticStart? automaticStart,
            List<StartItem>? previousStart,
            StartTime? startTime,
            int? autoFinishNumber,
            int? awaitingNumber)?
        selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProtocolNotSelectedState value) notSelected,
    required TResult Function(ProtocolSelectedState value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProtocolNotSelectedState value)? notSelected,
    TResult? Function(ProtocolSelectedState value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProtocolNotSelectedState value)? notSelected,
    TResult Function(ProtocolSelectedState value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtocolStateCopyWith<$Res> {
  factory $ProtocolStateCopyWith(
          ProtocolState value, $Res Function(ProtocolState) then) =
      _$ProtocolStateCopyWithImpl<$Res, ProtocolState>;
}

/// @nodoc
class _$ProtocolStateCopyWithImpl<$Res, $Val extends ProtocolState>
    implements $ProtocolStateCopyWith<$Res> {
  _$ProtocolStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProtocolState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProtocolNotSelectedStateImplCopyWith<$Res> {
  factory _$$ProtocolNotSelectedStateImplCopyWith(
          _$ProtocolNotSelectedStateImpl value,
          $Res Function(_$ProtocolNotSelectedStateImpl) then) =
      __$$ProtocolNotSelectedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolNotSelectedStateImplCopyWithImpl<$Res>
    extends _$ProtocolStateCopyWithImpl<$Res, _$ProtocolNotSelectedStateImpl>
    implements _$$ProtocolNotSelectedStateImplCopyWith<$Res> {
  __$$ProtocolNotSelectedStateImplCopyWithImpl(
      _$ProtocolNotSelectedStateImpl _value,
      $Res Function(_$ProtocolNotSelectedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProtocolNotSelectedStateImpl implements ProtocolNotSelectedState {
  const _$ProtocolNotSelectedStateImpl();

  @override
  String toString() {
    return 'ProtocolState.notSelected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolNotSelectedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSelected,
    required TResult Function(
            List<StartItem> startProtocol,
            List<FinishItem> finishProtocol,
            List<StartItem> numbersOnTraceProtocol,
            String databasePath,
            bool? updateFinishNumber,
            AutomaticStart? automaticStart,
            List<StartItem>? previousStart,
            StartTime? startTime,
            int? autoFinishNumber,
            int? awaitingNumber)
        selected,
  }) {
    return notSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notSelected,
    TResult? Function(
            List<StartItem> startProtocol,
            List<FinishItem> finishProtocol,
            List<StartItem> numbersOnTraceProtocol,
            String databasePath,
            bool? updateFinishNumber,
            AutomaticStart? automaticStart,
            List<StartItem>? previousStart,
            StartTime? startTime,
            int? autoFinishNumber,
            int? awaitingNumber)?
        selected,
  }) {
    return notSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function(
            List<StartItem> startProtocol,
            List<FinishItem> finishProtocol,
            List<StartItem> numbersOnTraceProtocol,
            String databasePath,
            bool? updateFinishNumber,
            AutomaticStart? automaticStart,
            List<StartItem>? previousStart,
            StartTime? startTime,
            int? autoFinishNumber,
            int? awaitingNumber)?
        selected,
    required TResult orElse(),
  }) {
    if (notSelected != null) {
      return notSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProtocolNotSelectedState value) notSelected,
    required TResult Function(ProtocolSelectedState value) selected,
  }) {
    return notSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProtocolNotSelectedState value)? notSelected,
    TResult? Function(ProtocolSelectedState value)? selected,
  }) {
    return notSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProtocolNotSelectedState value)? notSelected,
    TResult Function(ProtocolSelectedState value)? selected,
    required TResult orElse(),
  }) {
    if (notSelected != null) {
      return notSelected(this);
    }
    return orElse();
  }
}

abstract class ProtocolNotSelectedState implements ProtocolState {
  const factory ProtocolNotSelectedState() = _$ProtocolNotSelectedStateImpl;
}

/// @nodoc
abstract class _$$ProtocolSelectedStateImplCopyWith<$Res> {
  factory _$$ProtocolSelectedStateImplCopyWith(
          _$ProtocolSelectedStateImpl value,
          $Res Function(_$ProtocolSelectedStateImpl) then) =
      __$$ProtocolSelectedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<StartItem> startProtocol,
      List<FinishItem> finishProtocol,
      List<StartItem> numbersOnTraceProtocol,
      String databasePath,
      bool? updateFinishNumber,
      AutomaticStart? automaticStart,
      List<StartItem>? previousStart,
      StartTime? startTime,
      int? autoFinishNumber,
      int? awaitingNumber});

  $AutomaticStartCopyWith<$Res>? get automaticStart;
  $StartTimeCopyWith<$Res>? get startTime;
}

/// @nodoc
class __$$ProtocolSelectedStateImplCopyWithImpl<$Res>
    extends _$ProtocolStateCopyWithImpl<$Res, _$ProtocolSelectedStateImpl>
    implements _$$ProtocolSelectedStateImplCopyWith<$Res> {
  __$$ProtocolSelectedStateImplCopyWithImpl(_$ProtocolSelectedStateImpl _value,
      $Res Function(_$ProtocolSelectedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtocolState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startProtocol = null,
    Object? finishProtocol = null,
    Object? numbersOnTraceProtocol = null,
    Object? databasePath = null,
    Object? updateFinishNumber = freezed,
    Object? automaticStart = freezed,
    Object? previousStart = freezed,
    Object? startTime = freezed,
    Object? autoFinishNumber = freezed,
    Object? awaitingNumber = freezed,
  }) {
    return _then(_$ProtocolSelectedStateImpl(
      startProtocol: null == startProtocol
          ? _value._startProtocol
          : startProtocol // ignore: cast_nullable_to_non_nullable
              as List<StartItem>,
      finishProtocol: null == finishProtocol
          ? _value._finishProtocol
          : finishProtocol // ignore: cast_nullable_to_non_nullable
              as List<FinishItem>,
      numbersOnTraceProtocol: null == numbersOnTraceProtocol
          ? _value._numbersOnTraceProtocol
          : numbersOnTraceProtocol // ignore: cast_nullable_to_non_nullable
              as List<StartItem>,
      databasePath: null == databasePath
          ? _value.databasePath
          : databasePath // ignore: cast_nullable_to_non_nullable
              as String,
      updateFinishNumber: freezed == updateFinishNumber
          ? _value.updateFinishNumber
          : updateFinishNumber // ignore: cast_nullable_to_non_nullable
              as bool?,
      automaticStart: freezed == automaticStart
          ? _value.automaticStart
          : automaticStart // ignore: cast_nullable_to_non_nullable
              as AutomaticStart?,
      previousStart: freezed == previousStart
          ? _value._previousStart
          : previousStart // ignore: cast_nullable_to_non_nullable
              as List<StartItem>?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as StartTime?,
      autoFinishNumber: freezed == autoFinishNumber
          ? _value.autoFinishNumber
          : autoFinishNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      awaitingNumber: freezed == awaitingNumber
          ? _value.awaitingNumber
          : awaitingNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of ProtocolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutomaticStartCopyWith<$Res>? get automaticStart {
    if (_value.automaticStart == null) {
      return null;
    }

    return $AutomaticStartCopyWith<$Res>(_value.automaticStart!, (value) {
      return _then(_value.copyWith(automaticStart: value));
    });
  }

  /// Create a copy of ProtocolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StartTimeCopyWith<$Res>? get startTime {
    if (_value.startTime == null) {
      return null;
    }

    return $StartTimeCopyWith<$Res>(_value.startTime!, (value) {
      return _then(_value.copyWith(startTime: value));
    });
  }
}

/// @nodoc

class _$ProtocolSelectedStateImpl implements ProtocolSelectedState {
  const _$ProtocolSelectedStateImpl(
      {required final List<StartItem> startProtocol,
      required final List<FinishItem> finishProtocol,
      required final List<StartItem> numbersOnTraceProtocol,
      required this.databasePath,
      this.updateFinishNumber,
      this.automaticStart,
      final List<StartItem>? previousStart,
      this.startTime,
      this.autoFinishNumber,
      required this.awaitingNumber})
      : _startProtocol = startProtocol,
        _finishProtocol = finishProtocol,
        _numbersOnTraceProtocol = numbersOnTraceProtocol,
        _previousStart = previousStart;

  final List<StartItem> _startProtocol;
  @override
  List<StartItem> get startProtocol {
    if (_startProtocol is EqualUnmodifiableListView) return _startProtocol;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_startProtocol);
  }

  final List<FinishItem> _finishProtocol;
  @override
  List<FinishItem> get finishProtocol {
    if (_finishProtocol is EqualUnmodifiableListView) return _finishProtocol;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_finishProtocol);
  }

  final List<StartItem> _numbersOnTraceProtocol;
  @override
  List<StartItem> get numbersOnTraceProtocol {
    if (_numbersOnTraceProtocol is EqualUnmodifiableListView)
      return _numbersOnTraceProtocol;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numbersOnTraceProtocol);
  }

  @override
  final String databasePath;
// Изменить время финиша для номера
  @override
  final bool? updateFinishNumber;
// Автоматический старт из стартового модуля
// Служит для проверки, установлено ли уже стартовое время или нет
  @override
  final AutomaticStart? automaticStart;
// Предыдущее стартовое время номера, которому предлагается
// поставить новое. Запоминаем для передачи его в UI popup.
// Используется два раза, и при установке автоматического стартового времени
// и при ручном вводе нового времени старта
  final List<StartItem>? _previousStart;
// Предыдущее стартовое время номера, которому предлагается
// поставить новое. Запоминаем для передачи его в UI popup.
// Используется два раза, и при установке автоматического стартового времени
// и при ручном вводе нового времени старта
  @override
  List<StartItem>? get previousStart {
    final value = _previousStart;
    if (value == null) return null;
    if (_previousStart is EqualUnmodifiableListView) return _previousStart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Стартовое время и номер, которые хотим установить
  @override
  final StartTime? startTime;
// Автоматически подставленный в финишное время номер
  @override
  final int? autoFinishNumber;
// Номер, который будет автоматически подставлен в следующую автоматическую отсечку
  @override
  final int? awaitingNumber;

  @override
  String toString() {
    return 'ProtocolState.selected(startProtocol: $startProtocol, finishProtocol: $finishProtocol, numbersOnTraceProtocol: $numbersOnTraceProtocol, databasePath: $databasePath, updateFinishNumber: $updateFinishNumber, automaticStart: $automaticStart, previousStart: $previousStart, startTime: $startTime, autoFinishNumber: $autoFinishNumber, awaitingNumber: $awaitingNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolSelectedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._startProtocol, _startProtocol) &&
            const DeepCollectionEquality()
                .equals(other._finishProtocol, _finishProtocol) &&
            const DeepCollectionEquality().equals(
                other._numbersOnTraceProtocol, _numbersOnTraceProtocol) &&
            (identical(other.databasePath, databasePath) ||
                other.databasePath == databasePath) &&
            (identical(other.updateFinishNumber, updateFinishNumber) ||
                other.updateFinishNumber == updateFinishNumber) &&
            (identical(other.automaticStart, automaticStart) ||
                other.automaticStart == automaticStart) &&
            const DeepCollectionEquality()
                .equals(other._previousStart, _previousStart) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.autoFinishNumber, autoFinishNumber) ||
                other.autoFinishNumber == autoFinishNumber) &&
            (identical(other.awaitingNumber, awaitingNumber) ||
                other.awaitingNumber == awaitingNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_startProtocol),
      const DeepCollectionEquality().hash(_finishProtocol),
      const DeepCollectionEquality().hash(_numbersOnTraceProtocol),
      databasePath,
      updateFinishNumber,
      automaticStart,
      const DeepCollectionEquality().hash(_previousStart),
      startTime,
      autoFinishNumber,
      awaitingNumber);

  /// Create a copy of ProtocolState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtocolSelectedStateImplCopyWith<_$ProtocolSelectedStateImpl>
      get copyWith => __$$ProtocolSelectedStateImplCopyWithImpl<
          _$ProtocolSelectedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSelected,
    required TResult Function(
            List<StartItem> startProtocol,
            List<FinishItem> finishProtocol,
            List<StartItem> numbersOnTraceProtocol,
            String databasePath,
            bool? updateFinishNumber,
            AutomaticStart? automaticStart,
            List<StartItem>? previousStart,
            StartTime? startTime,
            int? autoFinishNumber,
            int? awaitingNumber)
        selected,
  }) {
    return selected(
        startProtocol,
        finishProtocol,
        numbersOnTraceProtocol,
        databasePath,
        updateFinishNumber,
        automaticStart,
        previousStart,
        startTime,
        autoFinishNumber,
        awaitingNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notSelected,
    TResult? Function(
            List<StartItem> startProtocol,
            List<FinishItem> finishProtocol,
            List<StartItem> numbersOnTraceProtocol,
            String databasePath,
            bool? updateFinishNumber,
            AutomaticStart? automaticStart,
            List<StartItem>? previousStart,
            StartTime? startTime,
            int? autoFinishNumber,
            int? awaitingNumber)?
        selected,
  }) {
    return selected?.call(
        startProtocol,
        finishProtocol,
        numbersOnTraceProtocol,
        databasePath,
        updateFinishNumber,
        automaticStart,
        previousStart,
        startTime,
        autoFinishNumber,
        awaitingNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function(
            List<StartItem> startProtocol,
            List<FinishItem> finishProtocol,
            List<StartItem> numbersOnTraceProtocol,
            String databasePath,
            bool? updateFinishNumber,
            AutomaticStart? automaticStart,
            List<StartItem>? previousStart,
            StartTime? startTime,
            int? autoFinishNumber,
            int? awaitingNumber)?
        selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(
          startProtocol,
          finishProtocol,
          numbersOnTraceProtocol,
          databasePath,
          updateFinishNumber,
          automaticStart,
          previousStart,
          startTime,
          autoFinishNumber,
          awaitingNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProtocolNotSelectedState value) notSelected,
    required TResult Function(ProtocolSelectedState value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProtocolNotSelectedState value)? notSelected,
    TResult? Function(ProtocolSelectedState value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProtocolNotSelectedState value)? notSelected,
    TResult Function(ProtocolSelectedState value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class ProtocolSelectedState implements ProtocolState {
  const factory ProtocolSelectedState(
      {required final List<StartItem> startProtocol,
      required final List<FinishItem> finishProtocol,
      required final List<StartItem> numbersOnTraceProtocol,
      required final String databasePath,
      final bool? updateFinishNumber,
      final AutomaticStart? automaticStart,
      final List<StartItem>? previousStart,
      final StartTime? startTime,
      final int? autoFinishNumber,
      required final int? awaitingNumber}) = _$ProtocolSelectedStateImpl;

  List<StartItem> get startProtocol;
  List<FinishItem> get finishProtocol;
  List<StartItem> get numbersOnTraceProtocol;
  String get databasePath; // Изменить время финиша для номера
  bool? get updateFinishNumber; // Автоматический старт из стартового модуля
// Служит для проверки, установлено ли уже стартовое время или нет
  AutomaticStart?
      get automaticStart; // Предыдущее стартовое время номера, которому предлагается
// поставить новое. Запоминаем для передачи его в UI popup.
// Используется два раза, и при установке автоматического стартового времени
// и при ручном вводе нового времени старта
  List<StartItem>?
      get previousStart; // Стартовое время и номер, которые хотим установить
  StartTime?
      get startTime; // Автоматически подставленный в финишное время номер
  int?
      get autoFinishNumber; // Номер, который будет автоматически подставлен в следующую автоматическую отсечку
  int? get awaitingNumber;

  /// Create a copy of ProtocolState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtocolSelectedStateImplCopyWith<_$ProtocolSelectedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
