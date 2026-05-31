import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:flutter/services.dart';
import 'package:flutter_charset_detector/flutter_charset_detector.dart';
import 'package:meta/meta.dart';

Future<String?> decodeBytes(Uint8List bytes) {
  return _decodeBytes(bytes, decoder: _decodeBytesWithPlugin);
}

@visibleForTesting
Future<String?> decodeBytesForTesting(
  Uint8List bytes, {
  required Future<String?> Function(Uint8List bytes) decoder,
}) {
  return _decodeBytes(bytes, decoder: decoder);
}

Future<String?> _decodeBytes(
  Uint8List bytes, {
  required Future<String?> Function(Uint8List bytes) decoder,
}) async {
  try {
    return await decoder(bytes);
  } on MissingPluginException {
    if (Platform.isLinux) {
      return decodeWithLinuxSystemCharsetDetector(bytes);
    }
    if (Platform.isWindows) {
      // TODO: Add Windows charset fallback.
      return null;
    }
    return null;
  }
}

Future<String> _decodeBytesWithPlugin(Uint8List bytes) async {
  final result = await CharsetDetector.autoDecode(bytes);
  return result.string;
}

_LinuxSystemCharsetDetector? _linuxSystemCharsetDetector;

Future<String?> decodeWithLinuxSystemCharsetDetector(Uint8List bytes) async {
  if (!Platform.isLinux) {
    return null;
  }
  if (bytes.isEmpty) {
    return '';
  }

  final detector = _linuxSystemCharsetDetector ??= _LinuxSystemCharsetDetector.tryCreate();
  return detector?.decode(bytes);
}

final class _LinuxSystemCharsetDetector {
  _LinuxSystemCharsetDetector._({
    required this.uchardetNew,
    required this.uchardetDelete,
    required this.uchardetHandleData,
    required this.uchardetDataEnd,
    required this.uchardetGetCharset,
    required this.iconvOpen,
    required this.iconv,
    required this.iconvClose,
  });

  final _UCharDetNew uchardetNew;
  final _UCharDetDelete uchardetDelete;
  final _UCharDetHandleData uchardetHandleData;
  final _UCharDetDataEnd uchardetDataEnd;
  final _UCharDetGetCharset uchardetGetCharset;
  final _IconvOpen iconvOpen;
  final _Iconv iconv;
  final _IconvClose iconvClose;

  static _LinuxSystemCharsetDetector? tryCreate() {
    try {
      final uchardet = _openDynamicLibrary(const <String>['libuchardet.so.0', 'libuchardet.so']);
      final libc = _openDynamicLibrary(const <String>['libc.so.6', 'libiconv.so']);

      return _LinuxSystemCharsetDetector._(
        uchardetNew: uchardet.lookupFunction<ffi.Pointer<ffi.Void> Function(), _UCharDetNew>('uchardet_new'),
        uchardetDelete: uchardet.lookupFunction<ffi.Void Function(ffi.Pointer<ffi.Void>), _UCharDetDelete>(
          'uchardet_delete',
        ),
        uchardetHandleData: uchardet
            .lookupFunction<
              ffi.Int Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>, ffi.Size),
              _UCharDetHandleData
            >(
              'uchardet_handle_data',
            ),
        uchardetDataEnd: uchardet.lookupFunction<ffi.Void Function(ffi.Pointer<ffi.Void>), _UCharDetDataEnd>(
          'uchardet_data_end',
        ),
        uchardetGetCharset: uchardet
            .lookupFunction<ffi.Pointer<Utf8> Function(ffi.Pointer<ffi.Void>), _UCharDetGetCharset>(
              'uchardet_get_charset',
            ),
        iconvOpen: libc
            .lookupFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>), _IconvOpen>(
              'iconv_open',
            ),
        iconv: libc
            .lookupFunction<
              ffi.Size Function(
                ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Pointer<ffi.Char>>,
                ffi.Pointer<ffi.Size>,
                ffi.Pointer<ffi.Pointer<ffi.Char>>,
                ffi.Pointer<ffi.Size>,
              ),
              _Iconv
            >('iconv'),
        iconvClose: libc.lookupFunction<ffi.Int Function(ffi.Pointer<ffi.Void>), _IconvClose>('iconv_close'),
      );
    } catch (_) {
      return null;
    }
  }

  String? decode(Uint8List bytes) {
    final charset = _detectCharset(bytes);
    if (charset == null) {
      return null;
    }

    return _convertToUtf8(bytes, charset);
  }

  String? _detectCharset(Uint8List bytes) {
    final detector = uchardetNew();
    if (detector == ffi.nullptr) {
      return null;
    }

    final data = calloc<ffi.Uint8>(bytes.length);
    try {
      data.asTypedList(bytes.length).setAll(0, bytes);
      final result = uchardetHandleData(detector, data.cast<ffi.Char>(), bytes.length);
      if (result != 0) {
        return null;
      }

      uchardetDataEnd(detector);
      final charset = uchardetGetCharset(detector);
      if (charset == ffi.nullptr) {
        return null;
      }

      final value = charset.toDartString().trim();
      if (value.isEmpty) {
        return null;
      }
      return value;
    } finally {
      uchardetDelete(detector);
      calloc.free(data);
    }
  }

  String? _convertToUtf8(Uint8List bytes, String charset) {
    final toCode = 'UTF-8'.toNativeUtf8();
    final fromCode = charset.toNativeUtf8();
    final descriptor = iconvOpen(toCode.cast<ffi.Char>(), fromCode.cast<ffi.Char>());
    calloc
      ..free(toCode)
      ..free(fromCode);

    if (_isInvalidPointer(descriptor)) {
      return null;
    }

    final input = calloc<ffi.Uint8>(bytes.length);
    final outputCapacity = bytes.length * 4 + 4;
    final output = calloc<ffi.Uint8>(outputCapacity);
    final inputBuffer = calloc<ffi.Pointer<ffi.Char>>();
    final outputBuffer = calloc<ffi.Pointer<ffi.Char>>();
    final inputBytesLeft = calloc<ffi.Size>();
    final outputBytesLeft = calloc<ffi.Size>();

    try {
      input.asTypedList(bytes.length).setAll(0, bytes);
      inputBuffer.value = input.cast<ffi.Char>();
      outputBuffer.value = output.cast<ffi.Char>();
      inputBytesLeft.value = bytes.length;
      outputBytesLeft.value = outputCapacity;

      final result = iconv(descriptor, inputBuffer, inputBytesLeft, outputBuffer, outputBytesLeft);
      if (result == _maxSizeValue) {
        return null;
      }

      final writtenBytes = outputCapacity - outputBytesLeft.value;
      return utf8.decode(output.asTypedList(writtenBytes));
    } finally {
      iconvClose(descriptor);
      calloc
        ..free(input)
        ..free(output)
        ..free(inputBuffer)
        ..free(outputBuffer)
        ..free(inputBytesLeft)
        ..free(outputBytesLeft);
    }
  }
}

ffi.DynamicLibrary _openDynamicLibrary(List<String> names) {
  for (final name in names) {
    try {
      return ffi.DynamicLibrary.open(name);
    } catch (_) {
      // Try next library name.
    }
  }
  throw StateError('Can not open dynamic libraries: ${names.join(', ')}');
}

bool _isInvalidPointer(ffi.Pointer<ffi.Void> pointer) {
  return pointer == ffi.nullptr || pointer.address == _maxPointerAddress;
}

int get _maxPointerAddress => ffi.sizeOf<ffi.IntPtr>() == 8 ? 0xFFFFFFFFFFFFFFFF : 0xFFFFFFFF;

int get _maxSizeValue => ffi.sizeOf<ffi.Size>() == 8 ? 0xFFFFFFFFFFFFFFFF : 0xFFFFFFFF;

typedef _UCharDetNew = ffi.Pointer<ffi.Void> Function();

typedef _UCharDetDelete = void Function(ffi.Pointer<ffi.Void>);

typedef _UCharDetHandleData = int Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>, int);

typedef _UCharDetDataEnd = void Function(ffi.Pointer<ffi.Void>);

typedef _UCharDetGetCharset = ffi.Pointer<Utf8> Function(ffi.Pointer<ffi.Void>);

typedef _IconvOpen = ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>);

typedef _Iconv =
    int Function(
      ffi.Pointer<ffi.Void>,
      ffi.Pointer<ffi.Pointer<ffi.Char>>,
      ffi.Pointer<ffi.Size>,
      ffi.Pointer<ffi.Pointer<ffi.Char>>,
      ffi.Pointer<ffi.Size>,
    );

typedef _IconvClose = int Function(ffi.Pointer<ffi.Void>);
