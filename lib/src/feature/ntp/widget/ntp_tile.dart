import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../bloc/ntp_bloc.dart';

class NtpTile extends StatelessWidget {
  const NtpTile({super.key});

  @override
  Widget build(BuildContext context) => ListTile(
        onTap: () async {
          context.read<NtpBloc>().add(NtpEvent.getNtpOffset());
        },
        leading: IconButton(
          icon: Icon(MdiIcons.timerSyncOutline),
          onPressed: () {
            context.read<NtpBloc>().add(NtpEvent.getNtpOffset());
          },
        ),
        title: Text(Localization.current.I18nNtp_ntpOffset),
        subtitle: BlocBuilder<NtpBloc, NtpState>(
          builder: (context, state) {
            return Text(Localization.current
                .I18nNtp_offsetInMilliseconds(state.offset % 1000));
          },
        ),
      );
}
