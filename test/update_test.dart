import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'update_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client, AppInfoProvider])
void main() {
  group('UpdateProvider:', () {
    test('Initialize', () async {
      final client = MockClient();
      final appInfoProvider = MockAppInfoProvider();

      expect(
        await UpdateProvider.init(
          client: client,
          appInfoProvider: appInfoProvider,
        ),
        isA<UpdateProvider>(),
      );
    });
    test('Update available', () async {
      final client = MockClient();
      final appInfoProvider = MockAppInfoProvider();

      when(
        appInfoProvider.appName,
      ).thenAnswer((realInvocation) => 'Entime');
      when(
        appInfoProvider.version,
      ).thenAnswer((realInvocation) => '0.0.1');
      when(
        appInfoProvider.buildNumber,
      ).thenAnswer((realInvocation) => '1');
      when(
        appInfoProvider.abi,
      ).thenAnswer((realInvocation) => 'arm64-v8a');
      when(
        client.get(
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
      );

      expect(await updater.isUpdateAvailable(), true);
    });

    test('Update unavailable, you get a latest version', () async {
      final client = MockClient();
      final appInfoProvider = MockAppInfoProvider();

      when(
        appInfoProvider.appName,
      ).thenAnswer((realInvocation) => 'Entime');
      when(
        appInfoProvider.version,
      ).thenAnswer((realInvocation) => '1.0.1');
      when(
        appInfoProvider.buildNumber,
      ).thenAnswer((realInvocation) => '1');
      when(
        appInfoProvider.abi,
      ).thenAnswer((realInvocation) => 'arm64-v8a');
      when(
        client.get(
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
      );

      expect(await updater.isUpdateAvailable(), false);
    });

    test('Incorrect response from github api', () async {
      final client = MockClient();
      final appInfoProvider = MockAppInfoProvider();

      when(
        appInfoProvider.appName,
      ).thenAnswer((realInvocation) => 'Entime');
      when(
        appInfoProvider.version,
      ).thenAnswer((realInvocation) => '1.0.1');
      when(
        appInfoProvider.buildNumber,
      ).thenAnswer((realInvocation) => '1');
      when(
        appInfoProvider.abi,
      ).thenAnswer((realInvocation) => 'arm64-v8a');
      when(
        client.get(
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

      final updater = await UpdateProvider.init(
        client: client,
        appInfoProvider: appInfoProvider,
      );

      expect(await updater.isUpdateAvailable(), false);
    });

    // ToDo: handle this event
    // test('Incorrect json from github api', () async {
    //   final client = MockClient();
    //   final appInfoProvider = MockAppInfoProvider();

    //   when(
    //     appInfoProvider.appName,
    //   ).thenAnswer((realInvocation) => 'Entime');
    //   when(
    //     appInfoProvider.version,
    //   ).thenAnswer((realInvocation) => '1.0.1');
    //   when(
    //     appInfoProvider.buildNumber,
    //   ).thenAnswer((realInvocation) => '1');
    //   when(
    //     appInfoProvider.abi,
    //   ).thenAnswer((realInvocation) => 'arm64-v8a');
    //   when(
    //     client.get(
    //       Uri.parse(
    //         'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
    //       ),
    //     ),
    //   ).thenAnswer(
    //     (_) async => http.Response(
    //       '{ "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/56643443" }',
    //       200,
    //     ),
    //   );

    //   final updater = await UpdateProvider.init(
    //     client: client,
    //     appInfoProvider: appInfoProvider,
    //   );

    //   expect(await updater.isUpdateAvailable(), false);
    // });
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
