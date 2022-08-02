part of 'update_bloc.dart';

abstract class UpdateEvent extends Equatable {
  const UpdateEvent();

  @override
  List<Object> get props => [];
}

class CheckUpdate extends UpdateEvent {}

class PopupChangelog extends UpdateEvent {}

class DownloadUpdate extends UpdateEvent {}

class UpdateDownloading extends UpdateEvent {
  final int bytes;
  final int total;

  const UpdateDownloading(
    this.bytes,
    this.total,
  );

  @override
  List<Object> get props => [bytes, total];

  @override
  String toString() => 'UpdateDownloading { bytes: $bytes from $total}';
}

class CancelDownload extends UpdateEvent {}

class UpdateFromFile extends UpdateEvent {}
