import 'package:entime/src/feature/bluetooth/widget/bluetooth_tile.dart';
import 'package:entime/src/feature/tab/widget/race_tile.dart';
import 'package:entime/src/feature/tab/widget/riders_tile.dart';
import 'package:entime/src/feature/tab/widget/trails_tile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../ntp/widget/ntp_tile.dart';
import 'debug_init_widgets.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) => ListView(
    children: <Widget>[
      const RaceTile(),
      const BluetoothTile(),
      const NtpTile(),
      const TrailsTile(),
      const RidersTile(),
      if (!kReleaseMode) ...debugButtons(),
    ],
  );
}
