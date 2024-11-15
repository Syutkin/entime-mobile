import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/logger/logger.dart';
import '../logic/update_provider.dart';
import '../model/show_changelog.dart';

part 'update_bloc.freezed.dart';
part 'update_event.dart';
part 'update_state.dart';

class UpdateBloc extends Bloc<UpdateEvent, UpdateState> {
  UpdateBloc({
    required this.updateProvider,
  }) : super(const UpdateInitial()) {
    updateProvider
      ..onDownloading((current, total) {
        add(UpdateDownloading(bytes: current, total: total));
      })
      ..onDownloadComplete(() {
        add(const UpdateFromFile());
      })
      ..onError((error) {
        logger.e('UpdateBloc: Download error', error: error);
        add(const CancelDownload());
      });

    on<CheckUpdate>((event, emit) async {
      final update = await updateProvider.isUpdateAvailable();
      if (update) {
        emit(UpdateAvailable(version: updateProvider.latestVersion));
      } else {
        emit(const UpdateInitial());
      }
    });

    on<DownloadUpdate>((event, emit) async {
      if (state is UpdateAvailable) {
        emit(const UpdateConnecting());
        await updateProvider.downloadUpdate();
      }
    });

    on<UpdateDownloading>((event, emit) {
      emit(UpdateDownloadInProgress(bytes: event.bytes, total: event.total));
    });

    on<UpdateFromFile>((event, emit) {
      updateProvider.installApk();
      emit(UpdateAvailable(version: updateProvider.latestVersion));
    });

    on<CancelDownload>((event, emit) {
      updateProvider.stop();
      emit(UpdateAvailable(version: updateProvider.latestVersion));
    });

    on<PopupChangelog>((event, emit) async {
      emit(UpdateInitial(showChangelog: await updateProvider.showChangelog()));
    });
  }
  final UpdateProvider updateProvider;
}
