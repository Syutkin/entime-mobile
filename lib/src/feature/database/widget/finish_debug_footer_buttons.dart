// coverage:ignore-file

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../constants/date_time_formats.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../database.dart';

List<Widget> finishDebugFooterButtons(BuildContext context, {required Widget numbersOnTrace}) {
  final databaseBloc = context.read<DatabaseBloc>();
  final stage = databaseBloc.state.stage;

  return <Widget>[
    Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        numbersOnTrace,
        Row(
          children: <Widget>[
            TextButton(
              onPressed: () async {
                final rand = Random().nextInt(10000) - 5000;
                final duration = Duration(milliseconds: rand);
                final timestamp = DateTime.now();
                final finishTime = timestamp.add(duration);
                final ntpOffset = Random().nextInt(10000) - 5000;
                databaseBloc.add(
                  DatabaseEvent.addFinishTime(
                    finishTime: DateFormat(longTimeFormat).format(finishTime),
                    timestamp: timestamp,
                    ntpOffset: ntpOffset,
                    stage: stage!,
                  ),
                );
              },
              child: const Icon(Icons.person_add_alt_1),
            ),
            TextButton(
              onPressed: () async {
                BlocProvider.of<BluetoothBloc>(context).add(
                  BluetoothEvent.messageReceived(
                    message: 'F12:12:12,121#\nF13:13:13,131#\nF14:14:14,141#\nF15:16:17,181#',
                    stageId: stage!.id,
                  ),
                );
              },
              child: const Icon(Icons.build),
            ),
            TextButton(
              onPressed: () async {
                final stageId = stage?.id;
                if (stageId != null) {
                  databaseBloc.add(DatabaseEvent.clearFinishResultsDebug(stageId));
                }
              },
              child: const Icon(Icons.clear_all),
            ),
          ],
        ),
      ],
    ),
  ];
}
