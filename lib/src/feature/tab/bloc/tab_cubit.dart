import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/app_tab.dart';

class TabCubit extends Cubit<AppTab> {
  TabCubit() : super(AppTab.init);
  void update(AppTab tab) {
    emit(tab);
  }
}
