import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/logger/logger.dart';
import '../logic/update_provider.dart';

part 'update_bloc.freezed.dart';
part 'update_event.dart';
part 'update_state.dart';

class UpdateBloc extends Bloc<UpdateEvent, UpdateState> {
  UpdateBloc({required this.updateProvider}) : super(const UpdateState.initial()) {
    updateProvider
      ..onDownloading((current, total) {
        add(UpdateEvent.downloading(bytes: current, total: total));
      })
      ..onDownloadComplete(() {
        add(const UpdateEvent.updateFromFile());
      })
      ..onError((error) {
        logger.e('UpdateBloc: Download error', error: error);
        add(UpdateEvent.downloadError(error: error));
      });

    on<UpdateEvent>(transformer: sequential(), (event, emit) async {
      switch (event) {
        case _CheckUpdate():
          final update = await updateProvider.isUpdateAvailable;
          if (update) {
            emit(UpdateState.updateAvailable(version: updateProvider.latestVersion));
          } else {
            emit(const UpdateState.initial());
          }
        case _DownloadUpdate():
          switch (state) {
            case UpdateStateUpdateAvailable():
              emit(const UpdateState.connecting());
              await updateProvider.downloadUpdate();
            default:
          }
        case _Downloading():
          emit(UpdateState.downloading(bytes: event.bytes, total: event.total));
        case _UpdateFromFile():
          await updateProvider.installApk();
          emit(UpdateState.updateAvailable(version: updateProvider.latestVersion));
        case _CancelDownload():
          updateProvider.stop();
          emit(UpdateState.updateAvailable(version: updateProvider.latestVersion));
        case _DownloadError():
          emit(UpdateState.downloadError(error: event.error));
        case _PopupChangelog():
          emit(UpdateState.initial(changelog: await updateProvider.showChangelog()));
      }
    });
  }
  final IUpdateProvider updateProvider;
}
