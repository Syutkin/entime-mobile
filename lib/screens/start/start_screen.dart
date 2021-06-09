import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/screens.dart';
import 'package:entime/utils/helper.dart';

class StartScreen extends StatefulWidget {
  StartScreen({
    Key key,
  }) : super(key: key);

  @override
  _StartScreen createState() => _StartScreen();
}

class _StartScreen extends State<StartScreen> {
  StreamSubscription _voiceStream;
  StreamSubscription _countdownStream;

  @override
  void dispose() {
    _voiceStream?.cancel();
    _countdownStream?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProtocolBloc, ProtocolState>(builder: (context, state) {
        if (state is ProtocolSelectedState) {
          return Stack(
            children: [
              ListView.separated(
                itemCount: state.startProtocol.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = state.startProtocol[index];
                  return GestureDetector(
                    onTap: () async {
                      await editStartTime(context, item);
                    },
                    child: Dismissible(
                      key: UniqueKey(),
                      background: Container(
                          color: Theme.of(context).accentColor,
                          alignment: Alignment(1.0, 0.0),
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Не стартовал',
                              style: DefaultTextStyle.of(context)
                                  .style
                                  .apply(fontSizeFactor: 2.0))),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        BlocProvider.of<ProtocolBloc>(context)
                            .add(ProtocolSetDNS(number: item.number));
                      },
                      child: Row(children: <Widget>[
                        Flexible(
                          flex: 15,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              item.number.toString(),
                              style: DefaultTextStyle.of(context).style.apply(
                                  fontSizeFactor: 2.0, fontWeightDelta: 2),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 30,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(item.starttime ?? '',
                                style: DefaultTextStyle.of(context)
                                    .style
                                    .apply(fontSizeFactor: 1.5)),
                          ),
                        ),
                        Flexible(
                          flex: 30,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child:
                                Text(strip(item.manualcorrection.toString())),
                          ),
                        ),
                        Flexible(
                          flex: 15,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                                strip(item.automaticcorrection.toString()),
                                style: DefaultTextStyle.of(context)
                                    .style
                                    .apply(fontSizeFactor: 1.5)),
                          ),
                        ),
                      ]),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 2,
                ),
              ),
              _showCountdown(),
            ],
          );
        } else {
          return Center(
            child: ListTile(
              onTap: () => RouteToSelectFileScreen(context),
              title: Text(
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
          return Container(
            height: settingsState.startFabSize,
            width: settingsState.startFabSize,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () => _addManualStartTime(context),
                child: const Icon(MdiIcons.hand),
              ),
            ),
          );
        }
        return Container(width: 0, height: 0);
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
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            margin: EdgeInsets.all(8.0),
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
        return Container(width: 0, height: 0);
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
        return Container(width: 0, height: 0);
      }
    });
  }

  void _addManualStartTime(BuildContext context) async {
    var time = DateTime.now();
    BlocProvider.of<ProtocolBloc>(context)
        .add(ProtocolUpdateManualStartTime(time: time));
  }
}
