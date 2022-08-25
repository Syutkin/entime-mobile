import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_changelog.freezed.dart';

@freezed
class ShowChangelog with _$ShowChangelog {
  const factory ShowChangelog({
    String? previousVersion,
    String? currentVersion,
    @Default(false) bool show,
  }) = _ShowChangelog;
}
