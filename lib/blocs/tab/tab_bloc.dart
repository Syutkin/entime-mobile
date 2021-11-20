import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:entime/models/models.dart';

part 'tab_event.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  TabBloc() : super(AppTab.init) {
    on<TabUpdated>((event, emit) async {
      emit(event.tab);
    });
  }
}
