import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/app_tab.dart';

part 'tab_bloc.freezed.dart';
part 'tab_event.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  TabBloc() : super(AppTab.init) {
    on<TabEventUpdated>(transformer: sequential(), (event, emit) async {
      emit(event.tab);
    });
  }
}
