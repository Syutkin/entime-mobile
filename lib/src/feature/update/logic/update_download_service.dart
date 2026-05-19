import 'dart:async';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../../../common/logger/logger.dart';
import 'update_types.dart';

class UpdateDownloadException implements Exception {
  UpdateDownloadException(this.message);

  final String message;

  @override
  String toString() => message;
}

class UpdateDownloadCanceled extends UpdateDownloadException {
  UpdateDownloadCanceled() : super('Download canceled');
}

class _DigestSink implements Sink<Digest> {
  Digest? value;

  @override
  void add(Digest data) {
    value = data;
  }

  @override
  void close() {}
}

class UpdateDownloadResult {
  const UpdateDownloadResult({required this.file, required this.sha1});

  final File file;
  final String sha1;
}

abstract interface class IUpdateDownloadService {
  Future<UpdateDownloadResult> download({
    required String url,
    required String fileName,
    required DownloadingHandler onProgress,
    String? expectedSha1,
  });

  Future<void> cancel();
}

class UpdateDownloadService implements IUpdateDownloadService {
  UpdateDownloadService({required this._client});

  final http.Client _client;

  StreamSubscription<List<int>>? _subscription;
  IOSink? _sink;
  File? _tempFile;
  Completer<UpdateDownloadResult>? _completer;
  bool _isCanceled = false;

  @override
  Future<UpdateDownloadResult> download({
    required String url,
    required String fileName,
    required DownloadingHandler onProgress,
    String? expectedSha1,
  }) async {
    await cancel();
    _isCanceled = false;
    final expectedHash = expectedSha1?.trim();

    final downloadsDir = await getDownloadsDirectory();
    final appDir = await getApplicationDocumentsDirectory();
    final dirPath = downloadsDir?.path ?? appDir.path;
    final file = File(path.join(dirPath, fileName));
    final tempFile = File('${file.path}.download');
    _tempFile = tempFile;

    if (tempFile.existsSync()) {
      await tempFile.delete();
    }

    final request = http.Request('GET', Uri.parse(url));
    final response = await _client.send(request);

    if (response.statusCode != 200) {
      throw UpdateDownloadException('Server responded with ${response.statusCode}');
    }

    final total = response.contentLength;
    if (total == null || total <= 0) {
      throw UpdateDownloadException('File length is null');
    }

    final sink = tempFile.openWrite();
    _sink = sink;

    final hashSink = _DigestSink();
    final hashConverter = sha1.startChunkedConversion(hashSink);

    var received = 0;
    _completer = Completer<UpdateDownloadResult>();

    _subscription = response.stream.listen(
      (chunk) {
        received += chunk.length;
        sink.add(chunk);
        hashConverter.add(chunk);
        onProgress(received, total);
      },
      onError: (Object error, StackTrace st) async {
        final completer = _completer;
        if (completer == null) {
          return;
        }
        try {
          await _sink?.close();
          await _cleanupTempFile();
          hashConverter.close();
          if (!completer.isCompleted) {
            completer.completeError(error, st);
          }
        } catch (e, closeSt) {
          if (!completer.isCompleted) {
            completer.completeError(e, closeSt);
          }
        } finally {
          _resetState();
        }
      },
      onDone: () async {
        final completer = _completer;
        if (completer == null) {
          return;
        }
        try {
          if (_isCanceled) {
            await _cleanupTempFile();
            hashConverter.close();
            if (!completer.isCompleted) {
              completer.completeError(UpdateDownloadCanceled());
            }
            _resetState();
            return;
          }

          await sink.close();
          hashConverter.close();
          final digest = hashSink.value?.toString() ?? '';

          if (expectedHash != null && expectedHash.isNotEmpty && digest != expectedHash) {
            await _cleanupTempFile();
            if (!completer.isCompleted) {
              completer.completeError(UpdateDownloadException('File hash mismatch'));
            }
            _resetState();
            return;
          }

          if (file.existsSync()) {
            await file.delete();
          }
          await tempFile.rename(file.path);
          if (!completer.isCompleted) {
            completer.complete(UpdateDownloadResult(file: file, sha1: digest));
          }
          _resetState();
        } catch (e, st) {
          await _cleanupTempFile();
          if (!completer.isCompleted) {
            completer.completeError(e, st);
          }
          _resetState();
        }
      },
      cancelOnError: true,
    );

    return _completer!.future;
  }

  @override
  Future<void> cancel() async {
    if (_completer == null) {
      return;
    }
    _isCanceled = true;
    try {
      await _subscription?.cancel();
      await _sink?.close();
      await _cleanupTempFile();
    } catch (e, st) {
      logger.e('UpdateDownloadService -> Cancel error', error: e, stackTrace: st);
    } finally {
      if (_completer != null && !_completer!.isCompleted) {
        _completer!.completeError(UpdateDownloadCanceled());
      }
      _resetState();
    }
  }

  Future<void> _cleanupTempFile() async {
    final file = _tempFile;
    if (file == null) {
      return;
    }
    try {
      if (file.existsSync()) {
        await file.delete();
      }
    } catch (e, st) {
      logger.e('UpdateDownloadService -> Cleanup error', error: e, stackTrace: st);
    }
  }

  void _resetState() {
    _subscription = null;
    _sink = null;
    _tempFile = null;
    _completer = null;
    _isCanceled = false;
  }
}
