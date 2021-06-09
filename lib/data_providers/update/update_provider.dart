import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;
import 'package:package_info/package_info.dart';
import 'package:pedantic/pedantic.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:install_plugin/install_plugin.dart';

import 'package:entime/models/models.dart';

typedef DownloadHandler = void Function(int current, int total);
typedef ErrorHandler = void Function(String error);

class UpdateProvider {
  String _latestVersion = '';
  bool _canUpdate = false;
  bool _downloaded = false;
  String _dir;
  DownloadHandler _downloadHandler;
  VoidCallback _onDownloadComplete;
  ErrorHandler _onError;

  String get latestVersion => _latestVersion;

  int _updateFileSize = -1;

//  int get updateFileSize => _updateFileSize;

//  StreamController _downloadBytesProgressionController =
//      StreamController<int>.broadcast();
//
//  Stream<int> get downloadBytesProgression =>
//      _downloadBytesProgressionController.stream;

  // Вынесено сюда, чтобы можно было останавливать скачивание из UI
  // с помощью stop().
  http.Client _client;

  void setDownloadingHandler(DownloadHandler callback) {
    _downloadHandler = callback;
  }

  void onDownloadComplete(VoidCallback callback) {
    _onDownloadComplete = callback;
  }

  void onError(ErrorHandler error) {
    _onError = error;
  }

  void stop() {
    _client?.close();
  }

  Future<bool> checkUpdate() async {
    try {
      _latestVersion = await getLatestVersion();
      var latestVersion = Version.parse(_latestVersion);
      var _packageInfo = await PackageInfo.fromPlatform();
      var currentVersion =
          Version.parse('${_packageInfo.version}+${_packageInfo.buildNumber}');
      if (latestVersion > currentVersion) {
        print('Update_provider: Update to $latestVersion available');
        _canUpdate = true;
        return _canUpdate;
      }
    } catch (e) {
      print(e);
      return _canUpdate;
    }
    return _canUpdate;
  }

  Future<String> getLatestVersion() async {
    var url = Uri.parse('https://raw.githubusercontent.com/Syutkin/entime/master/latestversion');
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        return response.body.trim();
      }
      else {
        print('StatusCode: ${response.statusCode}');
        return '';
      }
      // return await http.read(
      //     'https://raw.githubusercontent.com/Syutkin/entime/master/latestversion');
    } catch (e) {
      return 'error: $e';
    }
  }

  Future<void> downloadUpdate() async {
    if (await Permission.storage.request().isGranted) {
      if (_canUpdate) {
        try {
          if (Platform.isAndroid) {
            _dir = '/storage/emulated/0/Download';
          } else {
            _dir = (await getExternalStorageDirectory()).path;
          }
          File file = File('$_dir/entime-$_latestVersion.apk');

          String url =
              'https://github.com/Syutkin/entime/releases/download/$_latestVersion/entime-$_latestVersion.apk';

          final request = http.Request('GET', Uri.parse(url));
          _client = http.Client();
          final http.StreamedResponse response = await _client.send(request);

          _updateFileSize = response.contentLength;

          if (_updateFileSize != null) {
            print('Update_provider: contentLength: $_updateFileSize');

            List<int> bytes = [];

            response.stream.listen(
              (List<int> newBytes) {
                // update progress
                bytes.addAll(newBytes);
                _downloadHandler(bytes.length, _updateFileSize);
              },
              onDone: () async {
                // save file
                await file.writeAsBytes(bytes);
                _downloaded = true;
                _onDownloadComplete();
              },
              onError: (e) {
                print('Update_provider: Error: $e');
                _onError(e);
              },
              cancelOnError: true,
            );
          } else {
            _onError('response.contentLength is null');
          }
        } catch (e) {
          print(e);
        }
      }
    } else {
      print('Update_provider: Can not access file system');
    }
  }

  void installApk() {
    if (_canUpdate && _downloaded) {
      InstallPlugin.installApk(
              '$_dir/entime-$_latestVersion.apk', 'site.syutkin.entime')
          .then((result) {
        print('Update_provider: Open apk $result');
      }).catchError((error) {
        print('Update_provider: Open apk error: $error');
        _onError('Open apk error: $error');
      });
    }
  }

  Future<ShowChangelog> showChangelog() async {
    ShowChangelog showChangelog = ShowChangelog();
    var _packageInfo = await PackageInfo.fromPlatform();
    var _prefs = await SharedPreferences.getInstance();
    var previousVersion =
        Version.parse(_prefs.getString('previousVersion') ?? '0.0.0');
    var currentVersion = Version.parse('${_packageInfo.version}');
    // Не показывать ченджлог для не релизных версий и первого запуска
    // Не изменять значение последней запущенной версии для не релизных версий
    if (!currentVersion.isPreRelease) {
      unawaited(_prefs.setString('previousVersion', _packageInfo.version));
      if (currentVersion > previousVersion &&
          previousVersion != Version.parse('0.0.0')) {
        showChangelog.show = true;
        showChangelog.previousVersion = previousVersion.toString();
        showChangelog.currentVersion = currentVersion.toString();
        return showChangelog;
      }
    }
    return showChangelog;
  }
}
