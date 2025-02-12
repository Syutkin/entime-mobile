// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:entime/src/feature/csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:test/test.dart';

import '../../../../helpers/startlist.dart';

Future<PlatformFile?> startlistPicker() async {
  final bytes = Uint8List.fromList(utf8.encode(startlist));
  return PlatformFile(name: 'filename', size: 1024, bytes: bytes);
}

Future<PlatformFile?> startlistPickerWithErrors() async {
  final bytes = Uint8List.fromList(utf8.encode(startlistWithErrors));
  return PlatformFile(name: 'filename', size: 1024, bytes: bytes);
}

Future<PlatformFile?> stageslistPicker() async {
  final bytes = Uint8List.fromList(utf8.encode(stageslist));
  return PlatformFile(name: 'filename', size: 1024, bytes: bytes);
}

Future<PlatformFile?> stageslistPickerWithErrors() async {
  final bytes = Uint8List.fromList(utf8.encode(stageslistWithErrors));
  return PlatformFile(name: 'filename', size: 1024, bytes: bytes);
}

Future<PlatformFile?> incorrectPicker() async {
  final bytes = Uint8List.fromList(utf8.encode('Some incorrect csv'));
  return PlatformFile(name: 'filename', size: 1024, bytes: bytes);
}

Future<PlatformFile?> nullPicker() async {
  return null;
}

Future<String> testDecoder(Uint8List bytes) async {
  return utf8.decode(bytes);
}

void main() {
  late Future<PlatformFile?> Function() filepicker;
  late Future<String> Function(Uint8List bytes) decoder;
  late StartlistProvider startlistProvider;

  group('StartlistProvider tests', () {
    group('getRaceFromFile tests', () {
      test('Get race successfully', () async {
        filepicker = startlistPicker;
        decoder = testDecoder;
        startlistProvider = StartlistProvider(filepicker: filepicker, decoder: decoder);
        final race = await startlistProvider.getRaceFromFile();
        expect(race != null, true);
        expect(race!.fileName, 'filename');
        expect(race.startItems.length, 79);
        expect(race.startItems.first.name, 'Алексахина Варвара');
      });

      test('Race csv with errors loaded', () async {
        filepicker = startlistPickerWithErrors;
        decoder = testDecoder;
        startlistProvider = StartlistProvider(filepicker: filepicker, decoder: decoder);
        final race = await startlistProvider.getRaceFromFile();
        expect(race == null, true);
      });

      test('Incorrect race csv loaded', () async {
        filepicker = incorrectPicker;
        decoder = testDecoder;
        startlistProvider = StartlistProvider(filepicker: filepicker, decoder: decoder);
        final race = await startlistProvider.getRaceFromFile();
        expect(race == null, true);
      });

      test('Null race csv file', () async {
        filepicker = nullPicker;
        decoder = testDecoder;
        startlistProvider = StartlistProvider(filepicker: filepicker, decoder: decoder);
        final race = await startlistProvider.getRaceFromFile();
        expect(race == null, true);
      });
    });

    group('getStagesFromFile tests', () {
      test('Get stages successfully', () async {
        filepicker = stageslistPicker;
        decoder = testDecoder;
        startlistProvider = StartlistProvider(filepicker: filepicker, decoder: decoder);
        final stages = await startlistProvider.getStagesFromFile();
        expect(stages != null, true);
        expect(stages!.stageNames.length, 4);
        expect(stages.startItems.length, 18);
        expect(stages.stageNames.last, 'СУ 4');
        expect(stages.startItems.last.number, 18);
        expect(stages.startItems.last.startTimes?[stages.stageNames.last], '13:17:00');
      });

      test('Stages csv with errorsloaded', () async {
        filepicker = stageslistPickerWithErrors;
        decoder = testDecoder;
        startlistProvider = StartlistProvider(filepicker: filepicker, decoder: decoder);
        final stages = await startlistProvider.getStagesFromFile();
        expect(stages == null, true);
      });

      test('Incorrect stages csv loaded', () async {
        filepicker = incorrectPicker;
        decoder = testDecoder;
        startlistProvider = StartlistProvider(filepicker: filepicker, decoder: decoder);
        final stages = await startlistProvider.getStagesFromFile();
        expect(stages == null, true);
      });

      test('Null stages csv file', () async {
        filepicker = nullPicker;
        decoder = testDecoder;
        startlistProvider = StartlistProvider(filepicker: filepicker, decoder: decoder);
        final stages = await startlistProvider.getStagesFromFile();
        expect(stages == null, true);
      });
    });
  });
}
