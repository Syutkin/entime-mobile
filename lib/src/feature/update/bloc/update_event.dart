part of 'update_bloc.dart';

@freezed
class UpdateEvent with _$UpdateEvent {
  const factory UpdateEvent.checkUpdate() = _CheckUpdateEvent;
  const factory UpdateEvent.popupChangelog() = _PopupChangelogEvent;
  const factory UpdateEvent.downloadUpdate() = _DownloadUpdateEvent;

  const factory UpdateEvent.downloading({required int bytes, required int total}) = _UpdateDownloadingEvent;

  const factory UpdateEvent.cancelDownload() = _CancelDownloadEvent;
  const factory UpdateEvent.downloadError({required String error}) = _DownloadErrorEvent;

  const factory UpdateEvent.updateFromFile() = _UpdateFromFileEvent;
}
