sealed class UpdateControllerEvent {
  const UpdateControllerEvent();
}

class UpdateControllerDownloading extends UpdateControllerEvent {
  const UpdateControllerDownloading({required this.bytes, required this.total});

  final int bytes;
  final int total;
}

class UpdateControllerDownloaded extends UpdateControllerEvent {
  const UpdateControllerDownloaded();
}

class UpdateControllerError extends UpdateControllerEvent {
  const UpdateControllerError(this.message);

  final String message;
}
