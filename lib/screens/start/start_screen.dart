import 'dart:async';

import 'package:entime/widgets/countdown_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/models/models.dart';
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

  final GlobalKey _stackKey = GlobalKey();
  final GlobalKey _countdownKey = GlobalKey();

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
            key: _stackKey,
            children: [
              _startList(protocolState.startProtocol),
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
        } else {
          return const SizedBox(width: 0, height: 0);
        }
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

  Widget _startList(List<StartItem> startProtocol) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
            pinned: true,
            delegate: SliverSubHeaderDelegate(
              minHeight: 56,
              maxHeight: 56,
              child: _SliverStartSubHeader(),
            )),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              var item = startProtocol[index];
              return BlocBuilder<CountdownBloc, CountdownState>(
                builder: (context, countdownState) {
                  final isHighlighted =
                      item.starttime == _activeStartTime(countdownState);
                  return BlocBuilder<SettingsBloc, SettingsState>(builder: (
                    context,
                    settingsState,
                  ) {
                    return StartItemTile(
                      item: item,
                      onTap: () async {
                        await editStartTime(context, item);
                      },
                      onDismissed: (direction) {
                        BlocProvider.of<ProtocolBloc>(context)
                            .add(ProtocolSetDNS(number: item.number));
                      },
                      isHighlighted: isHighlighted,
                      countdown:
                          settingsState.countdownAtStartTime && isHighlighted
                              ? _countdownFromState(countdownState)
                              : null,
                    );
                  });
                },
              );
            },
            childCount: startProtocol.length,
          ),
        ),
      ],
    );
  }

  Widget _showCountdown() {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (
      context,
      settingsState,
    ) {
      if (settingsState.countdown) {
        return Positioned(
          left: settingsState.countdownLeft,
          top: settingsState.countdownTop,
          child: BlocBuilder<CountdownBloc, CountdownState>(
              builder: (context, countdownState) {
            if (countdownState is CountdownWorkingState) {
              final countdownWidget = CountdownWidget(
                key: _countdownKey,
                size: settingsState.countdownSize,
                text: countdownState.text,
              );
              return Draggable(
                child: countdownWidget,
                feedback: countdownWidget,
                childWhenDragging: const SizedBox(width: 0, height: 0),
                onDragEnd: (dragDetails) => _placeCountdownWidget(dragDetails),
              );
            } else {
              final countdownWidget = CountdownWidget(
                key: _countdownKey,
                size: settingsState.countdownSize,
              );
              return Draggable(
                child: countdownWidget,
                feedback: countdownWidget,
                childWhenDragging: const SizedBox(width: 0, height: 0),
                onDragEnd: (dragDetails) => _placeCountdownWidget(dragDetails),
              );
            }
          }),
        );
      } else {
        return const SizedBox(width: 0, height: 0);
      }
    });
  }

  void _placeCountdownWidget(DraggableDetails dragDetails) {
    var stackRenderBox = _getRenderBox(_stackKey);
    var stackOffset = stackRenderBox.localToGlobal(Offset.zero);
    var stackSize = stackRenderBox.size;
    var countdownRenderBox = _getRenderBox(_countdownKey);

    var dx = dragDetails.offset.dx;
    var dy = dragDetails.offset.dy - stackOffset.dy;

    if (dx < stackOffset.dx) {
      dx = stackOffset.dx;
    }
    if (dx > stackSize.width - countdownRenderBox.size.width) {
      dx = stackSize.width - countdownRenderBox.size.width;
    }
    if (dy < 0) {
      dy = 0;
    }
    if (dy > stackSize.height - countdownRenderBox.size.height) {
      dy = stackSize.height - countdownRenderBox.size.height;
    }

    BlocProvider.of<SettingsBloc>(context).add(SetDoubleValueEvent(
      countdownLeft: dx,
      countdownTop: dy,
    ));
  }

  RenderBox _getRenderBox(GlobalKey key) {
    return key.currentContext!.findRenderObject() as RenderBox;
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

  String? _countdownFromState(CountdownState countdownState) {
    if (countdownState is CountdownWorkingState) {
      return countdownState.text;
    }
  }
}

class _SliverStartSubHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(2),
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(children: const <Widget>[
          Flexible(
            flex: 20,
            child: Align(
              alignment: Alignment.center,
              child: Text('№'),
            ),
          ),
          Flexible(
            flex: 30,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Старт'),
            ),
          ),
          Flexible(
            flex: 25,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Ручная\r\nпоправка'),
            ),
          ),
          Flexible(
            flex: 25,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Авто\r\nпоправка'),
            ),
          ),
        ]),
      ),
    );
  }
}
