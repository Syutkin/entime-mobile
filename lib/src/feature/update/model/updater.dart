// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'updater.freezed.dart';

part 'updater.g.dart';

@freezed
class Release with _$Release {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Release({
    required String url,
    required String assetsUrl,
    required String uploadUrl,
    required String htmlUrl,
    required int id,
    required Author author,
    required String nodeId,
    required String tagName,
    required String targetCommitish,
    required String name,
    required bool draft,
    required bool prerelease,
    required DateTime createdAt,
    required DateTime publishedAt,
    required List<Asset> assets,
    required String tarballUrl,
    required String zipballUrl,
    required String body,
  }) = _Release;

  factory Release.fromJson(Map<String, dynamic> json) =>
      _$ReleaseFromJson(json);
}

@freezed
class Asset with _$Asset {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Asset({
    required String url,
    required int id,
    required String nodeId,
    required String name,
    required dynamic label,
    required Author uploader,
    required String contentType,
    required String state,
    required int size,
    required int downloadCount,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String browserDownloadUrl,
  }) = _Asset;

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}

@freezed
class Author with _$Author {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Author({
    required String login,
    required int id,
    required String nodeId,
    required String avatarUrl,
    required String gravatarId,
    required String url,
    required String htmlUrl,
    required String followersUrl,
    required String followingUrl,
    required String gistsUrl,
    required String starredUrl,
    required String subscriptionsUrl,
    required String organizationsUrl,
    required String reposUrl,
    required String eventsUrl,
    required String receivedEventsUrl,
    required String type,
    required bool siteAdmin,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
