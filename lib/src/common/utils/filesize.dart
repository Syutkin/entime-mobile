/// A method returns a human readable string representing a file size
String filesize(int size, [int round = 2]) {
  /**
   * The optional parameter [round] specifies the number
   * of digits after comma/point (default is 2)
   */
  const divider = 1024;
  if (size < divider) {
    return '$size B';
  }

  if (size < divider * divider && size % divider == 0) {
    return '${(size / divider).toStringAsFixed(0)} KB';
  }

  if (size < divider * divider) {
    return '${(size / divider).toStringAsFixed(round)} KB';
  }

  if (size < divider * divider * divider && size % (divider * divider) == 0) {
    return '${(size / (divider * divider)).toStringAsFixed(0)} MB';
  }

  if (size < divider * divider * divider) {
    return '${(size / (divider * divider)).toStringAsFixed(round)} MB';
  }

  if (size < divider * divider * divider * divider &&
      size % (divider * divider * divider) == 0) {
    return '${(size / (divider * divider * divider)).toStringAsFixed(0)} GB';
  }

  if (size < divider * divider * divider * divider) {
    return '${(size / (divider * divider * divider)).toStringAsFixed(round)} GB';
  }

  if (size < divider * divider * divider * divider * divider &&
      size % (divider * divider * divider * divider) == 0) {
    return '${(size / (divider * divider * divider * divider)).toStringAsFixed(0)} TB';
  }

  if (size < divider * divider * divider * divider * divider) {
    return '${(size / (divider * divider * divider * divider)).toStringAsFixed(round)} TB';
  }

  if (size < divider * divider * divider * divider * divider * divider &&
      size % (divider * divider * divider * divider * divider) == 0) {
    return '${(size / (divider * divider * divider * divider * divider)).toStringAsFixed(0)} PB';
  }

  if (size % (divider * divider * divider * divider * divider) == 0) {
    return '${(size / (divider * divider * divider * divider * divider)).toStringAsFixed(0)} PB';
  }

  return '${(size / (divider * divider * divider * divider * divider)).toStringAsFixed(round)} PB';
}
