part of 'trails_bloc.dart';

@freezed
class TrailsState with _$TrailsState {
  const factory TrailsState.initial() = _Initial;
  const factory TrailsState.initialized({List<Trails>? trails}) =
  _Initialized;
}
