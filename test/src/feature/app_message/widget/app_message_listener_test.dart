import 'package:entime/src/common/exceptions/known_exception.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/app_message/app_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  group('AppMessageListener', () {
    for (final testCase in _messageTestCases) {
      patrolWidgetTest('shows ${testCase.description}', ($) async {
        final appMessageCubit = AppMessageCubit();
        addTearDown(appMessageCubit.close);
        await $.pumpWidgetAndSettle(_testWidget(appMessageCubit));

        appMessageCubit.show(testCase.message);
        await $.tester.pump();
        await $.tester.pump(const Duration(milliseconds: 250));

        final messageText = testCase.expectedText();
        expect($(messageText), findsOneWidget);
        expect($(SnackBar).$(messageText), findsOneWidget);
        expect(appMessageCubit.state, isNull);
      });
    }
  });
}

Widget _testWidget(AppMessageCubit appMessageCubit) {
  return BlocProvider.value(
    value: appMessageCubit,
    child: MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: const Scaffold(
        body: AppMessageListener(
          child: SizedBox.shrink(),
        ),
      ),
    ),
  );
}

final _messageTestCases = <_MessageTestCase>[
  _MessageTestCase(
    description: 'CSV import decode failed message',
    message: const CsvImportDecodeFailedException(),
    expectedText: () => Localization.current.I18nAppMessage_csvImportDecodeFailed,
  ),
  _MessageTestCase(
    description: 'CSV import parse failed message',
    message: const CsvImportParseFailedException(),
    expectedText: () => Localization.current.I18nAppMessage_csvImportParseFailed,
  ),
  _MessageTestCase(
    description: 'CSV import charset detector unavailable message',
    message: const CsvImportCharsetDetectorUnavailableException(),
    expectedText: () => Localization.current.I18nAppMessage_csvImportCharsetDetectorUnavailable,
  ),
  _MessageTestCase(
    description: 'duplicate participant number message',
    message: const DuplicateParticipantNumberInStagesCsvException(100),
    expectedText: () => Localization.current.I18nDatabase_duplicateParticipantNumberInStagesCsv(100),
  ),
  _MessageTestCase(
    description: 'platform fallback unavailable message',
    message: const TextDecodePlatformFallbackUnavailableException(),
    expectedText: () => Localization.current.I18nAppMessage_textDecodePlatformFallbackUnavailable,
  ),
  _MessageTestCase(
    description: 'Windows fallback unavailable message',
    message: const TextDecodeWindowsFallbackUnavailableException(),
    expectedText: () => Localization.current.I18nAppMessage_textDecodeWindowsFallbackUnavailable,
  ),
  _MessageTestCase(
    description: 'uchardet library missing message',
    message: const TextDecodeUchardetLibraryMissingException(),
    expectedText: () => Localization.current.I18nAppMessage_textDecodeUchardetLibraryMissing,
  ),
  _MessageTestCase(
    description: 'uchardet symbols missing message',
    message: const TextDecodeUchardetSymbolsMissingException(),
    expectedText: () => Localization.current.I18nAppMessage_textDecodeUchardetSymbolsMissing,
  ),
  _MessageTestCase(
    description: 'iconv library missing message',
    message: const TextDecodeIconvLibraryMissingException(),
    expectedText: () => Localization.current.I18nAppMessage_textDecodeIconvLibraryMissing,
  ),
  _MessageTestCase(
    description: 'charset not detected message',
    message: const TextDecodeCharsetNotDetectedException(),
    expectedText: () => Localization.current.I18nAppMessage_textDecodeCharsetNotDetected,
  ),
  _MessageTestCase(
    description: 'conversion failed message',
    message: const TextDecodeConversionFailedException('ISO-8859-6'),
    expectedText: () => Localization.current.I18nAppMessage_textDecodeConversionFailed('ISO-8859-6'),
  ),
  _MessageTestCase(
    description: 'unknown exception message',
    message: Exception('decode failed'),
    expectedText: () => 'Exception: decode failed',
  ),
  _MessageTestCase(
    description: 'plain object message',
    message: 'plain message',
    expectedText: () => 'plain message',
  ),
];

class _MessageTestCase {
  const _MessageTestCase({
    required this.description,
    required this.message,
    required this.expectedText,
  });

  final String description;
  final Object message;
  final String Function() expectedText;
}
