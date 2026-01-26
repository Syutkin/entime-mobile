// ignore_for_file: unreachable_from_main

part of 'trails_bloc.dart';

@freezed
sealed class TrailsState with _$TrailsState {
  const factory TrailsState.initial() = Initial;

  const factory TrailsState.initialized({required List<TrailInfo> trails, TrackFile? track}) = Initialized;

  const factory TrailsState.loadingTrack({required List<TrailInfo> trails, required double progress}) = LoadingTrack;

  const factory TrailsState.savingTrack({required List<TrailInfo> trails, required double progress}) = SavingTrack;
}
