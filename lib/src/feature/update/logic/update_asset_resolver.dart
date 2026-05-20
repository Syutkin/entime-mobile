import '../../../common/logger/logger.dart';
import '../../../common/model/platform_info.dart';
import '../../app_info/logic/app_info_provider.dart';
import '../../app_info/logic/app_info_provider_io.dart';
import '../model/updater.dart';

class UpdateAssetSelection {
  const UpdateAssetSelection({
    required this.fileName,
    required this.downloadUrl,
    this.hashUrl,
  });

  final String fileName;
  final String downloadUrl;
  final String? hashUrl;
}

abstract interface class IUpdateAssetResolver {
  UpdateAssetSelection? resolve(Release release);
}

class UpdateAssetResolver implements IUpdateAssetResolver {
  UpdateAssetResolver({
    required this._appInfo,
    PlatformInfo? platformInfo,
  }) : _platformInfo = platformInfo ?? DefaultPlatformInfo();

  final IAppInfoProvider _appInfo;
  final PlatformInfo _platformInfo;

  @override
  UpdateAssetSelection? resolve(Release release) {
    if (!_platformInfo.isAndroid) {
      logger.d('UpdateAssetResolver -> Platform is not supported yet');
      return null;
    }

    final abi = _appInfo is AndroidAppInfoProvider ? _appInfo.abi : null;
    if (abi == null) {
      logger.d('UpdateAssetResolver -> ABI is null');
      return null;
    }

    final appName = _appInfo.appName;
    final appNames = <String>{appName};
    final lowerName = appName.toLowerCase();
    if (lowerName != appName) {
      appNames.add(lowerName);
    }

    final tag = release.tagName;
    final normalizedTag = _normalizeTag(tag);
    final tags = <String>{tag};
    if (normalizedTag != tag) {
      tags.add(normalizedTag);
    }

    for (final name in appNames) {
      for (final versionTag in tags) {
        final selection = _resolveAndroid(release.assets, name, abi, versionTag);
        if (selection != null) {
          return selection;
        }
      }
    }

    logger.w('UpdateAssetResolver -> Can not find asset for $appName ${release.tagName} $abi');
    return null;
  }

  UpdateAssetSelection? _resolveAndroid(List<Asset> assets, String appName, String abi, String tag) {
    final fileName = '$appName-$tag-$abi.apk';
    final hashFileName = '$fileName.sha1';

    final fileAsset = _findAsset(assets, fileName);
    if (fileAsset == null) {
      return null;
    }
    final hashAsset = _findAsset(assets, hashFileName);
    return UpdateAssetSelection(
      fileName: fileAsset.name,
      downloadUrl: fileAsset.browserDownloadUrl,
      hashUrl: hashAsset?.browserDownloadUrl,
    );
  }

  Asset? _findAsset(List<Asset> assets, String name) {
    for (final asset in assets) {
      if (asset.name == name) {
        return asset;
      }
    }
    return null;
  }

  String _normalizeTag(String tag) {
    final trimmed = tag.trim();
    if (trimmed.startsWith('v') || trimmed.startsWith('V')) {
      return trimmed.substring(1);
    }
    return trimmed;
  }
}
