import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../connectivity/bloc/connectivity_bloc.dart';
import '../bloc/ntp_bloc.dart';

class NtpTile extends StatelessWidget {
  const NtpTile({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ConnectivityBloc, ConnectivityState>(
        builder: (context, state) {
          return ListTile(
            enabled: context.read<ConnectivityBloc>().state.isConnected,
            onTap: () async {
              context.read<NtpBloc>().add(const NtpEvent.getNtpOffset());
            },
            leading: IconButton(
              icon: Icon(MdiIcons.timerSyncOutline),
              onPressed: () {
                context.read<NtpBloc>().add(const NtpEvent.getNtpOffset());
              },
            ),
            title: Text(Localization.current.I18nNtp_ntpOffset),
            subtitle: BlocBuilder<NtpBloc, NtpState>(
              builder: (context, state) {
                return state.map(
                  initial: (state) {
                    return Text(Localization.current.I18nNtp_sync);
                  },
                  loading: (state) {
                    return Text(Localization.current.I18nNtp_syncing);
                  },
                  success: (state) {
                    return Text(
                      Localization.current
                          .I18nNtp_offsetInMilliseconds(state.offset ~/ 1000),
                    );
                  },
                  failure: (state) {
                    return Text(Localization.current.I18nNtp_syncError);
                  },
                );
              },
            ),
          );
        },
      );
}
