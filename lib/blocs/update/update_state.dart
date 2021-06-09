part of 'update_bloc.dart';

abstract class UpdateState extends Equatable {
  const UpdateState();

  @override
  List<Object> get props => [];
}

class UpdateInitial extends UpdateState {
  final ShowChangelog showChangelog;

  UpdateInitial({this.showChangelog});

  @override
  List<Object> get props => [showChangelog];

  @override
  String toString() {
    if (showChangelog != null) {
      String result = 'UpdateInitial { '
          'showChangelog: ${showChangelog.show}';
      if (showChangelog.previousVersion != null) {
        result += ', previousVersion: ${showChangelog.previousVersion}, ';
      }
      if (showChangelog.previousVersion != null) {
        result += 'currentVersion: ${showChangelog.currentVersion}';
      }
      result += ' }';
      return result;
    }
    return 'UpdateInitial';
  }
}

// Есть обновление, вызываем попап с вопросом обновлять или нет
class UpdateAvailable extends UpdateState {
  final String version;

  UpdateAvailable(this.version);

  @override
  List<Object> get props => [version];

  @override
  String toString() => 'UpdateAvailable { version: $version}';
}

// Соединение с сервером для скачивания файла
class UpdateConnecting extends UpdateState {}

// Скачивание обновления, прогрессбар
class UpdateDownloadInProgress extends UpdateState {
  final int bytes;
  final int total;

  UpdateDownloadInProgress(
    this.bytes,
    this.total,
  );

  @override
  List<Object> get props => [
        bytes,
        total,
      ];
}

// При удачном обновлении (возможно не нужен, т.к. просто вернуть Initial)
class UpdateComplete extends UpdateState {}
