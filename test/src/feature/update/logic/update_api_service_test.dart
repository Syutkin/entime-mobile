// ignore_for_file: depend_on_referenced_packages, avoid_redundant_argument_values

import 'dart:async';
import 'dart:convert';

import 'package:entime/src/feature/update/logic/update_api_service.dart';
import 'package:entime/src/feature/update/model/updater.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockClient client;

  setUpAll(() {
    registerFallbackValue(Uri.parse('https://example.com'));
    registerFallbackValue(<String, String>{});
  });

  setUp(() {
    client = MockClient();
  });

  group('UpdateApiService.fetchLatestRelease', () {
    test('Returns cached release on 304 and sends If-None-Match header', () async {
      final service = UpdateApiService(client: client, maxRetries: 0);
      final url = Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest');
      final responseBody = jsonEncode(_release(tag: '1.2.3').toJson());
      final headersSeen = <Map<String, String>>[];
      var call = 0;

      when(() => client.get(url, headers: any(named: 'headers'))).thenAnswer((invocation) async {
        final headers = Map<String, String>.from(
          (invocation.namedArguments[#headers] as Map<String, String>?) ?? <String, String>{},
        );
        headersSeen.add(headers);
        if (call == 0) {
          call++;
          return http.Response(responseBody, 200, headers: <String, String>{'etag': 'W/"etag"'});
        }
        return http.Response('', 304);
      });

      final first = await service.fetchLatestRelease();
      final second = await service.fetchLatestRelease();

      expect(first, isNotNull);
      expect(second, isNotNull);
      expect(identical(first, second), true);
      expect(headersSeen.length, 2);
      expect(headersSeen[1]['If-None-Match'], 'W/"etag"');
    });

    test('Returns null on 304 when cache is empty', () async {
      final service = UpdateApiService(client: client, maxRetries: 0);
      final url = Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest');
      when(() => client.get(url, headers: any(named: 'headers'))).thenAnswer((_) async => http.Response('', 304));

      final result = await service.fetchLatestRelease();

      expect(result, isNull);
    });

    test('Retries on retryable status and succeeds on next attempt', () async {
      final service = UpdateApiService(
        client: client,
        maxRetries: 1,
        baseBackoff: Duration.zero,
      );
      final url = Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest');
      final responseBody = jsonEncode(_release(tag: '2.0.0').toJson());
      var call = 0;

      when(() => client.get(url, headers: any(named: 'headers'))).thenAnswer((_) async {
        if (call == 0) {
          call++;
          return http.Response('error', 500);
        }
        return http.Response(responseBody, 200);
      });

      final result = await service.fetchLatestRelease();

      expect(result, isNotNull);
      verify(() => client.get(url, headers: any(named: 'headers'))).called(2);
    });

    test('Returns null when retries exhausted on retryable status', () async {
      final service = UpdateApiService(
        client: client,
        maxRetries: 1,
        baseBackoff: Duration.zero,
      );
      final url = Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest');
      when(() => client.get(url, headers: any(named: 'headers'))).thenAnswer((_) async => http.Response('error', 503));

      final result = await service.fetchLatestRelease();

      expect(result, isNull);
      verify(() => client.get(url, headers: any(named: 'headers'))).called(2);
    });

    test('Honors Retry-After header before retrying', () {
      fakeAsync((async) {
        final service = UpdateApiService(
          client: client,
          maxRetries: 1,
          baseBackoff: const Duration(days: 1),
        );
        final url = Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest');
        final responseBody = jsonEncode(_release(tag: '4.0.0').toJson());
        var call = 0;

        when(() => client.get(url, headers: any(named: 'headers'))).thenAnswer((_) async {
          if (call == 0) {
            call++;
            return http.Response('error', 429, headers: const <String, String>{'retry-after': '1'});
          }
          return http.Response(responseBody, 200);
        });

        Release? result;
        unawaited(service.fetchLatestRelease().then((value) => result = value));

        async.flushMicrotasks();
        verify(() => client.get(url, headers: any(named: 'headers'))).called(1);
        clearInteractions(client);

        async
          ..elapse(const Duration(milliseconds: 999))
          ..flushMicrotasks();
        verifyNever(() => client.get(url, headers: any(named: 'headers')));

        async
          ..elapse(const Duration(milliseconds: 1))
          ..flushMicrotasks();

        expect(result, isNotNull);
        verify(() => client.get(url, headers: any(named: 'headers'))).called(1);
      });
    });

    test('Retries on retryable exception and succeeds on next attempt', () async {
      final service = UpdateApiService(
        client: client,
        maxRetries: 1,
        baseBackoff: Duration.zero,
      );
      final url = Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest');
      final responseBody = jsonEncode(_release(tag: '3.0.0').toJson());
      var call = 0;

      when(() => client.get(url, headers: any(named: 'headers'))).thenAnswer((_) async {
        if (call == 0) {
          call++;
          throw http.ClientException('boom');
        }
        return http.Response(responseBody, 200);
      });

      final result = await service.fetchLatestRelease();

      expect(result, isNotNull);
      verify(() => client.get(url, headers: any(named: 'headers'))).called(2);
    });

    test('Returns null on non-retryable exception', () async {
      final service = UpdateApiService(
        client: client,
        maxRetries: 1,
        baseBackoff: Duration.zero,
      );
      final url = Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest');
      when(() => client.get(url, headers: any(named: 'headers'))).thenThrow(const FormatException('bad'));

      final result = await service.fetchLatestRelease();

      expect(result, isNull);
      verify(() => client.get(url, headers: any(named: 'headers'))).called(1);
    });

    test('Returns null on invalid JSON', () async {
      final service = UpdateApiService(client: client, maxRetries: 0);
      final url = Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest');
      when(() => client.get(url, headers: any(named: 'headers'))).thenAnswer((_) async => http.Response('[]', 200));

      final result = await service.fetchLatestRelease();

      expect(result, isNull);
    });
  });

  group('UpdateApiService.fetchHash', () {
    test('Returns trimmed hash on 200', () async {
      final service = UpdateApiService(client: client);
      final url = Uri.parse('https://example.com/hash');
      when(() => client.get(url)).thenAnswer((_) async => http.Response('  abc123 \n', 200));

      final result = await service.fetchHash(url.toString());

      expect(result, 'abc123');
    });

    test('Returns null for empty url', () async {
      final service = UpdateApiService(client: client);

      final result = await service.fetchHash('');

      expect(result, isNull);
      verifyNever(() => client.get(any()));
    });

    test('Returns null on non-200 status', () async {
      final service = UpdateApiService(client: client);
      final url = Uri.parse('https://example.com/hash');
      when(() => client.get(url)).thenAnswer((_) async => http.Response('nope', 404));

      final result = await service.fetchHash(url.toString());

      expect(result, isNull);
    });

    test('Returns null on client exception', () async {
      final service = UpdateApiService(client: client);
      final url = Uri.parse('https://example.com/hash');
      when(() => client.get(url)).thenThrow(http.ClientException('boom'));

      final result = await service.fetchHash(url.toString());

      expect(result, isNull);
      verify(() => client.get(url)).called(1);
    });

    test('Returns null on non-Exception error', () async {
      final service = UpdateApiService(client: client);
      final url = Uri.parse('https://example.com/hash');
      when(() => client.get(url)).thenThrow(Error());

      final result = await service.fetchHash(url.toString());

      expect(result, isNull);
      verify(() => client.get(url)).called(1);
    });
  });
}

Release _release({
  required String tag,
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
    assets: <Asset>[
      _asset(name: 'entime-$tag-arm64-v8a.apk'),
    ],
    tarballUrl: 'https://example.com/tarball',
    zipballUrl: 'https://example.com/zipball',
    body: '',
  );
}

Asset _asset({required String name}) {
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
    browserDownloadUrl: 'https://example.com/download',
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
