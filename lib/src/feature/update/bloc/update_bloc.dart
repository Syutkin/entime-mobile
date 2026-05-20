import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/logger/logger.dart';
import '../logic/update_controller.dart';
import '../logic/update_controller_event.dart';

part 'update_bloc.freezed.dart';
part 'update_event.dart';
part 'update_state.dart';

class UpdateBloc extends Bloc<UpdateEvent, UpdateState> {
  UpdateBloc({required this.updateController}) : super(const UpdateState.initial()) {
    _eventsSubscription = updateController.events.listen((event) {
      if (event is UpdateControllerDownloading) {
        add(UpdateEvent.downloading(bytes: event.bytes, total: event.total));
      } else if (event is UpdateControllerDownloaded) {
        add(const UpdateEvent.updateFromFile());
      } else if (event is UpdateControllerError) {
        logger.e('UpdateBloc: Download error', error: event.message);
        add(UpdateEvent.downloadError(error: event.message));
      }
    });

    on<UpdateEvent>(transformer: sequential(), (event, emit) async {
      switch (event) {
        case _CheckUpdate():
          final update = await updateController.isUpdateAvailable;
          if (update) {
            emit(UpdateState.updateAvailable(version: updateController.latestVersion));
          } else {
            emit(const UpdateState.initial());
          }
        case _DownloadUpdate():
          switch (state) {
            case UpdateStateUpdateAvailable():
              emit(const UpdateState.connecting());
              unawaited(updateController.downloadUpdate());
            default:
          }
        case _Downloading():
          emit(UpdateState.downloading(bytes: event.bytes, total: event.total));
        case _UpdateFromFile():
          await updateController.installUpdate();
          emit(UpdateState.updateAvailable(version: updateController.latestVersion));
        case _CancelDownload():
          await updateController.cancelDownload();
          emit(UpdateState.updateAvailable(version: updateController.latestVersion));
        case _DownloadError():
          emit(UpdateState.downloadError(error: event.error));
        case _PopupChangelog():
          emit(UpdateState.initial(changelog: await updateController.showChangelog()));
      }
    });
  }
  final IUpdateController updateController;
  late final StreamSubscription<UpdateControllerEvent> _eventsSubscription;

  @override
  Future<void> close() async {
    await _eventsSubscription.cancel();
    updateController.dispose();
    return super.close();
  }
}
