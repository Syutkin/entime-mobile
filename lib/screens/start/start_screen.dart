import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/screens.dart';
import 'package:entime/utils/helper.dart';
import 'package:entime/widgets/widgets.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({
    Key? key,
  }) : super(key: key);

  @override
  _StartScreen createState() => _StartScreen();
}

class _StartScreen extends State<StartScreen> {
  StreamSubscription? _voiceStream;
  StreamSubscription? _countdownStream;

  @override
  void dispose() {
    _voiceStream?.cancel();
    _countdownStream?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProtocolBloc, ProtocolState>(
          builder: (context, protocolState) {
        if (protocolState is ProtocolSelectedState) {
          return Stack(
            children: [
              // ListView.separated(
              ListView.builder(
                itemCount: protocolState.startProtocol.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = protocolState.startProtocol[index];
                  return BlocBuilder<CountdownBloc, CountdownState>(
                    builder: (context, countdownState) {
                      return StartItemTile(
                        item: item,
                        onTap: () async {
                          await editStartTime(context, item);
                        },
                        onDismissed: (direction) {
                          BlocProvider.of<ProtocolBloc>(context)
                              .add(ProtocolSetDNS(number: item.number));
                        },
                        activeStartTime: _activeStartTime(countdownState),
                      );
                    },
                  );
                },
              ),
              _showCountdown(),
            ],
          );
        } else {
          return Center(
            child: ListTile(
              onTap: () => routeToSelectFileScreen(context),
              title: const Text(
                'Выберите или создайте стартовый протокол',
                textAlign: TextAlign.center,
              ),
            ),
          );
        }
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BlocBuilder<SettingsBloc, SettingsState>(builder: (
        context,
        settingsState,
      ) {
        if (settingsState.startFab) {
          return SizedBox(
            height: settingsState.startFabSize,
            width: settingsState.startFabSize,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () => _addManualStartTime(context),
                child: const Icon(MdiIcons.handBackLeft),
              ),
            ),
          );
        }
        return const SizedBox(width: 0, height: 0);
      }),
      persistentFooterButtons:
          kReleaseMode ? null : _persistentFooterButtons(context),
    );
  }

  List<Widget> _persistentFooterButtons(BuildContext context) {
    return <Widget>[
      TextButton(
        onPressed: () {
          BlocProvider.of<BluetoothBloc>(context).add(MessageReceived(
              'V${DateFormat('HH:mm:ss').format(DateTime.now())}#'));
        },
        child: const Icon(Icons.record_voice_over_rounded),
      ),
      TextButton(
        onPressed: () {
          BlocProvider.of<BluetoothBloc>(context).add(MessageReceived(
              'B${DateFormat('HH:mm:ss').format(DateTime.now())}#'));
        },
        child: const Icon(Icons.volume_up),
      ),
      TextButton(
        onPressed: () async {
          BlocProvider.of<ProtocolBloc>(context)
              .add(ProtocolClearStartResultsDebug());
        },
        child: const Icon(Icons.clear_all),
      ),
      TextButton(
        onPressed: () {
          AutomaticStart automaticStart = AutomaticStart(
              DateFormat('HH:mm:ss,S').format(DateTime.now()),
              1234,
              DateTime.now());
          BlocProvider.of<ProtocolBloc>(context)
              .add(ProtocolUpdateAutomaticCorrection(automaticStart));
        },
        child: const Icon(Icons.play_arrow),
      ),
    ];
  }

  Widget _showCountdown() {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (
      context,
      settingsState,
    ) {
      if (settingsState.countdown) {
        return Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: settingsState.countdownSize,
            height: settingsState.countdownSize,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            margin: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 6, //default to FloatingButtonElevation
              type: MaterialType.circle,
              color: Theme.of(context).colorScheme.secondary,
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _countdownBuilder(),
                ),
              ),
            ),
          ),
        );
      } else {
        return const SizedBox(width: 0, height: 0);
      }
    });
  }

  Widget _countdownBuilder() {
    return BlocBuilder<CountdownBloc, CountdownState>(
        builder: (context, countdownState) {
      if (countdownState is CountdownWorkingState) {
        return Text(countdownState.text,
            style: DefaultTextStyle.of(context)
                .style
                .apply(color: Theme.of(context).colorScheme.onSecondary));
      } else {
        return const SizedBox(width: 0, height: 0);
      }
    });
  }

  void _addManualStartTime(BuildContext context) async {
    var time = DateTime.now();
    BlocProvider.of<ProtocolBloc>(context)
        .add(ProtocolUpdateManualStartTime(time: time));
  }

  String? _activeStartTime(CountdownState countdownState) {
    if (countdownState is CountdownWorkingState) {
      return countdownState.nextStartTime;
    }
  }
}
