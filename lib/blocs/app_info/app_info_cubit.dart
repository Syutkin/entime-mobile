import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:entime/data_providers/app_info/app_info_provider.dart';

class AppInfoCubit extends Cubit<AppInfoProvider> {
  AppInfoCubit({required AppInfoProvider appInfo}) : super(appInfo);

  String get appName => state.appName;

  String get packageName => state.packageName;

  String get buildNumber => state.buildNumber;

  String get version => state.version;
}
