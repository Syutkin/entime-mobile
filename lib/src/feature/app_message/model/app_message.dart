enum AppMessageSeverity { info, success, warning, error }

sealed class AppMessage {
  const AppMessage();

  AppMessageSeverity get severity;
}

sealed class CsvMessage extends AppMessage {
  const CsvMessage();
}

final class AppCsvImportDecodeFailed extends CsvMessage {
  const AppCsvImportDecodeFailed();

  @override
  AppMessageSeverity get severity => AppMessageSeverity.error;
}

final class AppCsvImportParseFailed extends CsvMessage {
  const AppCsvImportParseFailed();

  @override
  AppMessageSeverity get severity => AppMessageSeverity.error;
}

final class AppCsvImportCharsetDetectorUnavailable extends CsvMessage {
  const AppCsvImportCharsetDetectorUnavailable();

  @override
  AppMessageSeverity get severity => AppMessageSeverity.error;
}

sealed class DatabaseMessage extends AppMessage {
  const DatabaseMessage();
}

final class AppDuplicateParticipantNumberInStagesCsv extends DatabaseMessage {
  const AppDuplicateParticipantNumberInStagesCsv(this.number);

  final int number;

  @override
  AppMessageSeverity get severity => AppMessageSeverity.error;
}

final class AppUnexpectedError extends AppMessage {
  const AppUnexpectedError(this.message);

  final String message;

  @override
  AppMessageSeverity get severity => AppMessageSeverity.error;
}
