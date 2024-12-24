import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:entime/src/feature/update/logic/changelog_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pub_semver/pub_semver.dart';

import '../../../common/logger/logger.dart';
import '../../app_info/logic/app_info_provider.dart';
import '../../settings/settings.dart';
import '../model/updater.dart';

typedef DownloadingHandler = void Function(int current, int total);
typedef ErrorHandler = void Function(String error);

abstract interface class IUpdateProvider {
  String get latestVersion;

  Future<bool> isUpdateAvailable();
  Future<void> downloadUpdate();
  Future<void> installApk();
  Future<String?> showChangelog();

  void onDownloading(DownloadingHandler callback);
  void onDownloadComplete(VoidCallback callback);
  void onError(ErrorHandler error);

  void stop();
}

/// Тут. Всё. Очень. Плохо.
class UpdateProvider implements IUpdateProvider {
  UpdateProvider._(
    http.Client client,
    AppInfoProvider appInfo,
    SettingsProvider settingsProvider,
  )   : _client = client,
        _appInfo = appInfo,
        _settingsProvider = settingsProvider;
  final http.Client _client;
  Release? _latestRelease;

  bool _canUpdate = false;
  bool _isDownloaded = false;

  File? _isDownloadedFile;

  final AppInfoProvider _appInfo;
  final SettingsProvider _settingsProvider;
  DownloadingHandler? _downloadingHandler;
  VoidCallback? _onDownloadComplete;
  ErrorHandler? _onError;

  @override
  String get latestVersion => _latestRelease?.tagName ?? '';

  int? _updateFileSize = -1;

  static Future<UpdateProvider> init({
    required http.Client client,
    required AppInfoProvider appInfoProvider,
    required SettingsProvider settingsProvider,
  }) async =>
      UpdateProvider._(client, appInfoProvider, settingsProvider);

  @override
  void onDownloading(DownloadingHandler callback) =>
      _downloadingHandler = callback;

  @override
  void onDownloadComplete(VoidCallback callback) =>
      _onDownloadComplete = callback;

  @override
  void onError(ErrorHandler error) => _onError = error;

  @override
  void stop() => _client.close();

  @override
  Future<bool> isUpdateAvailable() async {
    _canUpdate = false;
    try {
      _latestRelease = await _getLatestRelease();
      if (_latestRelease != null) {
        final latestVersion = Version.parse(_latestRelease!.tagName);
        final currentVersion = Version.parse(_appInfo.version);
        if (latestVersion > currentVersion) {
          logger.i('Update_provider -> Update to $latestVersion available');
          _canUpdate = true;
        }
      }
    } on Exception catch (e) {
      logger.e('Update_provider -> Some error', error: e);
    }
    return _canUpdate;
  }

  Future<Release?> _getLatestRelease() async {
    final url = Uri.parse(
      'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
    );
    try {
      final response = await _client.get(url);
      if (response.statusCode == 200) {
        final release = Release.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
        return release;
      } else {
        logger.d('Update_provider -> StatusCode: ${response.statusCode}');
        return null;
      }
    } on Exception catch (e) {
      logger.e('Update_provider -> Exception', error: e);
      return null;
      // Может возникнуть при получении некорректного json от github
    } catch (e, st) {
      logger.e('Update_provider -> Error', error: e, stackTrace: st);
      return null;
    }
  }

  @override
  Future<void> downloadUpdate() async {
    if (_canUpdate && _latestRelease != null && _appInfo.abi != null) {
      try {
        var dir = (await getDownloadsDirectory())?.path;
        dir ??= (await getApplicationDocumentsDirectory()).path;
        final fileName =
            '${_appInfo.appName}-${_latestRelease!.tagName}-${_appInfo.abi}.apk';
        final hashFileName = '$fileName.sha1';

        _isDownloadedFile = File('$dir/$fileName');

        String? fileUrl;
        String? referenceHash;
        for (final asset in _latestRelease!.assets) {
          if (asset.name == fileName) {
            fileUrl = asset.browserDownloadUrl;
          } else if (asset.name == hashFileName) {
            referenceHash = await _getReferenceHash(asset.browserDownloadUrl);
          }
        }

        if (fileUrl == null) {
          logger.w(
            'Update_provider -> Can not find remote url for filename: $fileName',
          );
          _onError?.call("Can't get downloading link");
          return;
        }

        final request = http.Request('GET', Uri.parse(fileUrl));
        final response = await _client.send(request);

        _updateFileSize = response.contentLength;

        if (_updateFileSize != null) {
          logger.d('Update_provider -> contentLength: $_updateFileSize');

          final bytes = <int>[];

          response.stream.listen(
            (newBytes) {
              // update progress
              bytes.addAll(newBytes);
              _downloadingHandler?.call(bytes.length, _updateFileSize!);
            },
            onDone: () async {
              // save file
              await _isDownloadedFile?.writeAsBytes(bytes);

              // Если файла хэша нет, то не проверяем
              if (referenceHash != null && referenceHash.isNotEmpty) {
                final fileHash =
                    (await sha1.bind(_isDownloadedFile!.openRead()).first)
                        .toString();
                if (referenceHash != fileHash) {
                  logger.e(
                    'Update_provider -> Error: Hash mismatch. Got: $fileHash, expected: $referenceHash',
                  );
                  _onError?.call('File Hash mismatch');
                  return;
                }
              }
              _isDownloaded = true;
              _onDownloadComplete?.call();
            },
            onError: (Object e) {
              logger.e('Update_provider -> Error', error: e);
              _onError?.call('Error occurred while downloading file: $e');
            },
            cancelOnError: true,
          );
        } else {
          logger.e('Update_provider -> response.contentLength is null');
          _onError?.call('File length is null');
        }
      } on Exception catch (e) {
        logger.e('Update_provider -> Exception', error: e);
        _onError?.call('Exception: $e');
      } catch (e, st) {
        logger.e('Update_provider -> Unknown error', error: e, stackTrace: st);
        _onError?.call('Unknown error: $e');
      }
    }
  }

  Future<String?> _getReferenceHash(String url) async {
    final response = await _client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      logger.d(
        'Update_provider -> Can not get file hash: StatusCode: ${response.statusCode}',
      );
      return null;
    }
  }

  @override
  Future<void> installApk() async {
    if (_canUpdate &&
        _isDownloaded &&
        _latestRelease != null &&
        _isDownloadedFile != null) {
      if (await Permission.requestInstallPackages.request().isGranted) {
        final result = await OpenFile.open(_isDownloadedFile!.path);
        logger.d(result.message);
      } else {
        logger.d('Can not update, installing packages is denied');
      }
    }
  }

  @override
  Future<String?> showChangelog() async {
    // final settings = _settingsProvider.settings;
    final previousVersion =
        Version.parse(_settingsProvider.settings.previousVersion);

    final currentVersion = Version.parse(_appInfo.version);
    // Не показывать ченджлог для не релизных версий и первого запуска
    // Не изменять значение последней запущенной версии для не релизных версий
    if (!currentVersion.isPreRelease) {
      await _settingsProvider.update(
        _settingsProvider.settings.copyWith(previousVersion: _appInfo.version),
      );
      if (currentVersion > previousVersion &&
          previousVersion !=
              Version.parse(_settingsProvider.getDefaults().previousVersion)) {
        return ChangelogProvider().changelog(currentVersion.toString(), previousVersion.toString());
        // return ShowChangelog(
        //   show: true,
        //   markdown: markdown,
        //   previousVersion: previousVersion.toString(),
        //   // currentVersion: currentVersion.toString(),
        // );
      }
    }
    return null;
  }
}
