import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../common/widget/sliver_sub_header_delegate.dart';
import '../../../bluetooth/bluetooth.dart';
import '../../../countdown/countdown.dart';
import '../../../init/widget/select_file_screen.dart';
import '../../../protocol/protocol.dart';
import '../../../settings/bloc/settings_bloc.dart';
import 'edit_start_time_popup.dart';
import 'start_item_tile.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreen();
}

class _StartScreen extends State<StartScreen> {
  // StreamSubscription? _voiceStream;
  // StreamSubscription? _countdownStream;

  final GlobalKey _stackKey = GlobalKey();
  final GlobalKey _countdownKey = GlobalKey();

  // @override
  // void dispose() {
  // _voiceStream?.cancel();
  // _countdownStream?.cancel();
  // super.dispose();
  // }

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
          return Column(
            children: [
              CreateOrSelectProtocolWidget(
                onTap: () => routeToSelectFileScreen(context),
              ),
            ],
          );
        }
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BlocBuilder<SettingsBloc, SettingsState>(builder: (
        context,
        settingsState,
      ) {
        if (settingsState.settings.startFab) {
          return SizedBox(
            height: settingsState.settings.startFabSize,
            width: settingsState.settings.startFabSize,
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
              .add(const ProtocolClearStartResultsDebug());
        },
        child: const Icon(Icons.clear_all),
      ),
      TextButton(
        onPressed: () {
          final AutomaticStart automaticStart = AutomaticStart(
              DateFormat('HH:mm:ss,S').format(DateTime.now()),
              1234,
              DateTime.now());
          BlocProvider.of<ProtocolBloc>(context)
              .add(ProtocolUpdateAutomaticCorrection(automaticStart: automaticStart));
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
            (context, index) {
              final item = startProtocol[index];
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
                      countdown: settingsState.settings.countdownAtStartTime &&
                              isHighlighted
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
      if (settingsState.settings.countdown) {
        return Positioned(
          left: settingsState.settings.countdownLeft,
          top: settingsState.settings.countdownTop,
          child: BlocBuilder<CountdownBloc, CountdownState>(
              builder: (context, countdownState) {
            if (countdownState is CountdownWorkingState) {
              final countdownWidget = CountdownWidget(
                key: _countdownKey,
                size: settingsState.settings.countdownSize,
                text: countdownState.text,
              );
              return Draggable(
                feedback: countdownWidget,
                childWhenDragging: const SizedBox(width: 0, height: 0),
                onDragEnd: (dragDetails) => _placeCountdownWidget(dragDetails),
                child: countdownWidget,
              );
            } else {
              final countdownWidget = CountdownWidget(
                key: _countdownKey,
                size: settingsState.settings.countdownSize,
              );
              return Draggable(
                feedback: countdownWidget,
                childWhenDragging: const SizedBox(width: 0, height: 0),
                onDragEnd: (dragDetails) => _placeCountdownWidget(dragDetails),
                child: countdownWidget,
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
    final stackRenderBox = _getRenderBox(_stackKey);
    final stackOffset = stackRenderBox.localToGlobal(Offset.zero);
    final stackSize = stackRenderBox.size;
    final countdownRenderBox = _getRenderBox(_countdownKey);

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

    final settingsBloc = context.read<SettingsBloc>();
    final settings = settingsBloc.state.settings;
    settingsBloc.add(SettingsEventUpdate(
        settings: settings.copyWith(
      countdownLeft: dx,
      countdownTop: dy,
    )));
  }

  RenderBox _getRenderBox(GlobalKey key) {
    return key.currentContext!.findRenderObject() as RenderBox;
  }

  Future<void> _addManualStartTime(BuildContext context) async {
    final time = DateTime.now();
    BlocProvider.of<ProtocolBloc>(context)
        .add(ProtocolUpdateManualStartTime(time: time));
  }

  String? _activeStartTime(CountdownState countdownState) {
    if (countdownState is CountdownWorkingState) {
      return countdownState.nextStartTime;
    }
    return null;
  }

  String? _countdownFromState(CountdownState countdownState) {
    if (countdownState is CountdownWorkingState) {
      return countdownState.text;
    }
    return null;
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
