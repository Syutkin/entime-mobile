// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class FakePathProviderPlatform extends Fake
    with MockPlatformInterfaceMixin
    implements PathProviderPlatform {
  FakePathProviderPlatform({
    required this.documentsPath,
    this.temporaryPath,
    this.applicationSupportPath,
    this.libraryPath,
    this.externalStoragePath,
    this.externalCachePaths,
    this.externalStoragePaths,
    this.downloadsPath,
  });

  final String documentsPath;
  final String? temporaryPath;
  final String? applicationSupportPath;
  final String? libraryPath;
  final String? externalStoragePath;
  final List<String>? externalCachePaths;
  final List<String>? externalStoragePaths;
  final String? downloadsPath;

  @override
  Future<String?> getApplicationDocumentsPath() async => documentsPath;

  @override
  Future<String?> getTemporaryPath() async => temporaryPath ?? documentsPath;

  @override
  Future<String?> getApplicationSupportPath() async => applicationSupportPath ?? documentsPath;

  @override
  Future<String?> getLibraryPath() async => libraryPath ?? documentsPath;

  @override
  Future<String?> getExternalStoragePath() async => externalStoragePath ?? documentsPath;

  @override
  Future<List<String>?> getExternalCachePaths() async =>
      externalCachePaths ?? <String>[documentsPath];

  @override
  Future<List<String>?> getExternalStoragePaths({StorageDirectory? type}) async =>
      externalStoragePaths ?? <String>[documentsPath];

  @override
  Future<String?> getDownloadsPath() async => downloadsPath ?? documentsPath;
}
