import '../../../constants/pubspec.yaml.g.dart';
import 'app_info_provider_factory.dart';

abstract class IAppInfoProvider {
  String get appName => Pubspec.name;

  String get buildNumber => Pubspec.version.build.first;

  String get version =>
      Pubspec.version.preRelease.isEmpty
          ? '${Pubspec.version.major}.${Pubspec.version.minor}.${Pubspec.version.patch}'
          : Pubspec.version.canonical;
}

class DefaultAppInfoProvider extends IAppInfoProvider {}

class AppInfoProvider {
  static Future<IAppInfoProvider> load() => createAppInfoProvider();
}
