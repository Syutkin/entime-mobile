part of 'trails_bloc.dart';

@freezed
class TrailsEvent with _$TrailsEvent {
  const factory TrailsEvent.getTrails() = _GetTrails;

  const factory TrailsEvent.addTrail({
    required String? name,
    int? distance,
    int? elevation,
    Uint8List? gpxTrack,
    String? url,
    String? description,
  }) = _AddTrail;

  const factory TrailsEvent.updateTrail({
    required int id,
    String? name,
    int? distance,
    int? elevation,
    Uint8List? gpxTrack,
    String? url,
    String? description,
  }) = _UpdateTrail;

  const factory TrailsEvent.upsertTrail({
    int? id,
    String? name,
    int? distance,
    int? elevation,
    Uint8List? gpxTrack,
    String? url,
    String? description,
    bool? isDeleted,
  }) = _UpsertTrail;

  const factory TrailsEvent.deleteTrail(int id) = _DeleteTrail;
}
