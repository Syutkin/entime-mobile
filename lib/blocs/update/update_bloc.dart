import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:entime/data_providers/update/update_provider.dart';
import 'package:entime/models/models.dart';
import 'package:entime/utils/logger.dart';

part 'update_event.dart';

part 'update_state.dart';

class UpdateBloc extends Bloc<UpdateEvent, UpdateState> {
  final UpdateProvider updater;

  UpdateBloc({
    required this.updater,
  }) : super(const UpdateInitial()) {
    updater.setDownloadingHandler((current, total) {
      add(UpdateDownloading(current, total));
    });
    updater.onDownloadComplete(() {
      add(UpdateFromFile());
    });
    updater.onError((error) {
      logger.e('UpdateBloc: Download error: $error');
      add(CancelDownload());
    });

    on<CheckUpdate>((event, emit) async {
      final bool update = await updater.isUpdateAvailable();
      if (update) {
        emit(UpdateAvailable(updater.latestVersion));
      } else {
        emit(const UpdateInitial());
      }
    });

    on<DownloadUpdate>((event, emit) async {
      if (state is UpdateAvailable) {
        emit(UpdateConnecting());
        await updater.downloadUpdate();
      }
    });

    on<UpdateDownloading>((event, emit) {
      emit(UpdateDownloadInProgress(event.bytes, event.total));
    });

    on<UpdateFromFile>((event, emit) {
      updater.installApk();
      emit(UpdateAvailable(updater.latestVersion));
    });

    on<CancelDownload>((event, emit) {
      updater.stop();
      emit(UpdateAvailable(updater.latestVersion));
    });

    on<PopupChangelog>((event, emit) async {
      emit(UpdateInitial(showChangelog: await updater.showChangelog()));
    });
  }
}
