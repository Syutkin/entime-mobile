import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';

part 'tab_event.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  TabBloc() : super(AppTab.init) {
    on<TabUpdated>((event, emit) async {
      emit(event.tab);
    });
  }
}
