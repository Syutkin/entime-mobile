import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../database/bloc/database_bloc.dart';
import '../../database/widget/finish_list_page.dart';
import '../../database/widget/races_list_page.dart';
import '../../database/widget/stages_list_page.dart';

class FinishPage extends StatelessWidget {
  const FinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DatabaseBloc, DatabaseState>(
        builder: (context, state) => state.map(
            initial: (state) => const CircularProgressIndicator(),
            initialized: (state) {
              var race = state.race;
              var stage = state.stage;
              if (race == null) {
                return RacesListPage();
              } else {
                if (stage == null) {
                  return StagesListPage(
                    race: race,
                  );
                } else {
                  return FinishListPage();
                }
              }
            }));
  }
}
