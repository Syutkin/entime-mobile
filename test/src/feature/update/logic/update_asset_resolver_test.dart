// ignore_for_file: avoid_redundant_argument_values

import 'package:entime/src/feature/app_info/logic/app_info_provider.dart';
import 'package:entime/src/feature/app_info/logic/app_info_provider_io.dart';
import 'package:entime/src/feature/update/logic/update_asset_resolver.dart';
import 'package:entime/src/feature/update/model/updater.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/fake_platform_info.dart';

class MockAppInfoProvider extends Mock implements IAppInfoProvider {}

class MockAndroidAppInfoProvider extends Mock implements AndroidAppInfoProvider {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('UpdateAssetResolver', () {
    test('Returns null on non-Android platform', () {
      final appInfo = MockAppInfoProvider();
      final resolver = UpdateAssetResolver(
        appInfo: appInfo,
        platformInfo: FakePlatformInfo(isAndroid: false, isIOS: true),
      );

      final release = _release(tag: '1.2.3', assets: <Asset>[]);

      expect(resolver.resolve(release), isNull);
    });

    test('Returns null when ABI is unavailable', () {
      final appInfo = MockAndroidAppInfoProvider();
      when(() => appInfo.abi).thenReturn(null);
      when(() => appInfo.appName).thenReturn('entime');

      final resolver = UpdateAssetResolver(
        appInfo: appInfo,
        platformInfo: FakePlatformInfo(isAndroid: true),
      );

      final release = _release(tag: '1.2.3', assets: <Asset>[]);

      expect(resolver.resolve(release), isNull);
    });

    test('Resolves matching asset and hash', () {
      final appInfo = MockAndroidAppInfoProvider();
      when(() => appInfo.abi).thenReturn('arm64-v8a');
      when(() => appInfo.appName).thenReturn('entime');

      final resolver = UpdateAssetResolver(
        appInfo: appInfo,
        platformInfo: FakePlatformInfo(isAndroid: true),
      );

      final assets = <Asset>[
        _asset(
          name: 'entime-1.2.3-arm64-v8a.apk',
          downloadUrl: 'https://example.com/entime.apk',
        ),
        _asset(
          name: 'entime-1.2.3-arm64-v8a.apk.sha1',
          downloadUrl: 'https://example.com/entime.apk.sha1',
        ),
      ];
      final release = _release(tag: '1.2.3', assets: assets);

      final selection = resolver.resolve(release);

      expect(selection, isNotNull);
      expect(selection?.fileName, 'entime-1.2.3-arm64-v8a.apk');
      expect(selection?.downloadUrl, 'https://example.com/entime.apk');
      expect(selection?.hashUrl, 'https://example.com/entime.apk.sha1');
    });

    test('Resolves asset when tag has v-prefix', () {
      final appInfo = MockAndroidAppInfoProvider();
      when(() => appInfo.abi).thenReturn('arm64-v8a');
      when(() => appInfo.appName).thenReturn('entime');

      final resolver = UpdateAssetResolver(
        appInfo: appInfo,
        platformInfo: FakePlatformInfo(isAndroid: true),
      );

      final release = _release(
        tag: 'v1.2.3',
        assets: <Asset>[
          _asset(
            name: 'entime-1.2.3-arm64-v8a.apk',
            downloadUrl: 'https://example.com/entime.apk',
          ),
        ],
      );

      final selection = resolver.resolve(release);

      expect(selection, isNotNull);
      expect(selection?.fileName, 'entime-1.2.3-arm64-v8a.apk');
    });

    test('Resolves asset when tag has leading/trailing whitespace', () {
      final appInfo = MockAndroidAppInfoProvider();
      when(() => appInfo.abi).thenReturn('arm64-v8a');
      when(() => appInfo.appName).thenReturn('entime');

      final resolver = UpdateAssetResolver(
        appInfo: appInfo,
        platformInfo: FakePlatformInfo(isAndroid: true),
      );

      final release = _release(
        tag: '  v1.2.3  ',
        assets: <Asset>[
          _asset(
            name: 'entime-1.2.3-arm64-v8a.apk',
            downloadUrl: 'https://example.com/entime.apk',
          ),
        ],
      );

      final selection = resolver.resolve(release);

      expect(selection, isNotNull);
      expect(selection?.fileName, 'entime-1.2.3-arm64-v8a.apk');
    });

    test('Resolves asset for lowercase app name', () {
      final appInfo = MockAndroidAppInfoProvider();
      when(() => appInfo.abi).thenReturn('arm64-v8a');
      when(() => appInfo.appName).thenReturn('Entime');

      final resolver = UpdateAssetResolver(
        appInfo: appInfo,
        platformInfo: FakePlatformInfo(isAndroid: true),
      );

      final release = _release(
        tag: '1.2.3',
        assets: <Asset>[
          _asset(
            name: 'entime-1.2.3-arm64-v8a.apk',
            downloadUrl: 'https://example.com/entime.apk',
          ),
        ],
      );

      final selection = resolver.resolve(release);

      expect(selection, isNotNull);
      expect(selection?.fileName, 'entime-1.2.3-arm64-v8a.apk');
    });

    test('Returns null when no matching asset exists', () {
      final appInfo = MockAndroidAppInfoProvider();
      when(() => appInfo.abi).thenReturn('arm64-v8a');
      when(() => appInfo.appName).thenReturn('entime');

      final resolver = UpdateAssetResolver(
        appInfo: appInfo,
        platformInfo: FakePlatformInfo(isAndroid: true),
      );

      final release = _release(
        tag: '1.2.3',
        assets: <Asset>[
          _asset(
            name: 'entime-1.2.3-armeabi-v7a.apk',
            downloadUrl: 'https://example.com/entime.apk',
          ),
        ],
      );

      expect(resolver.resolve(release), isNull);
    });
  });
}

Release _release({
  required String tag,
  required List<Asset> assets,
}) {
  final timestamp = DateTime.utc(2024, 1, 1);
  return Release(
    url: 'https://example.com/release',
    assetsUrl: 'https://example.com/assets',
    uploadUrl: 'https://example.com/upload',
    htmlUrl: 'https://example.com/html',
    id: 1,
    author: _author(),
    nodeId: 'node-id',
    tagName: tag,
    targetCommitish: 'main',
    name: tag,
    draft: false,
    prerelease: false,
    createdAt: timestamp,
    publishedAt: timestamp,
    assets: assets,
    tarballUrl: 'https://example.com/tarball',
    zipballUrl: 'https://example.com/zipball',
    body: '',
  );
}

Asset _asset({
  required String name,
  required String downloadUrl,
}) {
  final timestamp = DateTime.utc(2024, 1, 1);
  return Asset(
    url: 'https://example.com/asset',
    id: 1,
    nodeId: 'asset-node-id',
    name: name,
    label: null,
    uploader: _author(),
    contentType: 'application/vnd.android.package-archive',
    state: 'uploaded',
    size: 1,
    downloadCount: 0,
    createdAt: timestamp,
    updatedAt: timestamp,
    browserDownloadUrl: downloadUrl,
  );
}

Author _author() {
  return const Author(
    login: 'user',
    id: 1,
    nodeId: 'user-node-id',
    avatarUrl: 'https://example.com/avatar.png',
    gravatarId: '',
    url: 'https://example.com/user',
    htmlUrl: 'https://example.com/user/html',
    followersUrl: 'https://example.com/user/followers',
    followingUrl: 'https://example.com/user/following',
    gistsUrl: 'https://example.com/user/gists',
    starredUrl: 'https://example.com/user/starred',
    subscriptionsUrl: 'https://example.com/user/subscriptions',
    organizationsUrl: 'https://example.com/user/orgs',
    reposUrl: 'https://example.com/user/repos',
    eventsUrl: 'https://example.com/user/events',
    receivedEventsUrl: 'https://example.com/user/received_events',
    type: 'User',
    siteAdmin: false,
  );
}
