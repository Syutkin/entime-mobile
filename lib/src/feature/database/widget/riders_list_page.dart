import 'dart:async';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/widget/rider_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/cancel_ok_buttons.dart';
import '../../../common/widget/expanded_alert_dialog.dart';
import '../logic/validators.dart';

part 'popup/edit_rider_popup.dart';

class RidersListPage extends StatelessWidget {
  RidersListPage({super.key});

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.current.I18nInit_riders),
      ),
      body: BlocBuilder<DatabaseBloc, DatabaseState>(
        builder: (context, state) {
          // final riders = state.riders;
          return Scrollbar(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: state.riders.length,
              itemBuilder: (context, index) {
                final rider = state.riders[index];
                return RiderItemTile(rider: rider);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // ToDo: add rider
          // addTrailPopup(context);
        },
      ),
    );
  }
}
