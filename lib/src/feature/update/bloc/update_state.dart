part of 'update_bloc.dart';

@freezed
sealed class UpdateState with _$UpdateState {
  const factory UpdateState.initial({String? changelog}) = UpdateStateInitial;

  // Есть обновление, вызываем попап с вопросом обновлять или нет
  const factory UpdateState.updateAvailable({required String version}) = UpdateStateUpdateAvailable;

  // Соединение с сервером для скачивания файла
  const factory UpdateState.connecting() = UpdateStateConnecting;

  // Скачивание обновления, прогрессбар
  const factory UpdateState.downloading({required int bytes, required int total}) = UpdateStateDownloading;

  const factory UpdateState.downloadError({required String error}) = UpdateStateDownloadError;

  // При удачном обновлении (возможно не нужен, т.к. просто вернуть Initial)
  // const factory UpdateState.complete() = UpdateState;
}
