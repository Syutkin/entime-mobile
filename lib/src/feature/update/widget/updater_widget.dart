import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/filesize.dart';
import '../bloc/update_bloc.dart';

class Updater extends StatelessWidget {
  const Updater({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<UpdateBloc, UpdateState>(
    builder: (context, state) {
      switch (state) {
        case UpdateStateInitial():
          return ListTile(
            contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
            title: Text(Localization.current.I18nUpdate_checkForUpdates),
            onTap: () {
              BlocProvider.of<UpdateBloc>(context).add(const UpdateEvent.checkUpdate());
            },
          );
        case UpdateStateUpdateAvailable():
          return ListTile(
            contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
            title: Text(Localization.current.I18nUpdate_updateToVersion(state.version)),
            onTap: () {
              BlocProvider.of<UpdateBloc>(context).add(const UpdateEvent.downloadUpdate());
            },
          );
        case UpdateStateConnecting():
          return ListTile(
            title: Stack(
              alignment: Alignment.center,
              children: [
                const LinearProgressIndicator(minHeight: 24),
                Text(Localization.current.I18nUpdate_connecting, textAlign: TextAlign.center),
              ],
            ),
          );
        case UpdateStateDownloading():
          return ListTile(
            title: Stack(
              alignment: Alignment.center,
              children: [
                LinearProgressIndicator(minHeight: 24, value: state.bytes / state.total),
                Text(
                  Localization.current.I18nUpdate_downloaded(filesize(state.bytes), filesize(state.total)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        case UpdateStateDownloadError():
          return ListTile(
            contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
            // title: Text(Localization.current.I18nUpdate_checkForUpdates),
            title: Text(state.error),
            onTap: () {
              BlocProvider.of<UpdateBloc>(context).add(const UpdateEvent.checkUpdate());
            },
          );
      }
    },
  );
}
