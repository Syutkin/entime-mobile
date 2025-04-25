// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updater.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Release {

 String get url; String get assetsUrl; String get uploadUrl; String get htmlUrl; int get id; Author get author; String get nodeId; String get tagName; String get targetCommitish; String get name; bool get draft; bool get prerelease; DateTime get createdAt; DateTime get publishedAt; List<Asset> get assets; String get tarballUrl; String get zipballUrl; String get body;
/// Create a copy of Release
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReleaseCopyWith<Release> get copyWith => _$ReleaseCopyWithImpl<Release>(this as Release, _$identity);

  /// Serializes this Release to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Release&&(identical(other.url, url) || other.url == url)&&(identical(other.assetsUrl, assetsUrl) || other.assetsUrl == assetsUrl)&&(identical(other.uploadUrl, uploadUrl) || other.uploadUrl == uploadUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.tagName, tagName) || other.tagName == tagName)&&(identical(other.targetCommitish, targetCommitish) || other.targetCommitish == targetCommitish)&&(identical(other.name, name) || other.name == name)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.prerelease, prerelease) || other.prerelease == prerelease)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&const DeepCollectionEquality().equals(other.assets, assets)&&(identical(other.tarballUrl, tarballUrl) || other.tarballUrl == tarballUrl)&&(identical(other.zipballUrl, zipballUrl) || other.zipballUrl == zipballUrl)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,assetsUrl,uploadUrl,htmlUrl,id,author,nodeId,tagName,targetCommitish,name,draft,prerelease,createdAt,publishedAt,const DeepCollectionEquality().hash(assets),tarballUrl,zipballUrl,body);

@override
String toString() {
  return 'Release(url: $url, assetsUrl: $assetsUrl, uploadUrl: $uploadUrl, htmlUrl: $htmlUrl, id: $id, author: $author, nodeId: $nodeId, tagName: $tagName, targetCommitish: $targetCommitish, name: $name, draft: $draft, prerelease: $prerelease, createdAt: $createdAt, publishedAt: $publishedAt, assets: $assets, tarballUrl: $tarballUrl, zipballUrl: $zipballUrl, body: $body)';
}


}

/// @nodoc
abstract mixin class $ReleaseCopyWith<$Res>  {
  factory $ReleaseCopyWith(Release value, $Res Function(Release) _then) = _$ReleaseCopyWithImpl;
@useResult
$Res call({
 String url, String assetsUrl, String uploadUrl, String htmlUrl, int id, Author author, String nodeId, String tagName, String targetCommitish, String name, bool draft, bool prerelease, DateTime createdAt, DateTime publishedAt, List<Asset> assets, String tarballUrl, String zipballUrl, String body
});


$AuthorCopyWith<$Res> get author;

}
/// @nodoc
class _$ReleaseCopyWithImpl<$Res>
    implements $ReleaseCopyWith<$Res> {
  _$ReleaseCopyWithImpl(this._self, this._then);

  final Release _self;
  final $Res Function(Release) _then;

/// Create a copy of Release
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? assetsUrl = null,Object? uploadUrl = null,Object? htmlUrl = null,Object? id = null,Object? author = null,Object? nodeId = null,Object? tagName = null,Object? targetCommitish = null,Object? name = null,Object? draft = null,Object? prerelease = null,Object? createdAt = null,Object? publishedAt = null,Object? assets = null,Object? tarballUrl = null,Object? zipballUrl = null,Object? body = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,assetsUrl: null == assetsUrl ? _self.assetsUrl : assetsUrl // ignore: cast_nullable_to_non_nullable
as String,uploadUrl: null == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as Author,nodeId: null == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String,tagName: null == tagName ? _self.tagName : tagName // ignore: cast_nullable_to_non_nullable
as String,targetCommitish: null == targetCommitish ? _self.targetCommitish : targetCommitish // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as bool,prerelease: null == prerelease ? _self.prerelease : prerelease // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,tarballUrl: null == tarballUrl ? _self.tarballUrl : tarballUrl // ignore: cast_nullable_to_non_nullable
as String,zipballUrl: null == zipballUrl ? _self.zipballUrl : zipballUrl // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Release
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorCopyWith<$Res> get author {
  
  return $AuthorCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _Release implements Release {
  const _Release({required this.url, required this.assetsUrl, required this.uploadUrl, required this.htmlUrl, required this.id, required this.author, required this.nodeId, required this.tagName, required this.targetCommitish, required this.name, required this.draft, required this.prerelease, required this.createdAt, required this.publishedAt, required final  List<Asset> assets, required this.tarballUrl, required this.zipballUrl, required this.body}): _assets = assets;
  factory _Release.fromJson(Map<String, dynamic> json) => _$ReleaseFromJson(json);

@override final  String url;
@override final  String assetsUrl;
@override final  String uploadUrl;
@override final  String htmlUrl;
@override final  int id;
@override final  Author author;
@override final  String nodeId;
@override final  String tagName;
@override final  String targetCommitish;
@override final  String name;
@override final  bool draft;
@override final  bool prerelease;
@override final  DateTime createdAt;
@override final  DateTime publishedAt;
 final  List<Asset> _assets;
@override List<Asset> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}

@override final  String tarballUrl;
@override final  String zipballUrl;
@override final  String body;

/// Create a copy of Release
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReleaseCopyWith<_Release> get copyWith => __$ReleaseCopyWithImpl<_Release>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReleaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Release&&(identical(other.url, url) || other.url == url)&&(identical(other.assetsUrl, assetsUrl) || other.assetsUrl == assetsUrl)&&(identical(other.uploadUrl, uploadUrl) || other.uploadUrl == uploadUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.tagName, tagName) || other.tagName == tagName)&&(identical(other.targetCommitish, targetCommitish) || other.targetCommitish == targetCommitish)&&(identical(other.name, name) || other.name == name)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.prerelease, prerelease) || other.prerelease == prerelease)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&const DeepCollectionEquality().equals(other._assets, _assets)&&(identical(other.tarballUrl, tarballUrl) || other.tarballUrl == tarballUrl)&&(identical(other.zipballUrl, zipballUrl) || other.zipballUrl == zipballUrl)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,assetsUrl,uploadUrl,htmlUrl,id,author,nodeId,tagName,targetCommitish,name,draft,prerelease,createdAt,publishedAt,const DeepCollectionEquality().hash(_assets),tarballUrl,zipballUrl,body);

@override
String toString() {
  return 'Release(url: $url, assetsUrl: $assetsUrl, uploadUrl: $uploadUrl, htmlUrl: $htmlUrl, id: $id, author: $author, nodeId: $nodeId, tagName: $tagName, targetCommitish: $targetCommitish, name: $name, draft: $draft, prerelease: $prerelease, createdAt: $createdAt, publishedAt: $publishedAt, assets: $assets, tarballUrl: $tarballUrl, zipballUrl: $zipballUrl, body: $body)';
}


}

/// @nodoc
abstract mixin class _$ReleaseCopyWith<$Res> implements $ReleaseCopyWith<$Res> {
  factory _$ReleaseCopyWith(_Release value, $Res Function(_Release) _then) = __$ReleaseCopyWithImpl;
@override @useResult
$Res call({
 String url, String assetsUrl, String uploadUrl, String htmlUrl, int id, Author author, String nodeId, String tagName, String targetCommitish, String name, bool draft, bool prerelease, DateTime createdAt, DateTime publishedAt, List<Asset> assets, String tarballUrl, String zipballUrl, String body
});


@override $AuthorCopyWith<$Res> get author;

}
/// @nodoc
class __$ReleaseCopyWithImpl<$Res>
    implements _$ReleaseCopyWith<$Res> {
  __$ReleaseCopyWithImpl(this._self, this._then);

  final _Release _self;
  final $Res Function(_Release) _then;

/// Create a copy of Release
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? assetsUrl = null,Object? uploadUrl = null,Object? htmlUrl = null,Object? id = null,Object? author = null,Object? nodeId = null,Object? tagName = null,Object? targetCommitish = null,Object? name = null,Object? draft = null,Object? prerelease = null,Object? createdAt = null,Object? publishedAt = null,Object? assets = null,Object? tarballUrl = null,Object? zipballUrl = null,Object? body = null,}) {
  return _then(_Release(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,assetsUrl: null == assetsUrl ? _self.assetsUrl : assetsUrl // ignore: cast_nullable_to_non_nullable
as String,uploadUrl: null == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as Author,nodeId: null == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String,tagName: null == tagName ? _self.tagName : tagName // ignore: cast_nullable_to_non_nullable
as String,targetCommitish: null == targetCommitish ? _self.targetCommitish : targetCommitish // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as bool,prerelease: null == prerelease ? _self.prerelease : prerelease // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,tarballUrl: null == tarballUrl ? _self.tarballUrl : tarballUrl // ignore: cast_nullable_to_non_nullable
as String,zipballUrl: null == zipballUrl ? _self.zipballUrl : zipballUrl // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Release
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorCopyWith<$Res> get author {
  
  return $AuthorCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// @nodoc
mixin _$Asset {

 String get url; int get id; String get nodeId; String get name; dynamic get label; Author get uploader; String get contentType; String get state; int get size; int get downloadCount; DateTime get createdAt; DateTime get updatedAt; String get browserDownloadUrl;
/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetCopyWith<Asset> get copyWith => _$AssetCopyWithImpl<Asset>(this as Asset, _$identity);

  /// Serializes this Asset to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Asset&&(identical(other.url, url) || other.url == url)&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.label, label)&&(identical(other.uploader, uploader) || other.uploader == uploader)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.state, state) || other.state == state)&&(identical(other.size, size) || other.size == size)&&(identical(other.downloadCount, downloadCount) || other.downloadCount == downloadCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.browserDownloadUrl, browserDownloadUrl) || other.browserDownloadUrl == browserDownloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,id,nodeId,name,const DeepCollectionEquality().hash(label),uploader,contentType,state,size,downloadCount,createdAt,updatedAt,browserDownloadUrl);

@override
String toString() {
  return 'Asset(url: $url, id: $id, nodeId: $nodeId, name: $name, label: $label, uploader: $uploader, contentType: $contentType, state: $state, size: $size, downloadCount: $downloadCount, createdAt: $createdAt, updatedAt: $updatedAt, browserDownloadUrl: $browserDownloadUrl)';
}


}

/// @nodoc
abstract mixin class $AssetCopyWith<$Res>  {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) _then) = _$AssetCopyWithImpl;
@useResult
$Res call({
 String url, int id, String nodeId, String name, dynamic label, Author uploader, String contentType, String state, int size, int downloadCount, DateTime createdAt, DateTime updatedAt, String browserDownloadUrl
});


$AuthorCopyWith<$Res> get uploader;

}
/// @nodoc
class _$AssetCopyWithImpl<$Res>
    implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._self, this._then);

  final Asset _self;
  final $Res Function(Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? id = null,Object? nodeId = null,Object? name = null,Object? label = freezed,Object? uploader = null,Object? contentType = null,Object? state = null,Object? size = null,Object? downloadCount = null,Object? createdAt = null,Object? updatedAt = null,Object? browserDownloadUrl = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nodeId: null == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as dynamic,uploader: null == uploader ? _self.uploader : uploader // ignore: cast_nullable_to_non_nullable
as Author,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,downloadCount: null == downloadCount ? _self.downloadCount : downloadCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,browserDownloadUrl: null == browserDownloadUrl ? _self.browserDownloadUrl : browserDownloadUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorCopyWith<$Res> get uploader {
  
  return $AuthorCopyWith<$Res>(_self.uploader, (value) {
    return _then(_self.copyWith(uploader: value));
  });
}
}


/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _Asset implements Asset {
  const _Asset({required this.url, required this.id, required this.nodeId, required this.name, required this.label, required this.uploader, required this.contentType, required this.state, required this.size, required this.downloadCount, required this.createdAt, required this.updatedAt, required this.browserDownloadUrl});
  factory _Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

@override final  String url;
@override final  int id;
@override final  String nodeId;
@override final  String name;
@override final  dynamic label;
@override final  Author uploader;
@override final  String contentType;
@override final  String state;
@override final  int size;
@override final  int downloadCount;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String browserDownloadUrl;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetCopyWith<_Asset> get copyWith => __$AssetCopyWithImpl<_Asset>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Asset&&(identical(other.url, url) || other.url == url)&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.label, label)&&(identical(other.uploader, uploader) || other.uploader == uploader)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.state, state) || other.state == state)&&(identical(other.size, size) || other.size == size)&&(identical(other.downloadCount, downloadCount) || other.downloadCount == downloadCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.browserDownloadUrl, browserDownloadUrl) || other.browserDownloadUrl == browserDownloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,id,nodeId,name,const DeepCollectionEquality().hash(label),uploader,contentType,state,size,downloadCount,createdAt,updatedAt,browserDownloadUrl);

@override
String toString() {
  return 'Asset(url: $url, id: $id, nodeId: $nodeId, name: $name, label: $label, uploader: $uploader, contentType: $contentType, state: $state, size: $size, downloadCount: $downloadCount, createdAt: $createdAt, updatedAt: $updatedAt, browserDownloadUrl: $browserDownloadUrl)';
}


}

/// @nodoc
abstract mixin class _$AssetCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$AssetCopyWith(_Asset value, $Res Function(_Asset) _then) = __$AssetCopyWithImpl;
@override @useResult
$Res call({
 String url, int id, String nodeId, String name, dynamic label, Author uploader, String contentType, String state, int size, int downloadCount, DateTime createdAt, DateTime updatedAt, String browserDownloadUrl
});


@override $AuthorCopyWith<$Res> get uploader;

}
/// @nodoc
class __$AssetCopyWithImpl<$Res>
    implements _$AssetCopyWith<$Res> {
  __$AssetCopyWithImpl(this._self, this._then);

  final _Asset _self;
  final $Res Function(_Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? id = null,Object? nodeId = null,Object? name = null,Object? label = freezed,Object? uploader = null,Object? contentType = null,Object? state = null,Object? size = null,Object? downloadCount = null,Object? createdAt = null,Object? updatedAt = null,Object? browserDownloadUrl = null,}) {
  return _then(_Asset(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nodeId: null == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as dynamic,uploader: null == uploader ? _self.uploader : uploader // ignore: cast_nullable_to_non_nullable
as Author,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,downloadCount: null == downloadCount ? _self.downloadCount : downloadCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,browserDownloadUrl: null == browserDownloadUrl ? _self.browserDownloadUrl : browserDownloadUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorCopyWith<$Res> get uploader {
  
  return $AuthorCopyWith<$Res>(_self.uploader, (value) {
    return _then(_self.copyWith(uploader: value));
  });
}
}


/// @nodoc
mixin _$Author {

 String get login; int get id; String get nodeId; String get avatarUrl; String get gravatarId; String get url; String get htmlUrl; String get followersUrl; String get followingUrl; String get gistsUrl; String get starredUrl; String get subscriptionsUrl; String get organizationsUrl; String get reposUrl; String get eventsUrl; String get receivedEventsUrl; String get type; bool get siteAdmin;
/// Create a copy of Author
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorCopyWith<Author> get copyWith => _$AuthorCopyWithImpl<Author>(this as Author, _$identity);

  /// Serializes this Author to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Author&&(identical(other.login, login) || other.login == login)&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.gravatarId, gravatarId) || other.gravatarId == gravatarId)&&(identical(other.url, url) || other.url == url)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.followersUrl, followersUrl) || other.followersUrl == followersUrl)&&(identical(other.followingUrl, followingUrl) || other.followingUrl == followingUrl)&&(identical(other.gistsUrl, gistsUrl) || other.gistsUrl == gistsUrl)&&(identical(other.starredUrl, starredUrl) || other.starredUrl == starredUrl)&&(identical(other.subscriptionsUrl, subscriptionsUrl) || other.subscriptionsUrl == subscriptionsUrl)&&(identical(other.organizationsUrl, organizationsUrl) || other.organizationsUrl == organizationsUrl)&&(identical(other.reposUrl, reposUrl) || other.reposUrl == reposUrl)&&(identical(other.eventsUrl, eventsUrl) || other.eventsUrl == eventsUrl)&&(identical(other.receivedEventsUrl, receivedEventsUrl) || other.receivedEventsUrl == receivedEventsUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.siteAdmin, siteAdmin) || other.siteAdmin == siteAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,id,nodeId,avatarUrl,gravatarId,url,htmlUrl,followersUrl,followingUrl,gistsUrl,starredUrl,subscriptionsUrl,organizationsUrl,reposUrl,eventsUrl,receivedEventsUrl,type,siteAdmin);

@override
String toString() {
  return 'Author(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, siteAdmin: $siteAdmin)';
}


}

/// @nodoc
abstract mixin class $AuthorCopyWith<$Res>  {
  factory $AuthorCopyWith(Author value, $Res Function(Author) _then) = _$AuthorCopyWithImpl;
@useResult
$Res call({
 String login, int id, String nodeId, String avatarUrl, String gravatarId, String url, String htmlUrl, String followersUrl, String followingUrl, String gistsUrl, String starredUrl, String subscriptionsUrl, String organizationsUrl, String reposUrl, String eventsUrl, String receivedEventsUrl, String type, bool siteAdmin
});




}
/// @nodoc
class _$AuthorCopyWithImpl<$Res>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._self, this._then);

  final Author _self;
  final $Res Function(Author) _then;

/// Create a copy of Author
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? id = null,Object? nodeId = null,Object? avatarUrl = null,Object? gravatarId = null,Object? url = null,Object? htmlUrl = null,Object? followersUrl = null,Object? followingUrl = null,Object? gistsUrl = null,Object? starredUrl = null,Object? subscriptionsUrl = null,Object? organizationsUrl = null,Object? reposUrl = null,Object? eventsUrl = null,Object? receivedEventsUrl = null,Object? type = null,Object? siteAdmin = null,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nodeId: null == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,gravatarId: null == gravatarId ? _self.gravatarId : gravatarId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,followersUrl: null == followersUrl ? _self.followersUrl : followersUrl // ignore: cast_nullable_to_non_nullable
as String,followingUrl: null == followingUrl ? _self.followingUrl : followingUrl // ignore: cast_nullable_to_non_nullable
as String,gistsUrl: null == gistsUrl ? _self.gistsUrl : gistsUrl // ignore: cast_nullable_to_non_nullable
as String,starredUrl: null == starredUrl ? _self.starredUrl : starredUrl // ignore: cast_nullable_to_non_nullable
as String,subscriptionsUrl: null == subscriptionsUrl ? _self.subscriptionsUrl : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
as String,organizationsUrl: null == organizationsUrl ? _self.organizationsUrl : organizationsUrl // ignore: cast_nullable_to_non_nullable
as String,reposUrl: null == reposUrl ? _self.reposUrl : reposUrl // ignore: cast_nullable_to_non_nullable
as String,eventsUrl: null == eventsUrl ? _self.eventsUrl : eventsUrl // ignore: cast_nullable_to_non_nullable
as String,receivedEventsUrl: null == receivedEventsUrl ? _self.receivedEventsUrl : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,siteAdmin: null == siteAdmin ? _self.siteAdmin : siteAdmin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _Author implements Author {
  const _Author({required this.login, required this.id, required this.nodeId, required this.avatarUrl, required this.gravatarId, required this.url, required this.htmlUrl, required this.followersUrl, required this.followingUrl, required this.gistsUrl, required this.starredUrl, required this.subscriptionsUrl, required this.organizationsUrl, required this.reposUrl, required this.eventsUrl, required this.receivedEventsUrl, required this.type, required this.siteAdmin});
  factory _Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

@override final  String login;
@override final  int id;
@override final  String nodeId;
@override final  String avatarUrl;
@override final  String gravatarId;
@override final  String url;
@override final  String htmlUrl;
@override final  String followersUrl;
@override final  String followingUrl;
@override final  String gistsUrl;
@override final  String starredUrl;
@override final  String subscriptionsUrl;
@override final  String organizationsUrl;
@override final  String reposUrl;
@override final  String eventsUrl;
@override final  String receivedEventsUrl;
@override final  String type;
@override final  bool siteAdmin;

/// Create a copy of Author
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorCopyWith<_Author> get copyWith => __$AuthorCopyWithImpl<_Author>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Author&&(identical(other.login, login) || other.login == login)&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.gravatarId, gravatarId) || other.gravatarId == gravatarId)&&(identical(other.url, url) || other.url == url)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.followersUrl, followersUrl) || other.followersUrl == followersUrl)&&(identical(other.followingUrl, followingUrl) || other.followingUrl == followingUrl)&&(identical(other.gistsUrl, gistsUrl) || other.gistsUrl == gistsUrl)&&(identical(other.starredUrl, starredUrl) || other.starredUrl == starredUrl)&&(identical(other.subscriptionsUrl, subscriptionsUrl) || other.subscriptionsUrl == subscriptionsUrl)&&(identical(other.organizationsUrl, organizationsUrl) || other.organizationsUrl == organizationsUrl)&&(identical(other.reposUrl, reposUrl) || other.reposUrl == reposUrl)&&(identical(other.eventsUrl, eventsUrl) || other.eventsUrl == eventsUrl)&&(identical(other.receivedEventsUrl, receivedEventsUrl) || other.receivedEventsUrl == receivedEventsUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.siteAdmin, siteAdmin) || other.siteAdmin == siteAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,id,nodeId,avatarUrl,gravatarId,url,htmlUrl,followersUrl,followingUrl,gistsUrl,starredUrl,subscriptionsUrl,organizationsUrl,reposUrl,eventsUrl,receivedEventsUrl,type,siteAdmin);

@override
String toString() {
  return 'Author(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, siteAdmin: $siteAdmin)';
}


}

/// @nodoc
abstract mixin class _$AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$AuthorCopyWith(_Author value, $Res Function(_Author) _then) = __$AuthorCopyWithImpl;
@override @useResult
$Res call({
 String login, int id, String nodeId, String avatarUrl, String gravatarId, String url, String htmlUrl, String followersUrl, String followingUrl, String gistsUrl, String starredUrl, String subscriptionsUrl, String organizationsUrl, String reposUrl, String eventsUrl, String receivedEventsUrl, String type, bool siteAdmin
});




}
/// @nodoc
class __$AuthorCopyWithImpl<$Res>
    implements _$AuthorCopyWith<$Res> {
  __$AuthorCopyWithImpl(this._self, this._then);

  final _Author _self;
  final $Res Function(_Author) _then;

/// Create a copy of Author
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? id = null,Object? nodeId = null,Object? avatarUrl = null,Object? gravatarId = null,Object? url = null,Object? htmlUrl = null,Object? followersUrl = null,Object? followingUrl = null,Object? gistsUrl = null,Object? starredUrl = null,Object? subscriptionsUrl = null,Object? organizationsUrl = null,Object? reposUrl = null,Object? eventsUrl = null,Object? receivedEventsUrl = null,Object? type = null,Object? siteAdmin = null,}) {
  return _then(_Author(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nodeId: null == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,gravatarId: null == gravatarId ? _self.gravatarId : gravatarId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,followersUrl: null == followersUrl ? _self.followersUrl : followersUrl // ignore: cast_nullable_to_non_nullable
as String,followingUrl: null == followingUrl ? _self.followingUrl : followingUrl // ignore: cast_nullable_to_non_nullable
as String,gistsUrl: null == gistsUrl ? _self.gistsUrl : gistsUrl // ignore: cast_nullable_to_non_nullable
as String,starredUrl: null == starredUrl ? _self.starredUrl : starredUrl // ignore: cast_nullable_to_non_nullable
as String,subscriptionsUrl: null == subscriptionsUrl ? _self.subscriptionsUrl : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
as String,organizationsUrl: null == organizationsUrl ? _self.organizationsUrl : organizationsUrl // ignore: cast_nullable_to_non_nullable
as String,reposUrl: null == reposUrl ? _self.reposUrl : reposUrl // ignore: cast_nullable_to_non_nullable
as String,eventsUrl: null == eventsUrl ? _self.eventsUrl : eventsUrl // ignore: cast_nullable_to_non_nullable
as String,receivedEventsUrl: null == receivedEventsUrl ? _self.receivedEventsUrl : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,siteAdmin: null == siteAdmin ? _self.siteAdmin : siteAdmin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
