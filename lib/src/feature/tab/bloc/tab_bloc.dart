import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/app_tab.dart';

part 'tab_event.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  TabBloc() : super(AppTab.init) {
    on<TabUpdated>((event, emit) async {
      emit(event.tab);
    });
  }
}
