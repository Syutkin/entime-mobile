import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../common/exceptions/known_exception.dart';
import '../../../common/localization/localization.dart';
import '../bloc/app_message_cubit.dart';

class AppMessageListener extends SingleChildStatelessWidget {
  const AppMessageListener({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return BlocListener<AppMessageCubit, Object?>(
      listenWhen: (previous, current) => current != null,
      listener: (context, message) {
        if (message == null) return;
        _showSnackBar(context, _appMessageText(message));
        context.read<AppMessageCubit>().clear();
      },
      child: child ?? const SizedBox.shrink(),
    );
  }
}

void _showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(text)));
}

String _appMessageText(Object message) {
  return switch (message) {
    KnownException() => _knownExceptionText(message),
    Exception() => message.toString(),
    _ => message.toString(),
  };
}

String _knownExceptionText(KnownException exception) {
  final i18n = Localization.current;
  return switch (exception) {
    CsvImportDecodeFailedException() => i18n.I18nAppMessage_csvImportDecodeFailed,
    CsvImportParseFailedException() => i18n.I18nAppMessage_csvImportParseFailed,
    CsvImportCharsetDetectorUnavailableException() => i18n.I18nAppMessage_csvImportCharsetDetectorUnavailable,
    DuplicateParticipantNumberInStagesCsvException(:final number) =>
      i18n.I18nDatabase_duplicateParticipantNumberInStagesCsv(number),
    TextDecodePlatformFallbackUnavailableException() => i18n.I18nAppMessage_textDecodePlatformFallbackUnavailable,
    TextDecodeWindowsFallbackUnavailableException() => i18n.I18nAppMessage_textDecodeWindowsFallbackUnavailable,
    TextDecodeUchardetLibraryMissingException() => i18n.I18nAppMessage_textDecodeUchardetLibraryMissing,
    TextDecodeUchardetSymbolsMissingException() => i18n.I18nAppMessage_textDecodeUchardetSymbolsMissing,
    TextDecodeIconvLibraryMissingException() => i18n.I18nAppMessage_textDecodeIconvLibraryMissing,
    TextDecodeCharsetNotDetectedException() => i18n.I18nAppMessage_textDecodeCharsetNotDetected,
    TextDecodeConversionFailedException(:final charset) => i18n.I18nAppMessage_textDecodeConversionFailed(charset),
  };
}
