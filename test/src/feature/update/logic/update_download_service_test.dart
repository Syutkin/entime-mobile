// ignore_for_file: depend_on_referenced_packages, unnecessary_underscores, avoid_redundant_argument_values

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:entime/src/feature/update/logic/update_download_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHttpClient extends Mock implements http.Client {}

class FakePathProviderPlatform extends Fake with MockPlatformInterfaceMixin implements PathProviderPlatform {
  FakePathProviderPlatform({
    required this.downloadsPath,
    required this.documentsPath,
  });

  final String? downloadsPath;
  final String documentsPath;

  @override
  Future<String?> getDownloadsPath() async => downloadsPath;

  @override
  Future<String?> getApplicationDocumentsPath() async => documentsPath;

  @override
  Future<String?> getTemporaryPath() async => documentsPath;

  @override
  Future<String?> getApplicationSupportPath() async => documentsPath;

  @override
  Future<String?> getLibraryPath() async => documentsPath;

  @override
  Future<String?> getExternalStoragePath() async => documentsPath;

  @override
  Future<List<String>?> getExternalCachePaths() async => <String>[documentsPath];

  @override
  Future<List<String>?> getExternalStoragePaths({StorageDirectory? type}) async => <String>[documentsPath];
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late Directory tempDir;
  late String downloadsPath;
  late String documentsPath;
  late MockHttpClient client;
  late UpdateDownloadService service;

  setUpAll(() {
    registerFallbackValue(http.Request('GET', Uri.parse('https://example.com')));
  });

  setUp(() async {
    tempDir = await Directory.systemTemp.createTemp('update_download_service_test_');
    downloadsPath = path.join(tempDir.path, 'downloads');
    documentsPath = path.join(tempDir.path, 'documents');
    await Directory(downloadsPath).create(recursive: true);
    await Directory(documentsPath).create(recursive: true);

    PathProviderPlatform.instance = FakePathProviderPlatform(
      downloadsPath: downloadsPath,
      documentsPath: documentsPath,
    );

    client = MockHttpClient();
    service = UpdateDownloadService(client: client);
  });

  tearDown(() async {
    await tempDir.delete(recursive: true);
  });

  group('UpdateDownloadService.download', () {
    test('Downloads file, reports progress, and returns sha1', () async {
      final bytes = utf8.encode('hello world');
      final digest = sha1.convert(bytes).toString();
      final response = http.StreamedResponse(
        Stream<List<int>>.fromIterable(<List<int>>[bytes]),
        200,
        contentLength: bytes.length,
      );
      when(() => client.send(any())).thenAnswer((_) async => response);

      final progress = <List<int>>[];
      final result = await service.download(
        url: 'https://example.com/entime.apk',
        fileName: 'entime.apk',
        expectedSha1: '  $digest  ',
        onProgress: (current, total) => progress.add(<int>[current, total]),
      );

      expect(result.sha1, digest);
      expect(result.file.path, path.join(downloadsPath, 'entime.apk'));
      expect(result.file.existsSync(), true);
      expect(progress.isNotEmpty, true);
      expect(progress.last, <int>[bytes.length, bytes.length]);
      expect(File('${result.file.path}.download').existsSync(), false);
    });

    test('Throws when server returns non-200', () async {
      final bytes = utf8.encode('data');
      final response = http.StreamedResponse(
        Stream<List<int>>.fromIterable(<List<int>>[bytes]),
        404,
        contentLength: bytes.length,
      );
      when(() => client.send(any())).thenAnswer((_) async => response);

      await expectLater(
        service.download(
          url: 'https://example.com/entime.apk',
          fileName: 'entime.apk',
          expectedSha1: null,
          onProgress: (_, __) {},
        ),
        throwsA(
          isA<UpdateDownloadException>().having(
            (e) => e.message,
            'message',
            'Server responded with 404',
          ),
        ),
      );
    });

    test('Throws when content length is null or zero', () async {
      final response = http.StreamedResponse(
        Stream<List<int>>.fromIterable(<List<int>>[utf8.encode('data')]),
        200,
        contentLength: 0,
      );
      when(() => client.send(any())).thenAnswer((_) async => response);

      await expectLater(
        service.download(
          url: 'https://example.com/entime.apk',
          fileName: 'entime.apk',
          expectedSha1: null,
          onProgress: (_, __) {},
        ),
        throwsA(
          isA<UpdateDownloadException>().having(
            (e) => e.message,
            'message',
            'File length is null',
          ),
        ),
      );
    });

    test('Throws when content length is null', () async {
      final response = http.StreamedResponse(
        Stream<List<int>>.fromIterable(<List<int>>[utf8.encode('data')]),
        200,
        contentLength: null,
      );
      when(() => client.send(any())).thenAnswer((_) async => response);

      await expectLater(
        service.download(
          url: 'https://example.com/entime.apk',
          fileName: 'entime.apk',
          expectedSha1: null,
          onProgress: (_, __) {},
        ),
        throwsA(
          isA<UpdateDownloadException>().having(
            (e) => e.message,
            'message',
            'File length is null',
          ),
        ),
      );
    });

    test('Throws when hash mismatch and cleans temp file', () async {
      final bytes = utf8.encode('data');
      final response = http.StreamedResponse(
        Stream<List<int>>.fromIterable(<List<int>>[bytes]),
        200,
        contentLength: bytes.length,
      );
      when(() => client.send(any())).thenAnswer((_) async => response);

      final filePath = path.join(downloadsPath, 'entime.apk');

      await expectLater(
        service.download(
          url: 'https://example.com/entime.apk',
          fileName: 'entime.apk',
          expectedSha1: 'not-a-hash',
          onProgress: (_, __) {},
        ),
        throwsA(
          isA<UpdateDownloadException>().having(
            (e) => e.message,
            'message',
            'File hash mismatch',
          ),
        ),
      );

      expect(File(filePath).existsSync(), false);
      expect(File('$filePath.download').existsSync(), false);
    });

    test('Falls back to documents directory when downloads directory is null', () async {
      PathProviderPlatform.instance = FakePathProviderPlatform(
        downloadsPath: null,
        documentsPath: documentsPath,
      );

      final bytes = utf8.encode('data');
      final response = http.StreamedResponse(
        Stream<List<int>>.fromIterable(<List<int>>[bytes]),
        200,
        contentLength: bytes.length,
      );
      when(() => client.send(any())).thenAnswer((_) async => response);

      final result = await service.download(
        url: 'https://example.com/entime.apk',
        fileName: 'entime.apk',
        expectedSha1: null,
        onProgress: (_, __) {},
      );

      expect(result.file.path, path.join(documentsPath, 'entime.apk'));
      expect(result.file.existsSync(), true);
    });

    test('Removes existing temp file before download', () async {
      final tempFile = File(path.join(downloadsPath, 'entime.apk.download'));
      await tempFile.writeAsString('old');

      final bytes = utf8.encode('new');
      final response = http.StreamedResponse(
        Stream<List<int>>.fromIterable(<List<int>>[bytes]),
        200,
        contentLength: bytes.length,
      );
      when(() => client.send(any())).thenAnswer((_) async => response);

      final result = await service.download(
        url: 'https://example.com/entime.apk',
        fileName: 'entime.apk',
        expectedSha1: null,
        onProgress: (_, __) {},
      );

      expect(File('${result.file.path}.download').existsSync(), false);
      expect(await result.file.readAsBytes(), bytes);
    });

    test('Cleans temp file when stream emits error', () async {
      final controller = StreamController<List<int>>();
      final response = http.StreamedResponse(
        controller.stream,
        200,
        contentLength: 1,
      );
      when(() => client.send(any())).thenAnswer((_) async => response);

      final filePath = path.join(downloadsPath, 'entime.apk');
      final future = service.download(
        url: 'https://example.com/entime.apk',
        fileName: 'entime.apk',
        expectedSha1: null,
        onProgress: (_, __) {},
      );

      controller.addError(Exception('boom'));

      await expectLater(future, throwsA(isA<Exception>()));

      expect(File(filePath).existsSync(), false);
      expect(File('$filePath.download').existsSync(), false);
      await controller.close();
    });

    test('Cancel interrupts download and cleans temp file', () async {
      final bytes = utf8.encode('data');
      final controller = StreamController<List<int>>();
      final response = http.StreamedResponse(
        controller.stream,
        200,
        contentLength: bytes.length * 2,
      );
      when(() => client.send(any())).thenAnswer((_) async => response);

      final filePath = path.join(downloadsPath, 'entime.apk');
      final future = service.download(
        url: 'https://example.com/entime.apk',
        fileName: 'entime.apk',
        expectedSha1: null,
        onProgress: (_, __) {},
      );

      controller.add(bytes);
      await Future<void>.delayed(Duration.zero);
      await service.cancel();

      await expectLater(future, throwsA(isA<UpdateDownloadCanceled>()));

      expect(File(filePath).existsSync(), false);
      expect(File('$filePath.download').existsSync(), false);
      await controller.close();
    });
  });
}
