import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/database_bloc.dart';
import '../drift/app_database.dart';
import 'stages_list_page.dart';

class RacesListPage extends StatelessWidget {
  const RacesListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context
                .read<DatabaseBloc>()
                .add(DatabaseEvent.addRace(Race(name: 'name')));
          },
        ),
        body: BlocBuilder<DatabaseBloc, DatabaseState>(
          builder: (context, state) => state.map(
            initial: (state) => const CircularProgressIndicator(),
            initialized: (state) {
              final count = state.races.length;
              return ListView.builder(
                itemCount: count,
                itemBuilder: (context, index) {
                  final race = state.races[index];
                  return ListTile(
                    title: Text(race.name),
                    onTap: () {
                      context
                          .read<DatabaseBloc>()
                          .add(DatabaseEvent.selectStages(race.id!));
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (context) =>
                              StagesListPage(raceId: race.id!),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      );
}
