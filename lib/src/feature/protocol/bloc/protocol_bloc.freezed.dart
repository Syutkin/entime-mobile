// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'protocol_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$ProtocolEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProtocolEventCopyWithImpl<$Res>
    implements $ProtocolEventCopyWith<$Res> {
  _$ProtocolEventCopyWithImpl(this._value, this._then);

  final ProtocolEvent _value;
  // ignore: unused_field
  final $Res Function(ProtocolEvent) _then;
}

/// @nodoc
abstract class _$$SelectProtocolCopyWith<$Res> {
  factory _$$SelectProtocolCopyWith(
          _$SelectProtocol value, $Res Function(_$SelectProtocol) then) =
      __$$SelectProtocolCopyWithImpl<$Res>;
  $Res call({String? file, PlatformFile? csv});
}

/// @nodoc
class __$$SelectProtocolCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$SelectProtocolCopyWith<$Res> {
  __$$SelectProtocolCopyWithImpl(
      _$SelectProtocol _value, $Res Function(_$SelectProtocol) _then)
      : super(_value, (v) => _then(v as _$SelectProtocol));

  @override
  _$SelectProtocol get _value => super._value as _$SelectProtocol;

  @override
  $Res call({
    Object? file = freezed,
    Object? csv = freezed,
  }) {
    return _then(_$SelectProtocol(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      csv: csv == freezed
          ? _value.csv
          : csv // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ));
  }
}

/// @nodoc

class _$SelectProtocol implements SelectProtocol {
  const _$SelectProtocol({this.file, this.csv});

  @override
  final String? file;
  @override
  final PlatformFile? csv;

  @override
  String toString() {
    return 'ProtocolEvent.select(file: $file, csv: $csv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectProtocol &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.csv, csv));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(csv));

  @JsonKey(ignore: true)
  @override
  _$$SelectProtocolCopyWith<_$SelectProtocol> get copyWith =>
      __$$SelectProtocolCopyWithImpl<_$SelectProtocol>(this, _$identity);

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
      _$SelectProtocol;

  String? get file;
  PlatformFile? get csv;
  @JsonKey(ignore: true)
  _$$SelectProtocolCopyWith<_$SelectProtocol> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeselectProtocolCopyWith<$Res> {
  factory _$$DeselectProtocolCopyWith(
          _$DeselectProtocol value, $Res Function(_$DeselectProtocol) then) =
      __$$DeselectProtocolCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeselectProtocolCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$DeselectProtocolCopyWith<$Res> {
  __$$DeselectProtocolCopyWithImpl(
      _$DeselectProtocol _value, $Res Function(_$DeselectProtocol) _then)
      : super(_value, (v) => _then(v as _$DeselectProtocol));

  @override
  _$DeselectProtocol get _value => super._value as _$DeselectProtocol;
}

/// @nodoc

class _$DeselectProtocol implements DeselectProtocol {
  const _$DeselectProtocol();

  @override
  String toString() {
    return 'ProtocolEvent.deselect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeselectProtocol);
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
  const factory DeselectProtocol() = _$DeselectProtocol;
}

/// @nodoc
abstract class _$$ProtocolAddStartNumberCopyWith<$Res> {
  factory _$$ProtocolAddStartNumberCopyWith(_$ProtocolAddStartNumber value,
          $Res Function(_$ProtocolAddStartNumber) then) =
      __$$ProtocolAddStartNumberCopyWithImpl<$Res>;
  $Res call({StartTime startTime, bool forceAdd});

  $StartTimeCopyWith<$Res> get startTime;
}

/// @nodoc
class __$$ProtocolAddStartNumberCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolAddStartNumberCopyWith<$Res> {
  __$$ProtocolAddStartNumberCopyWithImpl(_$ProtocolAddStartNumber _value,
      $Res Function(_$ProtocolAddStartNumber) _then)
      : super(_value, (v) => _then(v as _$ProtocolAddStartNumber));

  @override
  _$ProtocolAddStartNumber get _value =>
      super._value as _$ProtocolAddStartNumber;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? forceAdd = freezed,
  }) {
    return _then(_$ProtocolAddStartNumber(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as StartTime,
      forceAdd: forceAdd == freezed
          ? _value.forceAdd
          : forceAdd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StartTimeCopyWith<$Res> get startTime {
    return $StartTimeCopyWith<$Res>(_value.startTime, (value) {
      return _then(_value.copyWith(startTime: value));
    });
  }
}

/// @nodoc

class _$ProtocolAddStartNumber implements ProtocolAddStartNumber {
  const _$ProtocolAddStartNumber(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolAddStartNumber &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.forceAdd, forceAdd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(forceAdd));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolAddStartNumberCopyWith<_$ProtocolAddStartNumber> get copyWith =>
      __$$ProtocolAddStartNumberCopyWithImpl<_$ProtocolAddStartNumber>(
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
    return addStartNumber(startTime, forceAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
      final bool forceAdd}) = _$ProtocolAddStartNumber;

  StartTime get startTime;
  bool get forceAdd;
  @JsonKey(ignore: true)
  _$$ProtocolAddStartNumberCopyWith<_$ProtocolAddStartNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolUpdateAutomaticCorrectionCopyWith<$Res> {
  factory _$$ProtocolUpdateAutomaticCorrectionCopyWith(
          _$ProtocolUpdateAutomaticCorrection value,
          $Res Function(_$ProtocolUpdateAutomaticCorrection) then) =
      __$$ProtocolUpdateAutomaticCorrectionCopyWithImpl<$Res>;
  $Res call({AutomaticStart automaticStart, bool forceUpdate});

  $AutomaticStartCopyWith<$Res> get automaticStart;
}

/// @nodoc
class __$$ProtocolUpdateAutomaticCorrectionCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolUpdateAutomaticCorrectionCopyWith<$Res> {
  __$$ProtocolUpdateAutomaticCorrectionCopyWithImpl(
      _$ProtocolUpdateAutomaticCorrection _value,
      $Res Function(_$ProtocolUpdateAutomaticCorrection) _then)
      : super(_value, (v) => _then(v as _$ProtocolUpdateAutomaticCorrection));

  @override
  _$ProtocolUpdateAutomaticCorrection get _value =>
      super._value as _$ProtocolUpdateAutomaticCorrection;

  @override
  $Res call({
    Object? automaticStart = freezed,
    Object? forceUpdate = freezed,
  }) {
    return _then(_$ProtocolUpdateAutomaticCorrection(
      automaticStart: automaticStart == freezed
          ? _value.automaticStart
          : automaticStart // ignore: cast_nullable_to_non_nullable
              as AutomaticStart,
      forceUpdate: forceUpdate == freezed
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AutomaticStartCopyWith<$Res> get automaticStart {
    return $AutomaticStartCopyWith<$Res>(_value.automaticStart, (value) {
      return _then(_value.copyWith(automaticStart: value));
    });
  }
}

/// @nodoc

class _$ProtocolUpdateAutomaticCorrection
    implements ProtocolUpdateAutomaticCorrection {
  const _$ProtocolUpdateAutomaticCorrection(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolUpdateAutomaticCorrection &&
            const DeepCollectionEquality()
                .equals(other.automaticStart, automaticStart) &&
            const DeepCollectionEquality()
                .equals(other.forceUpdate, forceUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(automaticStart),
      const DeepCollectionEquality().hash(forceUpdate));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolUpdateAutomaticCorrectionCopyWith<
          _$ProtocolUpdateAutomaticCorrection>
      get copyWith => __$$ProtocolUpdateAutomaticCorrectionCopyWithImpl<
          _$ProtocolUpdateAutomaticCorrection>(this, _$identity);

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
      final bool forceUpdate}) = _$ProtocolUpdateAutomaticCorrection;

  AutomaticStart get automaticStart;
  bool get forceUpdate;
  @JsonKey(ignore: true)
  _$$ProtocolUpdateAutomaticCorrectionCopyWith<
          _$ProtocolUpdateAutomaticCorrection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolUpdateManualStartTimeCopyWith<$Res> {
  factory _$$ProtocolUpdateManualStartTimeCopyWith(
          _$ProtocolUpdateManualStartTime value,
          $Res Function(_$ProtocolUpdateManualStartTime) then) =
      __$$ProtocolUpdateManualStartTimeCopyWithImpl<$Res>;
  $Res call({DateTime time});
}

/// @nodoc
class __$$ProtocolUpdateManualStartTimeCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolUpdateManualStartTimeCopyWith<$Res> {
  __$$ProtocolUpdateManualStartTimeCopyWithImpl(
      _$ProtocolUpdateManualStartTime _value,
      $Res Function(_$ProtocolUpdateManualStartTime) _then)
      : super(_value, (v) => _then(v as _$ProtocolUpdateManualStartTime));

  @override
  _$ProtocolUpdateManualStartTime get _value =>
      super._value as _$ProtocolUpdateManualStartTime;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$ProtocolUpdateManualStartTime(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ProtocolUpdateManualStartTime implements ProtocolUpdateManualStartTime {
  const _$ProtocolUpdateManualStartTime({required this.time});

  @override
  final DateTime time;

  @override
  String toString() {
    return 'ProtocolEvent.updateManualStartTime(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolUpdateManualStartTime &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolUpdateManualStartTimeCopyWith<_$ProtocolUpdateManualStartTime>
      get copyWith => __$$ProtocolUpdateManualStartTimeCopyWithImpl<
          _$ProtocolUpdateManualStartTime>(this, _$identity);

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
      _$ProtocolUpdateManualStartTime;

  DateTime get time;
  @JsonKey(ignore: true)
  _$$ProtocolUpdateManualStartTimeCopyWith<_$ProtocolUpdateManualStartTime>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolAddFinishTimeCopyWith<$Res> {
  factory _$$ProtocolAddFinishTimeCopyWith(_$ProtocolAddFinishTime value,
          $Res Function(_$ProtocolAddFinishTime) then) =
      __$$ProtocolAddFinishTimeCopyWithImpl<$Res>;
  $Res call({String time, DateTime timeStamp});
}

/// @nodoc
class __$$ProtocolAddFinishTimeCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolAddFinishTimeCopyWith<$Res> {
  __$$ProtocolAddFinishTimeCopyWithImpl(_$ProtocolAddFinishTime _value,
      $Res Function(_$ProtocolAddFinishTime) _then)
      : super(_value, (v) => _then(v as _$ProtocolAddFinishTime));

  @override
  _$ProtocolAddFinishTime get _value => super._value as _$ProtocolAddFinishTime;

  @override
  $Res call({
    Object? time = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$ProtocolAddFinishTime(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ProtocolAddFinishTime implements ProtocolAddFinishTime {
  const _$ProtocolAddFinishTime({required this.time, required this.timeStamp});

  @override
  final String time;
  @override
  final DateTime timeStamp;

  @override
  String toString() {
    return 'ProtocolEvent.addFinishTime(time: $time, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolAddFinishTime &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.timeStamp, timeStamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(timeStamp));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolAddFinishTimeCopyWith<_$ProtocolAddFinishTime> get copyWith =>
      __$$ProtocolAddFinishTimeCopyWithImpl<_$ProtocolAddFinishTime>(
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
    return addFinishTime(time, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
      required final DateTime timeStamp}) = _$ProtocolAddFinishTime;

  String get time;
  DateTime get timeStamp;
  @JsonKey(ignore: true)
  _$$ProtocolAddFinishTimeCopyWith<_$ProtocolAddFinishTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolAddFinishTimeManualCopyWith<$Res> {
  factory _$$ProtocolAddFinishTimeManualCopyWith(
          _$ProtocolAddFinishTimeManual value,
          $Res Function(_$ProtocolAddFinishTimeManual) then) =
      __$$ProtocolAddFinishTimeManualCopyWithImpl<$Res>;
  $Res call({String time});
}

/// @nodoc
class __$$ProtocolAddFinishTimeManualCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolAddFinishTimeManualCopyWith<$Res> {
  __$$ProtocolAddFinishTimeManualCopyWithImpl(
      _$ProtocolAddFinishTimeManual _value,
      $Res Function(_$ProtocolAddFinishTimeManual) _then)
      : super(_value, (v) => _then(v as _$ProtocolAddFinishTimeManual));

  @override
  _$ProtocolAddFinishTimeManual get _value =>
      super._value as _$ProtocolAddFinishTimeManual;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$ProtocolAddFinishTimeManual(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProtocolAddFinishTimeManual implements ProtocolAddFinishTimeManual {
  const _$ProtocolAddFinishTimeManual({required this.time});

  @override
  final String time;

  @override
  String toString() {
    return 'ProtocolEvent.addFinishTimeManual(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolAddFinishTimeManual &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolAddFinishTimeManualCopyWith<_$ProtocolAddFinishTimeManual>
      get copyWith => __$$ProtocolAddFinishTimeManualCopyWithImpl<
          _$ProtocolAddFinishTimeManual>(this, _$identity);

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
      _$ProtocolAddFinishTimeManual;

  String get time;
  @JsonKey(ignore: true)
  _$$ProtocolAddFinishTimeManualCopyWith<_$ProtocolAddFinishTimeManual>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolUpdateItemInfoAtStartCopyWith<$Res> {
  factory _$$ProtocolUpdateItemInfoAtStartCopyWith(
          _$ProtocolUpdateItemInfoAtStart value,
          $Res Function(_$ProtocolUpdateItemInfoAtStart) then) =
      __$$ProtocolUpdateItemInfoAtStartCopyWithImpl<$Res>;
  $Res call({StartItem item});

  $StartItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ProtocolUpdateItemInfoAtStartCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolUpdateItemInfoAtStartCopyWith<$Res> {
  __$$ProtocolUpdateItemInfoAtStartCopyWithImpl(
      _$ProtocolUpdateItemInfoAtStart _value,
      $Res Function(_$ProtocolUpdateItemInfoAtStart) _then)
      : super(_value, (v) => _then(v as _$ProtocolUpdateItemInfoAtStart));

  @override
  _$ProtocolUpdateItemInfoAtStart get _value =>
      super._value as _$ProtocolUpdateItemInfoAtStart;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$ProtocolUpdateItemInfoAtStart(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as StartItem,
    ));
  }

  @override
  $StartItemCopyWith<$Res> get item {
    return $StartItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$ProtocolUpdateItemInfoAtStart implements ProtocolUpdateItemInfoAtStart {
  const _$ProtocolUpdateItemInfoAtStart({required this.item});

  @override
  final StartItem item;

  @override
  String toString() {
    return 'ProtocolEvent.updateItemInfoAtStart(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolUpdateItemInfoAtStart &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolUpdateItemInfoAtStartCopyWith<_$ProtocolUpdateItemInfoAtStart>
      get copyWith => __$$ProtocolUpdateItemInfoAtStartCopyWithImpl<
          _$ProtocolUpdateItemInfoAtStart>(this, _$identity);

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
      _$ProtocolUpdateItemInfoAtStart;

  StartItem get item;
  @JsonKey(ignore: true)
  _$$ProtocolUpdateItemInfoAtStartCopyWith<_$ProtocolUpdateItemInfoAtStart>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolClearStartResultsDebugCopyWith<$Res> {
  factory _$$ProtocolClearStartResultsDebugCopyWith(
          _$ProtocolClearStartResultsDebug value,
          $Res Function(_$ProtocolClearStartResultsDebug) then) =
      __$$ProtocolClearStartResultsDebugCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolClearStartResultsDebugCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolClearStartResultsDebugCopyWith<$Res> {
  __$$ProtocolClearStartResultsDebugCopyWithImpl(
      _$ProtocolClearStartResultsDebug _value,
      $Res Function(_$ProtocolClearStartResultsDebug) _then)
      : super(_value, (v) => _then(v as _$ProtocolClearStartResultsDebug));

  @override
  _$ProtocolClearStartResultsDebug get _value =>
      super._value as _$ProtocolClearStartResultsDebug;
}

/// @nodoc

class _$ProtocolClearStartResultsDebug
    implements ProtocolClearStartResultsDebug {
  const _$ProtocolClearStartResultsDebug();

  @override
  String toString() {
    return 'ProtocolEvent.clearStartResultsDebug()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolClearStartResultsDebug);
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
      _$ProtocolClearStartResultsDebug;
}

/// @nodoc
abstract class _$$ProtocolClearFinishResultsDebugCopyWith<$Res> {
  factory _$$ProtocolClearFinishResultsDebugCopyWith(
          _$ProtocolClearFinishResultsDebug value,
          $Res Function(_$ProtocolClearFinishResultsDebug) then) =
      __$$ProtocolClearFinishResultsDebugCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolClearFinishResultsDebugCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolClearFinishResultsDebugCopyWith<$Res> {
  __$$ProtocolClearFinishResultsDebugCopyWithImpl(
      _$ProtocolClearFinishResultsDebug _value,
      $Res Function(_$ProtocolClearFinishResultsDebug) _then)
      : super(_value, (v) => _then(v as _$ProtocolClearFinishResultsDebug));

  @override
  _$ProtocolClearFinishResultsDebug get _value =>
      super._value as _$ProtocolClearFinishResultsDebug;
}

/// @nodoc

class _$ProtocolClearFinishResultsDebug
    implements ProtocolClearFinishResultsDebug {
  const _$ProtocolClearFinishResultsDebug();

  @override
  String toString() {
    return 'ProtocolEvent.clearFinishResultsDebug()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolClearFinishResultsDebug);
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
      _$ProtocolClearFinishResultsDebug;
}

/// @nodoc
abstract class _$$ProtocolHideAllFinishResultsCopyWith<$Res> {
  factory _$$ProtocolHideAllFinishResultsCopyWith(
          _$ProtocolHideAllFinishResults value,
          $Res Function(_$ProtocolHideAllFinishResults) then) =
      __$$ProtocolHideAllFinishResultsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolHideAllFinishResultsCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolHideAllFinishResultsCopyWith<$Res> {
  __$$ProtocolHideAllFinishResultsCopyWithImpl(
      _$ProtocolHideAllFinishResults _value,
      $Res Function(_$ProtocolHideAllFinishResults) _then)
      : super(_value, (v) => _then(v as _$ProtocolHideAllFinishResults));

  @override
  _$ProtocolHideAllFinishResults get _value =>
      super._value as _$ProtocolHideAllFinishResults;
}

/// @nodoc

class _$ProtocolHideAllFinishResults implements ProtocolHideAllFinishResults {
  const _$ProtocolHideAllFinishResults();

  @override
  String toString() {
    return 'ProtocolEvent.hideAllFinishResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolHideAllFinishResults);
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
  const factory ProtocolHideAllFinishResults() = _$ProtocolHideAllFinishResults;
}

/// @nodoc
abstract class _$$ProtocolClearNumberAtFinishCopyWith<$Res> {
  factory _$$ProtocolClearNumberAtFinishCopyWith(
          _$ProtocolClearNumberAtFinish value,
          $Res Function(_$ProtocolClearNumberAtFinish) then) =
      __$$ProtocolClearNumberAtFinishCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class __$$ProtocolClearNumberAtFinishCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolClearNumberAtFinishCopyWith<$Res> {
  __$$ProtocolClearNumberAtFinishCopyWithImpl(
      _$ProtocolClearNumberAtFinish _value,
      $Res Function(_$ProtocolClearNumberAtFinish) _then)
      : super(_value, (v) => _then(v as _$ProtocolClearNumberAtFinish));

  @override
  _$ProtocolClearNumberAtFinish get _value =>
      super._value as _$ProtocolClearNumberAtFinish;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$ProtocolClearNumberAtFinish(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProtocolClearNumberAtFinish implements ProtocolClearNumberAtFinish {
  const _$ProtocolClearNumberAtFinish({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'ProtocolEvent.clearNumberAtFinish(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolClearNumberAtFinish &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolClearNumberAtFinishCopyWith<_$ProtocolClearNumberAtFinish>
      get copyWith => __$$ProtocolClearNumberAtFinishCopyWithImpl<
          _$ProtocolClearNumberAtFinish>(this, _$identity);

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
      _$ProtocolClearNumberAtFinish;

  int get number;
  @JsonKey(ignore: true)
  _$$ProtocolClearNumberAtFinishCopyWith<_$ProtocolClearNumberAtFinish>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolSetDNSCopyWith<$Res> {
  factory _$$ProtocolSetDNSCopyWith(
          _$ProtocolSetDNS value, $Res Function(_$ProtocolSetDNS) then) =
      __$$ProtocolSetDNSCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class __$$ProtocolSetDNSCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolSetDNSCopyWith<$Res> {
  __$$ProtocolSetDNSCopyWithImpl(
      _$ProtocolSetDNS _value, $Res Function(_$ProtocolSetDNS) _then)
      : super(_value, (v) => _then(v as _$ProtocolSetDNS));

  @override
  _$ProtocolSetDNS get _value => super._value as _$ProtocolSetDNS;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$ProtocolSetDNS(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProtocolSetDNS implements ProtocolSetDNS {
  const _$ProtocolSetDNS({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'ProtocolEvent.setDNS(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolSetDNS &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolSetDNSCopyWith<_$ProtocolSetDNS> get copyWith =>
      __$$ProtocolSetDNSCopyWithImpl<_$ProtocolSetDNS>(this, _$identity);

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
  const factory ProtocolSetDNS({required final int number}) = _$ProtocolSetDNS;

  int get number;
  @JsonKey(ignore: true)
  _$$ProtocolSetDNSCopyWith<_$ProtocolSetDNS> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolSetDNFCopyWith<$Res> {
  factory _$$ProtocolSetDNFCopyWith(
          _$ProtocolSetDNF value, $Res Function(_$ProtocolSetDNF) then) =
      __$$ProtocolSetDNFCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class __$$ProtocolSetDNFCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolSetDNFCopyWith<$Res> {
  __$$ProtocolSetDNFCopyWithImpl(
      _$ProtocolSetDNF _value, $Res Function(_$ProtocolSetDNF) _then)
      : super(_value, (v) => _then(v as _$ProtocolSetDNF));

  @override
  _$ProtocolSetDNF get _value => super._value as _$ProtocolSetDNF;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$ProtocolSetDNF(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProtocolSetDNF implements ProtocolSetDNF {
  const _$ProtocolSetDNF({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'ProtocolEvent.setDNF(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolSetDNF &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolSetDNFCopyWith<_$ProtocolSetDNF> get copyWith =>
      __$$ProtocolSetDNFCopyWithImpl<_$ProtocolSetDNF>(this, _$identity);

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
  const factory ProtocolSetDNF({required final int number}) = _$ProtocolSetDNF;

  int get number;
  @JsonKey(ignore: true)
  _$$ProtocolSetDNFCopyWith<_$ProtocolSetDNF> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolHideFinishTimeCopyWith<$Res> {
  factory _$$ProtocolHideFinishTimeCopyWith(_$ProtocolHideFinishTime value,
          $Res Function(_$ProtocolHideFinishTime) then) =
      __$$ProtocolHideFinishTimeCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$ProtocolHideFinishTimeCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolHideFinishTimeCopyWith<$Res> {
  __$$ProtocolHideFinishTimeCopyWithImpl(_$ProtocolHideFinishTime _value,
      $Res Function(_$ProtocolHideFinishTime) _then)
      : super(_value, (v) => _then(v as _$ProtocolHideFinishTime));

  @override
  _$ProtocolHideFinishTime get _value =>
      super._value as _$ProtocolHideFinishTime;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ProtocolHideFinishTime(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProtocolHideFinishTime implements ProtocolHideFinishTime {
  const _$ProtocolHideFinishTime({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ProtocolEvent.hideFinishTime(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolHideFinishTime &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolHideFinishTimeCopyWith<_$ProtocolHideFinishTime> get copyWith =>
      __$$ProtocolHideFinishTimeCopyWithImpl<_$ProtocolHideFinishTime>(
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
    return hideFinishTime(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
      _$ProtocolHideFinishTime;

  int get id;
  @JsonKey(ignore: true)
  _$$ProtocolHideFinishTimeCopyWith<_$ProtocolHideFinishTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolSetNumberToFinishTimeCopyWith<$Res> {
  factory _$$ProtocolSetNumberToFinishTimeCopyWith(
          _$ProtocolSetNumberToFinishTime value,
          $Res Function(_$ProtocolSetNumberToFinishTime) then) =
      __$$ProtocolSetNumberToFinishTimeCopyWithImpl<$Res>;
  $Res call({int id, int number, String finishTime});
}

/// @nodoc
class __$$ProtocolSetNumberToFinishTimeCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolSetNumberToFinishTimeCopyWith<$Res> {
  __$$ProtocolSetNumberToFinishTimeCopyWithImpl(
      _$ProtocolSetNumberToFinishTime _value,
      $Res Function(_$ProtocolSetNumberToFinishTime) _then)
      : super(_value, (v) => _then(v as _$ProtocolSetNumberToFinishTime));

  @override
  _$ProtocolSetNumberToFinishTime get _value =>
      super._value as _$ProtocolSetNumberToFinishTime;

  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? finishTime = freezed,
  }) {
    return _then(_$ProtocolSetNumberToFinishTime(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      finishTime: finishTime == freezed
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProtocolSetNumberToFinishTime implements ProtocolSetNumberToFinishTime {
  const _$ProtocolSetNumberToFinishTime(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolSetNumberToFinishTime &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality()
                .equals(other.finishTime, finishTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(finishTime));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolSetNumberToFinishTimeCopyWith<_$ProtocolSetNumberToFinishTime>
      get copyWith => __$$ProtocolSetNumberToFinishTimeCopyWithImpl<
          _$ProtocolSetNumberToFinishTime>(this, _$identity);

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
      required final String finishTime}) = _$ProtocolSetNumberToFinishTime;

  int get id;
  int get number;
  String get finishTime;
  @JsonKey(ignore: true)
  _$$ProtocolSetNumberToFinishTimeCopyWith<_$ProtocolSetNumberToFinishTime>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolGetNumbersOnTraceCopyWith<$Res> {
  factory _$$ProtocolGetNumbersOnTraceCopyWith(
          _$ProtocolGetNumbersOnTrace value,
          $Res Function(_$ProtocolGetNumbersOnTrace) then) =
      __$$ProtocolGetNumbersOnTraceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolGetNumbersOnTraceCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolGetNumbersOnTraceCopyWith<$Res> {
  __$$ProtocolGetNumbersOnTraceCopyWithImpl(_$ProtocolGetNumbersOnTrace _value,
      $Res Function(_$ProtocolGetNumbersOnTrace) _then)
      : super(_value, (v) => _then(v as _$ProtocolGetNumbersOnTrace));

  @override
  _$ProtocolGetNumbersOnTrace get _value =>
      super._value as _$ProtocolGetNumbersOnTrace;
}

/// @nodoc

class _$ProtocolGetNumbersOnTrace implements ProtocolGetNumbersOnTrace {
  const _$ProtocolGetNumbersOnTrace();

  @override
  String toString() {
    return 'ProtocolEvent.getNumbersOnTrace()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolGetNumbersOnTrace);
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
  const factory ProtocolGetNumbersOnTrace() = _$ProtocolGetNumbersOnTrace;
}

/// @nodoc
abstract class _$$ProtocolLoadStartFromCsvCopyWith<$Res> {
  factory _$$ProtocolLoadStartFromCsvCopyWith(_$ProtocolLoadStartFromCsv value,
          $Res Function(_$ProtocolLoadStartFromCsv) then) =
      __$$ProtocolLoadStartFromCsvCopyWithImpl<$Res>;
  $Res call({PlatformFile? csv});
}

/// @nodoc
class __$$ProtocolLoadStartFromCsvCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolLoadStartFromCsvCopyWith<$Res> {
  __$$ProtocolLoadStartFromCsvCopyWithImpl(_$ProtocolLoadStartFromCsv _value,
      $Res Function(_$ProtocolLoadStartFromCsv) _then)
      : super(_value, (v) => _then(v as _$ProtocolLoadStartFromCsv));

  @override
  _$ProtocolLoadStartFromCsv get _value =>
      super._value as _$ProtocolLoadStartFromCsv;

  @override
  $Res call({
    Object? csv = freezed,
  }) {
    return _then(_$ProtocolLoadStartFromCsv(
      csv: csv == freezed
          ? _value.csv
          : csv // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
    ));
  }
}

/// @nodoc

class _$ProtocolLoadStartFromCsv implements ProtocolLoadStartFromCsv {
  const _$ProtocolLoadStartFromCsv({this.csv});

  @override
  final PlatformFile? csv;

  @override
  String toString() {
    return 'ProtocolEvent.loadStartFromCsv(csv: $csv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolLoadStartFromCsv &&
            const DeepCollectionEquality().equals(other.csv, csv));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(csv));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolLoadStartFromCsvCopyWith<_$ProtocolLoadStartFromCsv>
      get copyWith =>
          __$$ProtocolLoadStartFromCsvCopyWithImpl<_$ProtocolLoadStartFromCsv>(
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
    return loadStartFromCsv(csv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
      _$ProtocolLoadStartFromCsv;

  PlatformFile? get csv;
  @JsonKey(ignore: true)
  _$$ProtocolLoadStartFromCsvCopyWith<_$ProtocolLoadStartFromCsv>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolShareStartCopyWith<$Res> {
  factory _$$ProtocolShareStartCopyWith(_$ProtocolShareStart value,
          $Res Function(_$ProtocolShareStart) then) =
      __$$ProtocolShareStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolShareStartCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolShareStartCopyWith<$Res> {
  __$$ProtocolShareStartCopyWithImpl(
      _$ProtocolShareStart _value, $Res Function(_$ProtocolShareStart) _then)
      : super(_value, (v) => _then(v as _$ProtocolShareStart));

  @override
  _$ProtocolShareStart get _value => super._value as _$ProtocolShareStart;
}

/// @nodoc

class _$ProtocolShareStart implements ProtocolShareStart {
  const _$ProtocolShareStart();

  @override
  String toString() {
    return 'ProtocolEvent.shareStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProtocolShareStart);
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
  const factory ProtocolShareStart() = _$ProtocolShareStart;
}

/// @nodoc
abstract class _$$ProtocolShareFinishCopyWith<$Res> {
  factory _$$ProtocolShareFinishCopyWith(_$ProtocolShareFinish value,
          $Res Function(_$ProtocolShareFinish) then) =
      __$$ProtocolShareFinishCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolShareFinishCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolShareFinishCopyWith<$Res> {
  __$$ProtocolShareFinishCopyWithImpl(
      _$ProtocolShareFinish _value, $Res Function(_$ProtocolShareFinish) _then)
      : super(_value, (v) => _then(v as _$ProtocolShareFinish));

  @override
  _$ProtocolShareFinish get _value => super._value as _$ProtocolShareFinish;
}

/// @nodoc

class _$ProtocolShareFinish implements ProtocolShareFinish {
  const _$ProtocolShareFinish();

  @override
  String toString() {
    return 'ProtocolEvent.shareFinish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProtocolShareFinish);
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
  const factory ProtocolShareFinish() = _$ProtocolShareFinish;
}

/// @nodoc
abstract class _$$ProtocolSelectAwaitingNumberCopyWith<$Res> {
  factory _$$ProtocolSelectAwaitingNumberCopyWith(
          _$ProtocolSelectAwaitingNumber value,
          $Res Function(_$ProtocolSelectAwaitingNumber) then) =
      __$$ProtocolSelectAwaitingNumberCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class __$$ProtocolSelectAwaitingNumberCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolSelectAwaitingNumberCopyWith<$Res> {
  __$$ProtocolSelectAwaitingNumberCopyWithImpl(
      _$ProtocolSelectAwaitingNumber _value,
      $Res Function(_$ProtocolSelectAwaitingNumber) _then)
      : super(_value, (v) => _then(v as _$ProtocolSelectAwaitingNumber));

  @override
  _$ProtocolSelectAwaitingNumber get _value =>
      super._value as _$ProtocolSelectAwaitingNumber;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$ProtocolSelectAwaitingNumber(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProtocolSelectAwaitingNumber implements ProtocolSelectAwaitingNumber {
  const _$ProtocolSelectAwaitingNumber({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'ProtocolEvent.selectAwaitingNumber(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolSelectAwaitingNumber &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolSelectAwaitingNumberCopyWith<_$ProtocolSelectAwaitingNumber>
      get copyWith => __$$ProtocolSelectAwaitingNumberCopyWithImpl<
          _$ProtocolSelectAwaitingNumber>(this, _$identity);

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
      _$ProtocolSelectAwaitingNumber;

  int get number;
  @JsonKey(ignore: true)
  _$$ProtocolSelectAwaitingNumberCopyWith<_$ProtocolSelectAwaitingNumber>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtocolDeselectAwaitingNumberCopyWith<$Res> {
  factory _$$ProtocolDeselectAwaitingNumberCopyWith(
          _$ProtocolDeselectAwaitingNumber value,
          $Res Function(_$ProtocolDeselectAwaitingNumber) then) =
      __$$ProtocolDeselectAwaitingNumberCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolDeselectAwaitingNumberCopyWithImpl<$Res>
    extends _$ProtocolEventCopyWithImpl<$Res>
    implements _$$ProtocolDeselectAwaitingNumberCopyWith<$Res> {
  __$$ProtocolDeselectAwaitingNumberCopyWithImpl(
      _$ProtocolDeselectAwaitingNumber _value,
      $Res Function(_$ProtocolDeselectAwaitingNumber) _then)
      : super(_value, (v) => _then(v as _$ProtocolDeselectAwaitingNumber));

  @override
  _$ProtocolDeselectAwaitingNumber get _value =>
      super._value as _$ProtocolDeselectAwaitingNumber;
}

/// @nodoc

class _$ProtocolDeselectAwaitingNumber
    implements ProtocolDeselectAwaitingNumber {
  const _$ProtocolDeselectAwaitingNumber();

  @override
  String toString() {
    return 'ProtocolEvent.deselectAwaitingNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolDeselectAwaitingNumber);
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
      _$ProtocolDeselectAwaitingNumber;
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
    TResult Function(ProtocolNotSelectedState value)? notSelected,
    TResult Function(ProtocolSelectedState value)? selected,
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
      _$ProtocolStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProtocolStateCopyWithImpl<$Res>
    implements $ProtocolStateCopyWith<$Res> {
  _$ProtocolStateCopyWithImpl(this._value, this._then);

  final ProtocolState _value;
  // ignore: unused_field
  final $Res Function(ProtocolState) _then;
}

/// @nodoc
abstract class _$$ProtocolNotSelectedStateCopyWith<$Res> {
  factory _$$ProtocolNotSelectedStateCopyWith(_$ProtocolNotSelectedState value,
          $Res Function(_$ProtocolNotSelectedState) then) =
      __$$ProtocolNotSelectedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtocolNotSelectedStateCopyWithImpl<$Res>
    extends _$ProtocolStateCopyWithImpl<$Res>
    implements _$$ProtocolNotSelectedStateCopyWith<$Res> {
  __$$ProtocolNotSelectedStateCopyWithImpl(_$ProtocolNotSelectedState _value,
      $Res Function(_$ProtocolNotSelectedState) _then)
      : super(_value, (v) => _then(v as _$ProtocolNotSelectedState));

  @override
  _$ProtocolNotSelectedState get _value =>
      super._value as _$ProtocolNotSelectedState;
}

/// @nodoc

class _$ProtocolNotSelectedState implements ProtocolNotSelectedState {
  const _$ProtocolNotSelectedState();

  @override
  String toString() {
    return 'ProtocolState.notSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolNotSelectedState);
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
    TResult Function(ProtocolNotSelectedState value)? notSelected,
    TResult Function(ProtocolSelectedState value)? selected,
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
  const factory ProtocolNotSelectedState() = _$ProtocolNotSelectedState;
}

/// @nodoc
abstract class _$$ProtocolSelectedStateCopyWith<$Res> {
  factory _$$ProtocolSelectedStateCopyWith(_$ProtocolSelectedState value,
          $Res Function(_$ProtocolSelectedState) then) =
      __$$ProtocolSelectedStateCopyWithImpl<$Res>;
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
class __$$ProtocolSelectedStateCopyWithImpl<$Res>
    extends _$ProtocolStateCopyWithImpl<$Res>
    implements _$$ProtocolSelectedStateCopyWith<$Res> {
  __$$ProtocolSelectedStateCopyWithImpl(_$ProtocolSelectedState _value,
      $Res Function(_$ProtocolSelectedState) _then)
      : super(_value, (v) => _then(v as _$ProtocolSelectedState));

  @override
  _$ProtocolSelectedState get _value => super._value as _$ProtocolSelectedState;

  @override
  $Res call({
    Object? startProtocol = freezed,
    Object? finishProtocol = freezed,
    Object? numbersOnTraceProtocol = freezed,
    Object? databasePath = freezed,
    Object? updateFinishNumber = freezed,
    Object? automaticStart = freezed,
    Object? previousStart = freezed,
    Object? startTime = freezed,
    Object? autoFinishNumber = freezed,
    Object? awaitingNumber = freezed,
  }) {
    return _then(_$ProtocolSelectedState(
      startProtocol: startProtocol == freezed
          ? _value._startProtocol
          : startProtocol // ignore: cast_nullable_to_non_nullable
              as List<StartItem>,
      finishProtocol: finishProtocol == freezed
          ? _value._finishProtocol
          : finishProtocol // ignore: cast_nullable_to_non_nullable
              as List<FinishItem>,
      numbersOnTraceProtocol: numbersOnTraceProtocol == freezed
          ? _value._numbersOnTraceProtocol
          : numbersOnTraceProtocol // ignore: cast_nullable_to_non_nullable
              as List<StartItem>,
      databasePath: databasePath == freezed
          ? _value.databasePath
          : databasePath // ignore: cast_nullable_to_non_nullable
              as String,
      updateFinishNumber: updateFinishNumber == freezed
          ? _value.updateFinishNumber
          : updateFinishNumber // ignore: cast_nullable_to_non_nullable
              as bool?,
      automaticStart: automaticStart == freezed
          ? _value.automaticStart
          : automaticStart // ignore: cast_nullable_to_non_nullable
              as AutomaticStart?,
      previousStart: previousStart == freezed
          ? _value._previousStart
          : previousStart // ignore: cast_nullable_to_non_nullable
              as List<StartItem>?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as StartTime?,
      autoFinishNumber: autoFinishNumber == freezed
          ? _value.autoFinishNumber
          : autoFinishNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      awaitingNumber: awaitingNumber == freezed
          ? _value.awaitingNumber
          : awaitingNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $AutomaticStartCopyWith<$Res>? get automaticStart {
    if (_value.automaticStart == null) {
      return null;
    }

    return $AutomaticStartCopyWith<$Res>(_value.automaticStart!, (value) {
      return _then(_value.copyWith(automaticStart: value));
    });
  }

  @override
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

class _$ProtocolSelectedState implements ProtocolSelectedState {
  const _$ProtocolSelectedState(
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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_startProtocol);
  }

  final List<FinishItem> _finishProtocol;
  @override
  List<FinishItem> get finishProtocol {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_finishProtocol);
  }

  final List<StartItem> _numbersOnTraceProtocol;
  @override
  List<StartItem> get numbersOnTraceProtocol {
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtocolSelectedState &&
            const DeepCollectionEquality()
                .equals(other._startProtocol, _startProtocol) &&
            const DeepCollectionEquality()
                .equals(other._finishProtocol, _finishProtocol) &&
            const DeepCollectionEquality().equals(
                other._numbersOnTraceProtocol, _numbersOnTraceProtocol) &&
            const DeepCollectionEquality()
                .equals(other.databasePath, databasePath) &&
            const DeepCollectionEquality()
                .equals(other.updateFinishNumber, updateFinishNumber) &&
            const DeepCollectionEquality()
                .equals(other.automaticStart, automaticStart) &&
            const DeepCollectionEquality()
                .equals(other._previousStart, _previousStart) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality()
                .equals(other.autoFinishNumber, autoFinishNumber) &&
            const DeepCollectionEquality()
                .equals(other.awaitingNumber, awaitingNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_startProtocol),
      const DeepCollectionEquality().hash(_finishProtocol),
      const DeepCollectionEquality().hash(_numbersOnTraceProtocol),
      const DeepCollectionEquality().hash(databasePath),
      const DeepCollectionEquality().hash(updateFinishNumber),
      const DeepCollectionEquality().hash(automaticStart),
      const DeepCollectionEquality().hash(_previousStart),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(autoFinishNumber),
      const DeepCollectionEquality().hash(awaitingNumber));

  @JsonKey(ignore: true)
  @override
  _$$ProtocolSelectedStateCopyWith<_$ProtocolSelectedState> get copyWith =>
      __$$ProtocolSelectedStateCopyWithImpl<_$ProtocolSelectedState>(
          this, _$identity);

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
    TResult Function(ProtocolNotSelectedState value)? notSelected,
    TResult Function(ProtocolSelectedState value)? selected,
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
      required final int? awaitingNumber}) = _$ProtocolSelectedState;

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
  @JsonKey(ignore: true)
  _$$ProtocolSelectedStateCopyWith<_$ProtocolSelectedState> get copyWith =>
      throw _privateConstructorUsedError;
}
