part of 'update_bloc.dart';

@freezed
class UpdateState with _$UpdateState {
  const factory UpdateState.initial({String? changelog}) =
      _UpdateInitial;

  // Есть обновление, вызываем попап с вопросом обновлять или нет
  const factory UpdateState.updateAvailable({required String version}) =
      _UpdateAvailable;

  // Соединение с сервером для скачивания файла
  const factory UpdateState.connecting() = _UpdateConnecting;

  // Скачивание обновления, прогрессбар
  const factory UpdateState.downloading({
    required int bytes,
    required int total,
  }) = _UpdateDownloading;

  const factory UpdateState.downloadError({
    required String error,
  }) = _UpdateDownloadError;

  // При удачном обновлении (возможно не нужен, т.к. просто вернуть Initial)
  // const factory UpdateState.complete() = UpdateState;
}
