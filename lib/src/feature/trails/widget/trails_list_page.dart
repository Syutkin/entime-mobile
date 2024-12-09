import 'dart:async';
import 'dart:typed_data';

import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/feature/trails/widget/trail_item_tile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/expanded_alert_dialog.dart';
import '../../../constants/config.dart';
import '../../database/database.dart';
import '../bloc/trails_bloc.dart';

part 'popup/add_or_update_trail_popup.dart';
part 'popup/delete_trail_popup.dart';

class TrailsListPage extends StatelessWidget {
  TrailsListPage({super.key});

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TrailsBloc>(context).add(const TrailsEvent.getTrails());
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.current.I18nDatabase_trails),
      ),
      body: BlocBuilder<TrailsBloc, TrailsState>(
        builder: (context, state) {
          return state.maybeMap(
            initialized: (state) {
              final trails = state.trails;
              return Scrollbar(
                child: ListView.builder(
                  controller: _scrollController,
                  // shrinkWrap: true,
                  itemCount: trails.length,
                  itemBuilder: (context, index) {
                    final trail = trails[index];
                    return TrailItemTile(trail: trail);
                  },
                ),
              );
            },
            orElse: () {
              return const CircularProgressIndicator();
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          addTrailPopup(context);
        },
      ),
    );
  }
}
