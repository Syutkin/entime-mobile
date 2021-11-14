import 'dart:async';

import 'package:bloc/bloc.dart';
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
  }

//  StreamSubscription<int> _updateProgressionSubscription;
//
//  @override
//  Future<void> close() {
//    _updateProgressionSubscription?.cancel();
//    return super.close();
//  }

  @override
  Stream<UpdateState> mapEventToState(
    UpdateEvent event,
  ) async* {
    if (event is CheckUpdate) {
      bool update = await updater.isUpdateAvailable();
      if (update) {
        yield UpdateAvailable(updater.latestVersion);
      } else {
        yield const UpdateInitial();
      }
    } else if (event is DownloadUpdate) {
      if (state is UpdateAvailable) {
        yield UpdateConnecting();
        await updater.downloadUpdate();
      }
    } else if (event is UpdateDownloading) {
      yield UpdateDownloadInProgress(event.bytes, event.total);
    } else if (event is UpdateFromFile) {
      updater.installApk();
      yield UpdateAvailable(updater.latestVersion);
    } else if (event is CancelDownload) {
      updater.stop();
      yield UpdateAvailable(updater.latestVersion);
    } else if (event is PopupChangelog) {
      yield UpdateInitial(showChangelog: await updater.showChangelog());
    }
  }
}
