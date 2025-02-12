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
      await event.map(
        checkUpdate: (event) async {
          final update = await updateProvider.isUpdateAvailable;
          if (update) {
            emit(UpdateState.updateAvailable(version: updateProvider.latestVersion));
          } else {
            emit(const UpdateState.initial());
          }
        },
        downloadUpdate: (event) async {
          await state.mapOrNull(
            updateAvailable: (state) async {
              emit(const UpdateState.connecting());
              await updateProvider.downloadUpdate();
            },
          );
        },
        downloading: (event) {
          emit(UpdateState.downloading(bytes: event.bytes, total: event.total));
        },
        updateFromFile: (_UpdateFromFileEvent value) {
          updateProvider.installApk();
          emit(UpdateState.updateAvailable(version: updateProvider.latestVersion));
        },
        cancelDownload: (event) {
          updateProvider.stop();
          emit(UpdateState.updateAvailable(version: updateProvider.latestVersion));
        },
        downloadError: (event) {
          emit(UpdateState.downloadError(error: event.error));
        },
        popupChangelog: (event) async {
          emit(UpdateState.initial(changelog: await updateProvider.showChangelog()));
        },
      );
    });
  }
  final IUpdateProvider updateProvider;
}
