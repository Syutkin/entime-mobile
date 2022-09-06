import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/database_bloc.dart';
import '../drift/app_database.dart';

class StagesListPage extends StatelessWidget {
  final int raceId;
  const StagesListPage({required this.raceId, super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<DatabaseBloc>().add(
                  DatabaseEvent.addStage(
                    Stage(
                      raceId: raceId,
                      name: 'Name race$raceId',
                      isActive: true,
                    ),
                  ),
                );
          },
        ),
        body: BlocBuilder<DatabaseBloc, DatabaseState>(
          builder: (context, state) => state.map(
            initial: (state) => const CircularProgressIndicator(),
            initialized: (state) {
              final count = state.stages.length;
              return ListView.builder(
                itemCount: count,
                itemBuilder: (context, index) {
                  final stage = state.stages[index];
                  return ListTile(
                    title: Text(stage.name),
                    //ToDo: Race page
                    // onTap: () {},
                  );
                },
              );
            },
          ),
        ),
      );
}
