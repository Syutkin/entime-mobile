import 'app_info_provider.dart';
import 'app_info_provider_stub.dart' if (dart.library.io) 'app_info_provider_io.dart' as impl;

Future<IAppInfoProvider> createAppInfoProvider() => impl.createAppInfoProvider();
