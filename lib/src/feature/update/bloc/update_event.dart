part of 'update_bloc.dart';

@freezed
class UpdateEvent with _$UpdateEvent {
  const factory UpdateEvent.checkUpdate() = CheckUpdate;
  const factory UpdateEvent.popupChangelog() = PopupChangelog;
  const factory UpdateEvent.downloadUpdate() = DownloadUpdate;

  const factory UpdateEvent.downloading({
    required int bytes,
    required int total,
  }) = UpdateDownloading;

  const factory UpdateEvent.cancelDownload() = CancelDownload;
  const factory UpdateEvent.updateFromFile() = UpdateFromFile;
}
