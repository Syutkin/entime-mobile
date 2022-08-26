import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/logger/logger.dart';
import '../logic/update_provider.dart';
import '../model/show_changelog.dart';

part 'update_event.dart';

part 'update_state.dart';

class UpdateBloc extends Bloc<UpdateEvent, UpdateState> {
  final UpdateProvider updateProvider;

  UpdateBloc({
    required this.updateProvider,
  }) : super(const UpdateInitial()) {
    updateProvider
      ..setDownloadingHandler((current, total) {
        add(UpdateDownloading(current, total));
      })
      ..onDownloadComplete(() {
        add(UpdateFromFile());
      })
      ..onError((error) {
        logger.e('UpdateBloc: Download error: $error');
        add(CancelDownload());
      });

    on<CheckUpdate>((event, emit) async {
      final bool update = await updateProvider.isUpdateAvailable();
      if (update) {
        emit(UpdateAvailable(updateProvider.latestVersion));
      } else {
        emit(const UpdateInitial());
      }
    });

    on<DownloadUpdate>((event, emit) async {
      if (state is UpdateAvailable) {
        emit(UpdateConnecting());
        await updateProvider.downloadUpdate();
      }
    });

    on<UpdateDownloading>((event, emit) {
      emit(UpdateDownloadInProgress(event.bytes, event.total));
    });

    on<UpdateFromFile>((event, emit) {
      updateProvider.installApk();
      emit(UpdateAvailable(updateProvider.latestVersion));
    });

    on<CancelDownload>((event, emit) {
      updateProvider.stop();
      emit(UpdateAvailable(updateProvider.latestVersion));
    });

    on<PopupChangelog>((event, emit) async {
      emit(UpdateInitial(showChangelog: await updateProvider.showChangelog()));
    });
  }
}
