/// Base type for expected errors that can be mapped to user-facing messages.
sealed class KnownException implements Exception {
  const KnownException();
}

final class CsvImportDecodeFailedException extends KnownException {
  const CsvImportDecodeFailedException();
}

final class CsvImportParseFailedException extends KnownException {
  const CsvImportParseFailedException();
}

final class CsvImportCharsetDetectorUnavailableException extends KnownException {
  const CsvImportCharsetDetectorUnavailableException();
}

final class DuplicateParticipantNumberInStagesCsvException extends KnownException {
  const DuplicateParticipantNumberInStagesCsvException(this.number);

  final int number;
}

final class TextDecodePlatformFallbackUnavailableException extends KnownException {
  const TextDecodePlatformFallbackUnavailableException();
}

final class TextDecodeWindowsFallbackUnavailableException extends KnownException {
  const TextDecodeWindowsFallbackUnavailableException();
}

final class TextDecodeUchardetLibraryMissingException extends KnownException {
  const TextDecodeUchardetLibraryMissingException();
}

final class TextDecodeUchardetSymbolsMissingException extends KnownException {
  const TextDecodeUchardetSymbolsMissingException();
}

final class TextDecodeIconvLibraryMissingException extends KnownException {
  const TextDecodeIconvLibraryMissingException();
}

final class TextDecodeCharsetNotDetectedException extends KnownException {
  const TextDecodeCharsetNotDetectedException();
}

final class TextDecodeConversionFailedException extends KnownException {
  const TextDecodeConversionFailedException(this.charset);

  final String charset;
}
