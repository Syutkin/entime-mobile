// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updater.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Release _$ReleaseFromJson(Map<String, dynamic> json) => Release(
      url: json['url'] as String,
      assetsUrl: json['assetsUrl'] as String,
      uploadUrl: json['uploadUrl'] as String,
      htmlUrl: json['htmlUrl'] as String,
      id: json['id'] as int,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      nodeId: json['nodeId'] as String,
      tagName: json['tagName'] as String,
      targetCommitish: json['targetCommitish'] as String,
      name: json['name'] as String,
      draft: json['draft'] as bool,
      prerelease: json['prerelease'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      assets: (json['assets'] as List<dynamic>)
          .map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
      tarballUrl: json['tarballUrl'] as String,
      zipballUrl: json['zipballUrl'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$ReleaseToJson(Release instance) => <String, dynamic>{
      'url': instance.url,
      'assetsUrl': instance.assetsUrl,
      'uploadUrl': instance.uploadUrl,
      'htmlUrl': instance.htmlUrl,
      'id': instance.id,
      'author': instance.author.toJson(),
      'nodeId': instance.nodeId,
      'tagName': instance.tagName,
      'targetCommitish': instance.targetCommitish,
      'name': instance.name,
      'draft': instance.draft,
      'prerelease': instance.prerelease,
      'createdAt': instance.createdAt.toIso8601String(),
      'publishedAt': instance.publishedAt.toIso8601String(),
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      'tarballUrl': instance.tarballUrl,
      'zipballUrl': instance.zipballUrl,
      'body': instance.body,
    };

_$_Release _$$_ReleaseFromJson(Map<String, dynamic> json) => _$_Release(
      url: json['url'] as String,
      assetsUrl: json['assetsUrl'] as String,
      uploadUrl: json['uploadUrl'] as String,
      htmlUrl: json['htmlUrl'] as String,
      id: json['id'] as int,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      nodeId: json['nodeId'] as String,
      tagName: json['tagName'] as String,
      targetCommitish: json['targetCommitish'] as String,
      name: json['name'] as String,
      draft: json['draft'] as bool,
      prerelease: json['prerelease'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      assets: (json['assets'] as List<dynamic>)
          .map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
      tarballUrl: json['tarballUrl'] as String,
      zipballUrl: json['zipballUrl'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_ReleaseToJson(_$_Release instance) =>
    <String, dynamic>{
      'url': instance.url,
      'assetsUrl': instance.assetsUrl,
      'uploadUrl': instance.uploadUrl,
      'htmlUrl': instance.htmlUrl,
      'id': instance.id,
      'author': instance.author,
      'nodeId': instance.nodeId,
      'tagName': instance.tagName,
      'targetCommitish': instance.targetCommitish,
      'name': instance.name,
      'draft': instance.draft,
      'prerelease': instance.prerelease,
      'createdAt': instance.createdAt.toIso8601String(),
      'publishedAt': instance.publishedAt.toIso8601String(),
      'assets': instance.assets,
      'tarballUrl': instance.tarballUrl,
      'zipballUrl': instance.zipballUrl,
      'body': instance.body,
    };

_$_Asset _$$_AssetFromJson(Map<String, dynamic> json) => _$_Asset(
      url: json['url'] as String,
      id: json['id'] as int,
      nodeId: json['nodeId'] as String,
      name: json['name'] as String,
      label: json['label'],
      uploader: Author.fromJson(json['uploader'] as Map<String, dynamic>),
      contentType: json['contentType'] as String,
      state: json['state'] as String,
      size: json['size'] as int,
      downloadCount: json['downloadCount'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      browserDownloadUrl: json['browserDownloadUrl'] as String,
    );

Map<String, dynamic> _$$_AssetToJson(_$_Asset instance) => <String, dynamic>{
      'url': instance.url,
      'id': instance.id,
      'nodeId': instance.nodeId,
      'name': instance.name,
      'label': instance.label,
      'uploader': instance.uploader,
      'contentType': instance.contentType,
      'state': instance.state,
      'size': instance.size,
      'downloadCount': instance.downloadCount,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'browserDownloadUrl': instance.browserDownloadUrl,
    };

_$_Author _$$_AuthorFromJson(Map<String, dynamic> json) => _$_Author(
      login: json['login'] as String,
      id: json['id'] as int,
      nodeId: json['nodeId'] as String,
      avatarUrl: json['avatarUrl'] as String,
      gravatarId: json['gravatarId'] as String,
      url: json['url'] as String,
      htmlUrl: json['htmlUrl'] as String,
      followersUrl: json['followersUrl'] as String,
      followingUrl: json['followingUrl'] as String,
      gistsUrl: json['gistsUrl'] as String,
      starredUrl: json['starredUrl'] as String,
      subscriptionsUrl: json['subscriptionsUrl'] as String,
      organizationsUrl: json['organizationsUrl'] as String,
      reposUrl: json['reposUrl'] as String,
      eventsUrl: json['eventsUrl'] as String,
      receivedEventsUrl: json['receivedEventsUrl'] as String,
      type: json['type'] as String,
      siteAdmin: json['siteAdmin'] as bool,
    );

Map<String, dynamic> _$$_AuthorToJson(_$_Author instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'nodeId': instance.nodeId,
      'avatarUrl': instance.avatarUrl,
      'gravatarId': instance.gravatarId,
      'url': instance.url,
      'htmlUrl': instance.htmlUrl,
      'followersUrl': instance.followersUrl,
      'followingUrl': instance.followingUrl,
      'gistsUrl': instance.gistsUrl,
      'starredUrl': instance.starredUrl,
      'subscriptionsUrl': instance.subscriptionsUrl,
      'organizationsUrl': instance.organizationsUrl,
      'reposUrl': instance.reposUrl,
      'eventsUrl': instance.eventsUrl,
      'receivedEventsUrl': instance.receivedEventsUrl,
      'type': instance.type,
      'siteAdmin': instance.siteAdmin,
    };
