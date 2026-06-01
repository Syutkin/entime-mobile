import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/exceptions/known_exception.dart';
import 'package:entime/src/feature/app_message/app_message.dart';
import 'package:test/test.dart';

void main() {
  group('NoopAppMessageSink', () {
    test('ignores messages', () {
      const sink = NoopAppMessageSink();

      expect(sink, isA<AppMessageSink>());
      expect(() => sink.show(const CsvImportDecodeFailedException()), returnsNormally);
    });
  });

  group('AppMessageCubit', () {
    blocTest<AppMessageCubit, Object?>(
      'emits and clears message',
      build: AppMessageCubit.new,
      act: (cubit) {
        cubit.show(const CsvImportDecodeFailedException());
        cubit.clear();
      },
      expect: () => [
        isA<CsvImportDecodeFailedException>(),
        null,
      ],
    );

    blocTest<AppMessageCubit, Object?>(
      'emits known import error',
      build: AppMessageCubit.new,
      act: (cubit) {
        cubit.show(const CsvImportParseFailedException());
      },
      expect: () => [
        isA<CsvImportParseFailedException>(),
      ],
    );

    blocTest<AppMessageCubit, Object?>(
      'emits known database error',
      build: AppMessageCubit.new,
      act: (cubit) {
        cubit.show(const DuplicateParticipantNumberInStagesCsvException(100));
      },
      expect: () => [
        isA<DuplicateParticipantNumberInStagesCsvException>().having(
          (error) => error.number,
          'number',
          100,
        ),
      ],
    );

    blocTest<AppMessageCubit, Object?>(
      'emits known text decode error',
      build: AppMessageCubit.new,
      act: (cubit) {
        cubit.show(const TextDecodeUchardetLibraryMissingException());
      },
      expect: () => [
        isA<TextDecodeUchardetLibraryMissingException>(),
      ],
    );

    blocTest<AppMessageCubit, Object?>(
      'emits unknown error',
      build: AppMessageCubit.new,
      act: (cubit) {
        cubit.show(const FormatException('decode failed'));
      },
      expect: () => [
        isA<FormatException>(),
      ],
    );
  });
}
