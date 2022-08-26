part of 'update_bloc.dart';

@freezed
class UpdateState with _$UpdateState {
  const factory UpdateState.initial({ShowChangelog? showChangelog}) =
      UpdateInitial;
  // Есть обновление, вызываем попап с вопросом обновлять или нет
  const factory UpdateState.updateAvailable({required String version}) =
      UpdateAvailable;
// Соединение с сервером для скачивания файла
  const factory UpdateState.connecting() = UpdateConnecting;

// Скачивание обновления, прогрессбар
  const factory UpdateState.downloadInProgress({
    required int bytes,
    required int total,
  }) = UpdateDownloadInProgress;

  // При удачном обновлении (возможно не нужен, т.к. просто вернуть Initial)
  // const factory UpdateState.complete() = UpdateState;
}
