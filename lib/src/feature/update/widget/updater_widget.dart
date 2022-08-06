import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/helper/helper.dart';
import '../../../common/localization/localization.dart';
import '../bloc/update_bloc.dart';

class Updater extends StatelessWidget {
  const Updater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateBloc, UpdateState>(builder: (context, state) {
      if (state is UpdateDownloadInProgress) {
        return ListTile(
          title: Stack(
            alignment: Alignment.center,
            children: [
              LinearProgressIndicator(
                minHeight: 24,
                value: state.bytes / state.total,
              ),
              Text(
                Localization.current.I18nUpdate_downloaded(
                    filesize(state.bytes), filesize(state.total)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      } else if (state is UpdateConnecting) {
        return ListTile(
          title: Stack(
            alignment: Alignment.center,
            children: [
              const LinearProgressIndicator(
                minHeight: 24,
                value: null,
              ),
              Text(
                Localization.current.I18nUpdate_connecting,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      } else if (state is UpdateAvailable) {
        return ListTile(
          contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
          title: Text(Localization.current.I18nUpdate_updateToVersion(state.version)),
          onTap: () {
            BlocProvider.of<UpdateBloc>(context).add(DownloadUpdate());
          },
        );
      } else {
        return ListTile(
          contentPadding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
          title: Text(Localization.current.I18nUpdate_checkForUpdates),
          onTap: () {
            BlocProvider.of<UpdateBloc>(context).add(CheckUpdate());
          },
        );
      }
    });
  }
}
