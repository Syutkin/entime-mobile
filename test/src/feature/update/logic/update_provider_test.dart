import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../helpers/shared_prefs_defaults.dart';

class MockClient extends Mock implements http.Client {}

class MockAppInfoProvider extends Mock implements AppInfoProvider {}

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockClient client;
  late MockAppInfoProvider appInfoProvider;
  late SharedPrefsSettingsProvider settings;

  setUpAll(() async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMessageHandler(
      'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
      (obj) async => obj,
    );

    SharedPreferences.setMockInitialValues(sharedPrefsDefaults);

    client = MockClient();
    appInfoProvider = MockAppInfoProvider();
    settings = await SharedPrefsSettingsProvider.load();
    await settings.setDefaults();
  });

  group('UpdateProvider.init', () {
    test('Initialize', () async {
      expect(
        await UpdateProvider.init(
          client: client,
          appInfoProvider: appInfoProvider,
          settingsProvider: settings,
        ),
        isA<UpdateProvider>(),
      );
    });
  });

  group('UpdateProvider.isUpdateAvailable', () {
    test('Update available', () async {
      when(() => appInfoProvider.appName).thenReturn('Entime');
      when(() => appInfoProvider.version).thenReturn('0.0.1');
      when(() => appInfoProvider.buildNumber).thenReturn('1');
      when(() => appInfoProvider.abi).thenReturn('arm64-v8a');
      when(
        () => client.get(
          Uri.parse(
            'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          _githubResponse,
          200,
        ),
      );

      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable(), true);
    });

    test('Update available but check disabled at settings',
        skip: 'Remove this setting from provider', () async {
      when(
        () => appInfoProvider.appName,
      ).thenAnswer((realInvocation) => 'entime');
      when(
        () => appInfoProvider.version,
      ).thenAnswer((realInvocation) => '0.0.1');
      when(
        () => appInfoProvider.buildNumber,
      ).thenAnswer((realInvocation) => '1');
      when(
        () => appInfoProvider.abi,
      ).thenAnswer((realInvocation) => 'arm64-v8a');
      when(
        () => client.get(
          Uri.parse(
            'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          _githubResponse,
          200,
        ),
      );

      await settings.update(settings.settings.copyWith(checkUpdates: false));

      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable(), false);

      await settings.update(settings.settings.copyWith(checkUpdates: true));
    });

    test('Update unavailable, you get a latest version', () async {
      when(
        () => appInfoProvider.appName,
      ).thenAnswer((realInvocation) => 'Entime');
      when(
        () => appInfoProvider.version,
      ).thenAnswer((realInvocation) => '1.0.1');
      when(
        () => appInfoProvider.buildNumber,
      ).thenAnswer((realInvocation) => '1');
      when(
        () => appInfoProvider.abi,
      ).thenAnswer((realInvocation) => 'arm64-v8a');
      when(
        () => client.get(
          Uri.parse(
            'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          _githubResponse,
          200,
        ),
      );

      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable(), false);
    });

    test('Incorrect response from github api', () async {
      when(
        () => appInfoProvider.appName,
      ).thenAnswer((realInvocation) => 'Entime');
      when(
        () => appInfoProvider.version,
      ).thenAnswer((realInvocation) => '1.0.1');
      when(
        () => appInfoProvider.buildNumber,
      ).thenAnswer((realInvocation) => '1');
      when(
        () => appInfoProvider.abi,
      ).thenAnswer((realInvocation) => 'arm64-v8a');
      when(
        () => client.get(
          Uri.parse(
            'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          'Some incorrect response',
          200,
        ),
      );
    });

    test('404 not found', () async {
      when(
        () => appInfoProvider.appName,
      ).thenAnswer((realInvocation) => 'Entime');
      when(
        () => appInfoProvider.version,
      ).thenAnswer((realInvocation) => '1.0.1');
      when(
        () => appInfoProvider.buildNumber,
      ).thenAnswer((realInvocation) => '1');
      when(
        () => appInfoProvider.abi,
      ).thenAnswer((realInvocation) => 'arm64-v8a');
      when(
        () => client.get(
          Uri.parse(
            'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          '',
          404,
        ),
      );

      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable(), false);
    });

    test('Incorrect json from github api', () async {
      final client = MockClient();
      final appInfoProvider = MockAppInfoProvider();

      when(
        () => appInfoProvider.appName,
      ).thenAnswer((realInvocation) => 'Entime');
      when(
        () => appInfoProvider.version,
      ).thenAnswer((realInvocation) => '1.0.1');
      when(
        () => appInfoProvider.buildNumber,
      ).thenAnswer((realInvocation) => '1');
      when(
        () => appInfoProvider.abi,
      ).thenAnswer((realInvocation) => 'arm64-v8a');
      when(
        () => client.get(
          Uri.parse(
            'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          '{ "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/56643443" }',
          200,
        ),
      );

      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable(), false);
    });
  });

  group('UpdateProvider.latestVersion', () {
    test('latestVersion exists', () async {
      when(
        () => client.get(
          Uri.parse(
            'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          _githubResponse,
          200,
        ),
      );

      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      await updater.isUpdateAvailable();

      expect(updater.latestVersion, '0.4.4');
    });

    test('latestVersion did not exists', () async {
      when(
        () => client.get(
          Uri.parse(
            'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          _githubResponse,
          404,
        ),
      );

      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(updater.latestVersion, '');
    });
  });

  group('UpdateProvider.showChangelog', () {
    test('First start', () async {
      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      await settings.setDefaults();

      when(
        () => appInfoProvider.version,
      ).thenAnswer(
        (realInvocation) => '1.0.1',
      );

      expect(
        await updater.showChangelog(),
        const ShowChangelog(),
      );
      // Текущая версия должна быть сохранена в настройках
      expect(
        settings.settings.previousVersion,
        '1.0.1',
      );
    });

    test('Second start', () async {
      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      when(
        () => appInfoProvider.version,
      ).thenAnswer(
        (realInvocation) => '1.0.1',
      );

      expect(
        await updater.showChangelog(),
        const ShowChangelog(),
      );
    });

    test('Program updated', () async {
      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      when(
        () => appInfoProvider.version,
      ).thenAnswer(
        (realInvocation) => '2.0.1',
      );

      expect(
        await updater.showChangelog(),
        const ShowChangelog(
          show: true,
          currentVersion: '2.0.1',
          previousVersion: '1.0.1',
        ),
      );
    });

    test('Updated to dev version', () async {
      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      when(
        () => appInfoProvider.version,
      ).thenAnswer(
        (realInvocation) => '3.0.5-dev',
      );

      // на dev версиях не покаываем ченджлог и не сохраняем версию в настройки
      expect(
        await updater.showChangelog(),
        const ShowChangelog(),
      );
      expect(
        settings.settings.previousVersion,
        '2.0.1',
      );
    });
  });
}

String _githubResponse = '''
{
  "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/56643443",
  "assets_url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/56643443/assets",
  "upload_url": "https://uploads.github.com/repos/Syutkin/entime-mobile/releases/56643443/assets{?name,label}",
  "html_url": "https://github.com/Syutkin/entime-mobile/releases/tag/0.4.4",
  "id": 56643443,
  "author": {
    "login": "Syutkin",
    "id": 10251837,
    "node_id": "MDQ6VXNlcjEwMjUxODM3",
    "avatar_url": "https://avatars.githubusercontent.com/u/10251837?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/Syutkin",
    "html_url": "https://github.com/Syutkin",
    "followers_url": "https://api.github.com/users/Syutkin/followers",
    "following_url": "https://api.github.com/users/Syutkin/following{/other_user}",
    "gists_url": "https://api.github.com/users/Syutkin/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/Syutkin/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/Syutkin/subscriptions",
    "organizations_url": "https://api.github.com/users/Syutkin/orgs",
    "repos_url": "https://api.github.com/users/Syutkin/repos",
    "events_url": "https://api.github.com/users/Syutkin/events{/privacy}",
    "received_events_url": "https://api.github.com/users/Syutkin/received_events",
    "type": "User",
    "site_admin": false
  },
  "node_id": "RE_kwDOFmC2CM4DYE9z",
  "tag_name": "0.4.4",
  "target_commitish": "master",
  "name": "0.4.4",
  "draft": false,
  "prerelease": false,
  "created_at": "2022-01-07T21:50:05Z",
  "published_at": "2022-01-07T22:07:10Z",
  "assets": [
    {
      "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/assets/53449745",
      "id": 53449745,
      "node_id": "RA_kwDOFmC2CM4DL5QR",
      "name": "entime-0.4.4-arm64-v8a.apk",
      "label": "",
      "uploader": {
        "login": "Syutkin",
        "id": 10251837,
        "node_id": "MDQ6VXNlcjEwMjUxODM3",
        "avatar_url": "https://avatars.githubusercontent.com/u/10251837?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Syutkin",
        "html_url": "https://github.com/Syutkin",
        "followers_url": "https://api.github.com/users/Syutkin/followers",
        "following_url": "https://api.github.com/users/Syutkin/following{/other_user}",
        "gists_url": "https://api.github.com/users/Syutkin/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/Syutkin/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/Syutkin/subscriptions",
        "organizations_url": "https://api.github.com/users/Syutkin/orgs",
        "repos_url": "https://api.github.com/users/Syutkin/repos",
        "events_url": "https://api.github.com/users/Syutkin/events{/privacy}",
        "received_events_url": "https://api.github.com/users/Syutkin/received_events",
        "type": "User",
        "site_admin": false
      },
      "content_type": "application/vnd.android.package-archive",
      "state": "uploaded",
      "size": 9164159,
      "download_count": 12,
      "created_at": "2022-01-07T22:07:12Z",
      "updated_at": "2022-01-07T22:07:13Z",
      "browser_download_url": "https://github.com/Syutkin/entime-mobile/releases/download/0.4.4/entime-0.4.4-arm64-v8a.apk"
    },
    {
      "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/assets/53449754",
      "id": 53449754,
      "node_id": "RA_kwDOFmC2CM4DL5Qa",
      "name": "entime-0.4.4-armeabi-v7a.apk",
      "label": "",
      "uploader": {
        "login": "Syutkin",
        "id": 10251837,
        "node_id": "MDQ6VXNlcjEwMjUxODM3",
        "avatar_url": "https://avatars.githubusercontent.com/u/10251837?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Syutkin",
        "html_url": "https://github.com/Syutkin",
        "followers_url": "https://api.github.com/users/Syutkin/followers",
        "following_url": "https://api.github.com/users/Syutkin/following{/other_user}",
        "gists_url": "https://api.github.com/users/Syutkin/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/Syutkin/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/Syutkin/subscriptions",
        "organizations_url": "https://api.github.com/users/Syutkin/orgs",
        "repos_url": "https://api.github.com/users/Syutkin/repos",
        "events_url": "https://api.github.com/users/Syutkin/events{/privacy}",
        "received_events_url": "https://api.github.com/users/Syutkin/received_events",
        "type": "User",
        "site_admin": false
      },
      "content_type": "application/vnd.android.package-archive",
      "state": "uploaded",
      "size": 8915853,
      "download_count": 1,
      "created_at": "2022-01-07T22:07:13Z",
      "updated_at": "2022-01-07T22:07:14Z",
      "browser_download_url": "https://github.com/Syutkin/entime-mobile/releases/download/0.4.4/entime-0.4.4-armeabi-v7a.apk"
    },
    {
      "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/assets/53449758",
      "id": 53449758,
      "node_id": "RA_kwDOFmC2CM4DL5Qe",
      "name": "entime-0.4.4-x86_64.apk",
      "label": "",
      "uploader": {
        "login": "Syutkin",
        "id": 10251837,
        "node_id": "MDQ6VXNlcjEwMjUxODM3",
        "avatar_url": "https://avatars.githubusercontent.com/u/10251837?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Syutkin",
        "html_url": "https://github.com/Syutkin",
        "followers_url": "https://api.github.com/users/Syutkin/followers",
        "following_url": "https://api.github.com/users/Syutkin/following{/other_user}",
        "gists_url": "https://api.github.com/users/Syutkin/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/Syutkin/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/Syutkin/subscriptions",
        "organizations_url": "https://api.github.com/users/Syutkin/orgs",
        "repos_url": "https://api.github.com/users/Syutkin/repos",
        "events_url": "https://api.github.com/users/Syutkin/events{/privacy}",
        "received_events_url": "https://api.github.com/users/Syutkin/received_events",
        "type": "User",
        "site_admin": false
      },
      "content_type": "application/vnd.android.package-archive",
      "state": "uploaded",
      "size": 9331530,
      "download_count": 1,
      "created_at": "2022-01-07T22:07:15Z",
      "updated_at": "2022-01-07T22:07:20Z",
      "browser_download_url": "https://github.com/Syutkin/entime-mobile/releases/download/0.4.4/entime-0.4.4-x86_64.apk"
    }
  ],
  "tarball_url": "https://api.github.com/repos/Syutkin/entime-mobile/tarball/0.4.4",
  "zipball_url": "https://api.github.com/repos/Syutkin/entime-mobile/zipball/0.4.4",
  "body": ""
}
''';
