part of 'database_bloc.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState.initial() = _Initial;
  const factory DatabaseState.initialized({
    required List<Race> races,
    required List<Stage> stages,
    required List<Rider> riders,
    required List<Status> statuses,
    required List<GetParticipantsAtStartResult> participants,
    required List<Start> starts,
    required List<Finish> finishes,
    required List<Trail> trails,
    Notification? notification,
  }) = _Initialized;
}
