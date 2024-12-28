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
      return state.map(
        initial: (_) {
          return ListTile(
            contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
            title: Text(Localization.current.I18nUpdate_checkForUpdates),
            onTap: () {
              BlocProvider.of<UpdateBloc>(
                context,
              ).add(const UpdateEvent.checkUpdate());
            },
          );
        },
        updateAvailable: (updateAvailable) {
          return ListTile(
            contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
            title: Text(
              Localization.current.I18nUpdate_updateToVersion(
                updateAvailable.version,
              ),
            ),
            onTap: () {
              BlocProvider.of<UpdateBloc>(
                context,
              ).add(const UpdateEvent.downloadUpdate());
            },
          );
        },
        connecting: (_) {
          return ListTile(
            title: Stack(
              alignment: Alignment.center,
              children: [
                const LinearProgressIndicator(minHeight: 24),
                Text(
                  Localization.current.I18nUpdate_connecting,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
        downloading: (downloading) {
          return ListTile(
            title: Stack(
              alignment: Alignment.center,
              children: [
                LinearProgressIndicator(
                  minHeight: 24,
                  value: downloading.bytes / downloading.total,
                ),
                Text(
                  Localization.current.I18nUpdate_downloaded(
                    filesize(downloading.bytes),
                    filesize(downloading.total),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
        downloadError: (downloadError) {
          return ListTile(
            contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
            // title: Text(Localization.current.I18nUpdate_checkForUpdates),
            title: Text(downloadError.error),
            onTap: () {
              BlocProvider.of<UpdateBloc>(
                context,
              ).add(const UpdateEvent.checkUpdate());
            },
          );
        },
      );
    },
  );
}
