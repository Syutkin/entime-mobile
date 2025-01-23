import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RaceAndStageSelector extends StatelessWidget {
  const RaceAndStageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DatabaseBloc, DatabaseState>(
        builder: (context, state) {
          final race = state.race;
          final stage = state.stage;
          if (race == null) {
            return const RacesListPage();
          } else {
            if (stage == null) {
              return StagesListPage(race: race);
            } else {
              return const SizedBox.shrink();
            }
          }
        },
      ),
    );
  }
}
