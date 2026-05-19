import 'package:pub_semver/pub_semver.dart';

import '../../app_info/logic/app_info_provider.dart';
import '../../settings/settings.dart';
import 'changelog_provider.dart';

abstract interface class IUpdateChangelogService {
  Future<String?> loadChangelog();
}

class UpdateChangelogService implements IUpdateChangelogService {
  UpdateChangelogService({
    required this._settingsProvider,
    required this._appInfoProvider,
    ChangelogProvider? changelogProvider,
  }) : _changelogProvider = changelogProvider ?? ChangelogProvider();

  final ISettingsProvider _settingsProvider;
  final IAppInfoProvider _appInfoProvider;
  final ChangelogProvider _changelogProvider;

  @override
  Future<String?> loadChangelog() async {
    final previousVersion = Version.parse(_settingsProvider.settings.previousVersion);
    final currentVersion = Version.parse(_appInfoProvider.version);

    if (!currentVersion.isPreRelease) {
      await _settingsProvider.update(
        _settingsProvider.settings.copyWith(previousVersion: _appInfoProvider.version),
      );
      if (currentVersion > previousVersion &&
          previousVersion != Version.parse(_settingsProvider.getDefaults().previousVersion)) {
        final changelog = await _changelogProvider.changelog(currentVersion.toString(), previousVersion.toString());
        if (changelog.trim().isEmpty) {
          return null;
        }
        return changelog;
      }
    }
    return null;
  }
}
