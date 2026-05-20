import 'package:device_info_plus/device_info_plus.dart';

import 'app_info_provider.dart';

Future<IAppInfoProvider> createAppInfoProvider({
  DeviceInfoPlugin? deviceInfoPlugin,
  bool? isAndroidOverride,
}) async => DefaultAppInfoProvider();
