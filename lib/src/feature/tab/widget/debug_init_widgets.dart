import 'package:entime/src/feature/trails/widget/trails_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/widget/header_widget.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../../csv/csv.dart';
import '../../csv/logic/file_picker.dart';
import '../../csv/logic/text_decoder.dart';
import '../../database/bloc/database_bloc.dart';
import '../../log/log.dart';
import '../../settings/bloc/settings_bloc.dart';

List<Widget> debugButtons() {
  final widgets = <Widget>[
    const Header(text: 'Debug'),
    const _DebugAddLogButton(),
    const _DebugLogButton(),
    const _DebugTrailsButton(),
    const _DebugCountdownButton(),
    const _DebugVoiceButton(),
    const _DebugNewDatabase(),
    const _DebugTestCsv(),
  ];
  return widgets;
}

class _DebugLogButton extends StatelessWidget {
  const _DebugLogButton();

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) => LogScreen(
                  //moduleSettings: moduleSettings,
                  ),
            ),
          );
        },
        child: const Text('Show Log'),
      );
}

class _DebugAddLogButton extends StatelessWidget {
  const _DebugAddLogButton();

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          BlocProvider.of<LogBloc>(context).add(
            const LogEvent.add(
              level: LogLevel.error,
              source: LogSource.bluetooth,
              rawData: 'rawData',
              direction: LogSourceDirection.input,
            ),
          );
        },
        child: const Text('Add Log'),
      );
}

class _DebugTrailsButton extends StatelessWidget {
  const _DebugTrailsButton();

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) => TrailsListPage(
                  //moduleSettings: moduleSettings,
                  ),
            ),
          );
        },
        child: const Text('Show Trails'),
      );
}

class _DebugCountdownButton extends StatelessWidget {
  const _DebugCountdownButton();

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          final settingsCubit = context.read<SettingsCubit>();
          final stageId = settingsCubit.state.stageId;
          BlocProvider.of<BluetoothBloc>(context).add(
            BluetoothEvent.messageReceived(
              message: 'B19:00:56#',
              stageId: stageId,
            ),
          );
          // showChangelogAtStartup(context, '0.3.2');

          // BlocProvider.of<BluetoothBloc>(context).audioService.countdown();
        },
        child: const Text('Countdown Test'),
      );
}

class _DebugVoiceButton extends StatelessWidget {
  const _DebugVoiceButton();

  @override
  Widget build(BuildContext context) => TextButton(
        // ignore: no-empty-block
        onPressed: () {
          // BlocProvider.of<BluetoothBloc>(context)
          //     .audioService
          //     .speak('Это тестовое сообщение');
        },
        child: const Text('Voice Test'),
      );
}

class _DebugNewDatabase extends StatelessWidget {
  const _DebugNewDatabase();

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {
          context.read<DatabaseBloc>().add(const DatabaseEvent.shareDatabase());
        },
        child: const Text('Share database'),
      );
}

class _DebugTestCsv extends StatelessWidget {
  const _DebugTestCsv();

  @override
  Widget build(BuildContext context) {
    // final bloc = context.read<DatabaseBloc>();
    return TextButton(
      onPressed: () async {
      final file = await pickCsvFile();
      if (file != null) {
        final csv = decodeBytes(file.bytes!);
        final stages = await StartlistProvider().getStagesFromCsv(csv);
        if (stages != null) {
          // bloc.add(DatabaseEvent.createStagesFromStagesCsv(stages: stages));
        }}
      },
      child: const Text('CSV Test'),
    );
  }
}
