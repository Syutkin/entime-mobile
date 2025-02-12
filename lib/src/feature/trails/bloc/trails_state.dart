part of 'trails_bloc.dart';

@freezed
class TrailsState with _$TrailsState {
  const factory TrailsState.initial() = _Initial;

  const factory TrailsState.initialized({required List<TrailInfo> trails, TrackFile? track}) = _Initialized;

  const factory TrailsState.loadingTrack({required List<TrailInfo> trails}) = _LoadingTrack;
}
