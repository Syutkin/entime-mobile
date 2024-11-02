import 'package:entime/src/common/utils/extension_on_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/expanded_alert_dialog.dart';
import '../../database/database.dart';
import '../bloc/trails_bloc.dart';

part 'popup/add_or_update_trail_popup.dart';

class TrailListPage extends StatelessWidget {
  final _scrollController = ScrollController();

  TrailListPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TrailsBloc>(context).add(const TrailsEvent.getTrails());
    return Scaffold(
      appBar: AppBar(
          title: Text(Localization.current.I18nDatabase_trails),
          ),
      body: BlocBuilder<TrailsBloc, TrailsState>(
        builder: (context, state) {
          return state.map(initial: (state) {
            return const CircularProgressIndicator();
          }, initialized: (state) {
            final trails = state.trails;
            return Scrollbar(
              child: ListView.builder(
                controller: _scrollController,
                shrinkWrap: true,
                itemCount: trails.length,
                itemBuilder: (context, index) {
                  final trail = trails[index];
                  return ListTile(
                    title: Text(trail.name),
                    // contentPadding: EdgeInsets.zero,
                    // title: Row(
                    //   children: <Widget>[
                    //     Flexible(
                    //       flex: 10,
                    //       child: Align(
                    //         child: _LogLevelIcon(level: item.level),
                    //       ),
                    //     ),
                    //     Flexible(
                    //       flex: 10,
                    //       child: Align(
                    //         child: _LogSourceIcon(
                    //           source: item.source.name,
                    //           direction: item.direction.name,
                    //         ),
                    //       ),
                    //     ),
                    //     Flexible(
                    //       flex: 80,
                    //       child: Align(
                    //         alignment: Alignment.centerLeft,
                    //         child: Text(item.rawData ?? ''),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  );
                },
              ),
            );
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<TrailsBloc>().add(TrailsEvent.addTrail(name: 'name'));
          // addRacePopup(context);
        },
      ),
    );
  }
}
