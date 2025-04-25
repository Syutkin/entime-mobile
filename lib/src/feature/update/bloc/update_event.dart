part of 'update_bloc.dart';

@freezed
sealed class UpdateEvent with _$UpdateEvent {
  const factory UpdateEvent.checkUpdate() = _CheckUpdate;
  const factory UpdateEvent.popupChangelog() = _PopupChangelog;
  const factory UpdateEvent.downloadUpdate() = _DownloadUpdate;

  const factory UpdateEvent.downloading({required int bytes, required int total}) = _Downloading;

  const factory UpdateEvent.cancelDownload() = _CancelDownload;
  const factory UpdateEvent.downloadError({required String error}) = _DownloadError;

  const factory UpdateEvent.updateFromFile() = _UpdateFromFile;
}
