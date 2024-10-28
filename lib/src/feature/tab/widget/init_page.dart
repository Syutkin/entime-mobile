import 'package:entime/src/feature/bluetooth/widget/bluetooth_tile.dart';
import 'package:entime/src/feature/tab/widget/race_tile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../ntp/widget/ntp_tile.dart';
import 'debug_init_widgets.dart';

class InitPage extends StatefulWidget {
  const InitPage({
    super.key,
  });

  @override
  State<InitPage> createState() => _InitPage();
}

class _InitPage extends State<InitPage> {
  @override
  Widget build(BuildContext context) => ListView(
        children: <Widget>[
          const RaceTile(),
          const BluetoothTile(),
          const NtpTile(),
          if (!kReleaseMode) ...debugButtons(),
        ],
      );
}
