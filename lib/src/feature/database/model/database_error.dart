sealed class DatabaseError {
  const DatabaseError();
}

class DatabaseDuplicateParticipantNumberInStagesCsv extends DatabaseError {
  const DatabaseDuplicateParticipantNumberInStagesCsv(this.number);

  final int number;
}

class DatabaseUnexpectedError extends DatabaseError {
  const DatabaseUnexpectedError(this.message);

  final String message;
}
