// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'updater.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Release _$ReleaseFromJson(Map<String, dynamic> json) {
  return _Release.fromJson(json);
}

/// @nodoc
mixin _$Release {
  String get url => throw _privateConstructorUsedError;
  String get assetsUrl => throw _privateConstructorUsedError;
  String get uploadUrl => throw _privateConstructorUsedError;
  String get htmlUrl => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;
  String get nodeId => throw _privateConstructorUsedError;
  String get tagName => throw _privateConstructorUsedError;
  String get targetCommitish => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get draft => throw _privateConstructorUsedError;
  bool get prerelease => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  List<Asset> get assets => throw _privateConstructorUsedError;
  String get tarballUrl => throw _privateConstructorUsedError;
  String get zipballUrl => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseCopyWith<Release> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseCopyWith<$Res> {
  factory $ReleaseCopyWith(Release value, $Res Function(Release) then) =
      _$ReleaseCopyWithImpl<$Res>;
  $Res call(
      {String url,
      String assetsUrl,
      String uploadUrl,
      String htmlUrl,
      int id,
      Author author,
      String nodeId,
      String tagName,
      String targetCommitish,
      String name,
      bool draft,
      bool prerelease,
      DateTime createdAt,
      DateTime publishedAt,
      List<Asset> assets,
      String tarballUrl,
      String zipballUrl,
      String body});

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$ReleaseCopyWithImpl<$Res> implements $ReleaseCopyWith<$Res> {
  _$ReleaseCopyWithImpl(this._value, this._then);

  final Release _value;
  // ignore: unused_field
  final $Res Function(Release) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? assetsUrl = freezed,
    Object? uploadUrl = freezed,
    Object? htmlUrl = freezed,
    Object? id = freezed,
    Object? author = freezed,
    Object? nodeId = freezed,
    Object? tagName = freezed,
    Object? targetCommitish = freezed,
    Object? name = freezed,
    Object? draft = freezed,
    Object? prerelease = freezed,
    Object? createdAt = freezed,
    Object? publishedAt = freezed,
    Object? assets = freezed,
    Object? tarballUrl = freezed,
    Object? zipballUrl = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      assetsUrl: assetsUrl == freezed
          ? _value.assetsUrl
          : assetsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      uploadUrl: uploadUrl == freezed
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      tagName: tagName == freezed
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      targetCommitish: targetCommitish == freezed
          ? _value.targetCommitish
          : targetCommitish // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      draft: draft == freezed
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as bool,
      prerelease: prerelease == freezed
          ? _value.prerelease
          : prerelease // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<Asset>,
      tarballUrl: tarballUrl == freezed
          ? _value.tarballUrl
          : tarballUrl // ignore: cast_nullable_to_non_nullable
              as String,
      zipballUrl: zipballUrl == freezed
          ? _value.zipballUrl
          : zipballUrl // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReleaseCopyWith<$Res> implements $ReleaseCopyWith<$Res> {
  factory _$$_ReleaseCopyWith(
          _$_Release value, $Res Function(_$_Release) then) =
      __$$_ReleaseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      String assetsUrl,
      String uploadUrl,
      String htmlUrl,
      int id,
      Author author,
      String nodeId,
      String tagName,
      String targetCommitish,
      String name,
      bool draft,
      bool prerelease,
      DateTime createdAt,
      DateTime publishedAt,
      List<Asset> assets,
      String tarballUrl,
      String zipballUrl,
      String body});

  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$_ReleaseCopyWithImpl<$Res> extends _$ReleaseCopyWithImpl<$Res>
    implements _$$_ReleaseCopyWith<$Res> {
  __$$_ReleaseCopyWithImpl(_$_Release _value, $Res Function(_$_Release) _then)
      : super(_value, (v) => _then(v as _$_Release));

  @override
  _$_Release get _value => super._value as _$_Release;

  @override
  $Res call({
    Object? url = freezed,
    Object? assetsUrl = freezed,
    Object? uploadUrl = freezed,
    Object? htmlUrl = freezed,
    Object? id = freezed,
    Object? author = freezed,
    Object? nodeId = freezed,
    Object? tagName = freezed,
    Object? targetCommitish = freezed,
    Object? name = freezed,
    Object? draft = freezed,
    Object? prerelease = freezed,
    Object? createdAt = freezed,
    Object? publishedAt = freezed,
    Object? assets = freezed,
    Object? tarballUrl = freezed,
    Object? zipballUrl = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_Release(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      assetsUrl: assetsUrl == freezed
          ? _value.assetsUrl
          : assetsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      uploadUrl: uploadUrl == freezed
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      tagName: tagName == freezed
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      targetCommitish: targetCommitish == freezed
          ? _value.targetCommitish
          : targetCommitish // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      draft: draft == freezed
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as bool,
      prerelease: prerelease == freezed
          ? _value.prerelease
          : prerelease // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assets: assets == freezed
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<Asset>,
      tarballUrl: tarballUrl == freezed
          ? _value.tarballUrl
          : tarballUrl // ignore: cast_nullable_to_non_nullable
              as String,
      zipballUrl: zipballUrl == freezed
          ? _value.zipballUrl
          : zipballUrl // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_Release implements _Release {
  const _$_Release(
      {required this.url,
      required this.assetsUrl,
      required this.uploadUrl,
      required this.htmlUrl,
      required this.id,
      required this.author,
      required this.nodeId,
      required this.tagName,
      required this.targetCommitish,
      required this.name,
      required this.draft,
      required this.prerelease,
      required this.createdAt,
      required this.publishedAt,
      required final List<Asset> assets,
      required this.tarballUrl,
      required this.zipballUrl,
      required this.body})
      : _assets = assets;

  factory _$_Release.fromJson(Map<String, dynamic> json) =>
      _$$_ReleaseFromJson(json);

  @override
  final String url;
  @override
  final String assetsUrl;
  @override
  final String uploadUrl;
  @override
  final String htmlUrl;
  @override
  final int id;
  @override
  final Author author;
  @override
  final String nodeId;
  @override
  final String tagName;
  @override
  final String targetCommitish;
  @override
  final String name;
  @override
  final bool draft;
  @override
  final bool prerelease;
  @override
  final DateTime createdAt;
  @override
  final DateTime publishedAt;
  final List<Asset> _assets;
  @override
  List<Asset> get assets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  final String tarballUrl;
  @override
  final String zipballUrl;
  @override
  final String body;

  @override
  String toString() {
    return 'Release(url: $url, assetsUrl: $assetsUrl, uploadUrl: $uploadUrl, htmlUrl: $htmlUrl, id: $id, author: $author, nodeId: $nodeId, tagName: $tagName, targetCommitish: $targetCommitish, name: $name, draft: $draft, prerelease: $prerelease, createdAt: $createdAt, publishedAt: $publishedAt, assets: $assets, tarballUrl: $tarballUrl, zipballUrl: $zipballUrl, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Release &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.assetsUrl, assetsUrl) &&
            const DeepCollectionEquality().equals(other.uploadUrl, uploadUrl) &&
            const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.nodeId, nodeId) &&
            const DeepCollectionEquality().equals(other.tagName, tagName) &&
            const DeepCollectionEquality()
                .equals(other.targetCommitish, targetCommitish) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.draft, draft) &&
            const DeepCollectionEquality()
                .equals(other.prerelease, prerelease) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            const DeepCollectionEquality()
                .equals(other.tarballUrl, tarballUrl) &&
            const DeepCollectionEquality()
                .equals(other.zipballUrl, zipballUrl) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(assetsUrl),
      const DeepCollectionEquality().hash(uploadUrl),
      const DeepCollectionEquality().hash(htmlUrl),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(nodeId),
      const DeepCollectionEquality().hash(tagName),
      const DeepCollectionEquality().hash(targetCommitish),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(draft),
      const DeepCollectionEquality().hash(prerelease),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(_assets),
      const DeepCollectionEquality().hash(tarballUrl),
      const DeepCollectionEquality().hash(zipballUrl),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_ReleaseCopyWith<_$_Release> get copyWith =>
      __$$_ReleaseCopyWithImpl<_$_Release>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReleaseToJson(
      this,
    );
  }
}

abstract class _Release implements Release {
  const factory _Release(
      {required final String url,
      required final String assetsUrl,
      required final String uploadUrl,
      required final String htmlUrl,
      required final int id,
      required final Author author,
      required final String nodeId,
      required final String tagName,
      required final String targetCommitish,
      required final String name,
      required final bool draft,
      required final bool prerelease,
      required final DateTime createdAt,
      required final DateTime publishedAt,
      required final List<Asset> assets,
      required final String tarballUrl,
      required final String zipballUrl,
      required final String body}) = _$_Release;

  factory _Release.fromJson(Map<String, dynamic> json) = _$_Release.fromJson;

  @override
  String get url;
  @override
  String get assetsUrl;
  @override
  String get uploadUrl;
  @override
  String get htmlUrl;
  @override
  int get id;
  @override
  Author get author;
  @override
  String get nodeId;
  @override
  String get tagName;
  @override
  String get targetCommitish;
  @override
  String get name;
  @override
  bool get draft;
  @override
  bool get prerelease;
  @override
  DateTime get createdAt;
  @override
  DateTime get publishedAt;
  @override
  List<Asset> get assets;
  @override
  String get tarballUrl;
  @override
  String get zipballUrl;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_ReleaseCopyWith<_$_Release> get copyWith =>
      throw _privateConstructorUsedError;
}

Asset _$AssetFromJson(Map<String, dynamic> json) {
  return _Asset.fromJson(json);
}

/// @nodoc
mixin _$Asset {
  String get url => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get nodeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  dynamic get label => throw _privateConstructorUsedError;
  Author get uploader => throw _privateConstructorUsedError;
  String get contentType => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get downloadCount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get browserDownloadUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetCopyWith<Asset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetCopyWith<$Res> {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) then) =
      _$AssetCopyWithImpl<$Res>;
  $Res call(
      {String url,
      int id,
      String nodeId,
      String name,
      dynamic label,
      Author uploader,
      String contentType,
      String state,
      int size,
      int downloadCount,
      DateTime createdAt,
      DateTime updatedAt,
      String browserDownloadUrl});

  $AuthorCopyWith<$Res> get uploader;
}

/// @nodoc
class _$AssetCopyWithImpl<$Res> implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._value, this._then);

  final Asset _value;
  // ignore: unused_field
  final $Res Function(Asset) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? name = freezed,
    Object? label = freezed,
    Object? uploader = freezed,
    Object? contentType = freezed,
    Object? state = freezed,
    Object? size = freezed,
    Object? downloadCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? browserDownloadUrl = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as dynamic,
      uploader: uploader == freezed
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as Author,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      downloadCount: downloadCount == freezed
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      browserDownloadUrl: browserDownloadUrl == freezed
          ? _value.browserDownloadUrl
          : browserDownloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AuthorCopyWith<$Res> get uploader {
    return $AuthorCopyWith<$Res>(_value.uploader, (value) {
      return _then(_value.copyWith(uploader: value));
    });
  }
}

/// @nodoc
abstract class _$$_AssetCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$$_AssetCopyWith(_$_Asset value, $Res Function(_$_Asset) then) =
      __$$_AssetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      int id,
      String nodeId,
      String name,
      dynamic label,
      Author uploader,
      String contentType,
      String state,
      int size,
      int downloadCount,
      DateTime createdAt,
      DateTime updatedAt,
      String browserDownloadUrl});

  @override
  $AuthorCopyWith<$Res> get uploader;
}

/// @nodoc
class __$$_AssetCopyWithImpl<$Res> extends _$AssetCopyWithImpl<$Res>
    implements _$$_AssetCopyWith<$Res> {
  __$$_AssetCopyWithImpl(_$_Asset _value, $Res Function(_$_Asset) _then)
      : super(_value, (v) => _then(v as _$_Asset));

  @override
  _$_Asset get _value => super._value as _$_Asset;

  @override
  $Res call({
    Object? url = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? name = freezed,
    Object? label = freezed,
    Object? uploader = freezed,
    Object? contentType = freezed,
    Object? state = freezed,
    Object? size = freezed,
    Object? downloadCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? browserDownloadUrl = freezed,
  }) {
    return _then(_$_Asset(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as dynamic,
      uploader: uploader == freezed
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as Author,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      downloadCount: downloadCount == freezed
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      browserDownloadUrl: browserDownloadUrl == freezed
          ? _value.browserDownloadUrl
          : browserDownloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_Asset implements _Asset {
  const _$_Asset(
      {required this.url,
      required this.id,
      required this.nodeId,
      required this.name,
      required this.label,
      required this.uploader,
      required this.contentType,
      required this.state,
      required this.size,
      required this.downloadCount,
      required this.createdAt,
      required this.updatedAt,
      required this.browserDownloadUrl});

  factory _$_Asset.fromJson(Map<String, dynamic> json) =>
      _$$_AssetFromJson(json);

  @override
  final String url;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final dynamic label;
  @override
  final Author uploader;
  @override
  final String contentType;
  @override
  final String state;
  @override
  final int size;
  @override
  final int downloadCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String browserDownloadUrl;

  @override
  String toString() {
    return 'Asset(url: $url, id: $id, nodeId: $nodeId, name: $name, label: $label, uploader: $uploader, contentType: $contentType, state: $state, size: $size, downloadCount: $downloadCount, createdAt: $createdAt, updatedAt: $updatedAt, browserDownloadUrl: $browserDownloadUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Asset &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nodeId, nodeId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.uploader, uploader) &&
            const DeepCollectionEquality()
                .equals(other.contentType, contentType) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.downloadCount, downloadCount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.browserDownloadUrl, browserDownloadUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nodeId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(uploader),
      const DeepCollectionEquality().hash(contentType),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(downloadCount),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(browserDownloadUrl));

  @JsonKey(ignore: true)
  @override
  _$$_AssetCopyWith<_$_Asset> get copyWith =>
      __$$_AssetCopyWithImpl<_$_Asset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetToJson(
      this,
    );
  }
}

abstract class _Asset implements Asset {
  const factory _Asset(
      {required final String url,
      required final int id,
      required final String nodeId,
      required final String name,
      required final dynamic label,
      required final Author uploader,
      required final String contentType,
      required final String state,
      required final int size,
      required final int downloadCount,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String browserDownloadUrl}) = _$_Asset;

  factory _Asset.fromJson(Map<String, dynamic> json) = _$_Asset.fromJson;

  @override
  String get url;
  @override
  int get id;
  @override
  String get nodeId;
  @override
  String get name;
  @override
  dynamic get label;
  @override
  Author get uploader;
  @override
  String get contentType;
  @override
  String get state;
  @override
  int get size;
  @override
  int get downloadCount;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get browserDownloadUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AssetCopyWith<_$_Asset> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  String get login => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get nodeId => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get gravatarId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get htmlUrl => throw _privateConstructorUsedError;
  String get followersUrl => throw _privateConstructorUsedError;
  String get followingUrl => throw _privateConstructorUsedError;
  String get gistsUrl => throw _privateConstructorUsedError;
  String get starredUrl => throw _privateConstructorUsedError;
  String get subscriptionsUrl => throw _privateConstructorUsedError;
  String get organizationsUrl => throw _privateConstructorUsedError;
  String get reposUrl => throw _privateConstructorUsedError;
  String get eventsUrl => throw _privateConstructorUsedError;
  String get receivedEventsUrl => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get siteAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res>;
  $Res call(
      {String login,
      int id,
      String nodeId,
      String avatarUrl,
      String gravatarId,
      String url,
      String htmlUrl,
      String followersUrl,
      String followingUrl,
      String gistsUrl,
      String starredUrl,
      String subscriptionsUrl,
      String organizationsUrl,
      String reposUrl,
      String eventsUrl,
      String receivedEventsUrl,
      String type,
      bool siteAdmin});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res> implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  final Author _value;
  // ignore: unused_field
  final $Res Function(Author) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? avatarUrl = freezed,
    Object? gravatarId = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? followersUrl = freezed,
    Object? followingUrl = freezed,
    Object? gistsUrl = freezed,
    Object? starredUrl = freezed,
    Object? subscriptionsUrl = freezed,
    Object? organizationsUrl = freezed,
    Object? reposUrl = freezed,
    Object? eventsUrl = freezed,
    Object? receivedEventsUrl = freezed,
    Object? type = freezed,
    Object? siteAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gravatarId: gravatarId == freezed
          ? _value.gravatarId
          : gravatarId // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      followersUrl: followersUrl == freezed
          ? _value.followersUrl
          : followersUrl // ignore: cast_nullable_to_non_nullable
              as String,
      followingUrl: followingUrl == freezed
          ? _value.followingUrl
          : followingUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gistsUrl: gistsUrl == freezed
          ? _value.gistsUrl
          : gistsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      starredUrl: starredUrl == freezed
          ? _value.starredUrl
          : starredUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionsUrl: subscriptionsUrl == freezed
          ? _value.subscriptionsUrl
          : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      organizationsUrl: organizationsUrl == freezed
          ? _value.organizationsUrl
          : organizationsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reposUrl: reposUrl == freezed
          ? _value.reposUrl
          : reposUrl // ignore: cast_nullable_to_non_nullable
              as String,
      eventsUrl: eventsUrl == freezed
          ? _value.eventsUrl
          : eventsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      receivedEventsUrl: receivedEventsUrl == freezed
          ? _value.receivedEventsUrl
          : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      siteAdmin: siteAdmin == freezed
          ? _value.siteAdmin
          : siteAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$_AuthorCopyWith(_$_Author value, $Res Function(_$_Author) then) =
      __$$_AuthorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String login,
      int id,
      String nodeId,
      String avatarUrl,
      String gravatarId,
      String url,
      String htmlUrl,
      String followersUrl,
      String followingUrl,
      String gistsUrl,
      String starredUrl,
      String subscriptionsUrl,
      String organizationsUrl,
      String reposUrl,
      String eventsUrl,
      String receivedEventsUrl,
      String type,
      bool siteAdmin});
}

/// @nodoc
class __$$_AuthorCopyWithImpl<$Res> extends _$AuthorCopyWithImpl<$Res>
    implements _$$_AuthorCopyWith<$Res> {
  __$$_AuthorCopyWithImpl(_$_Author _value, $Res Function(_$_Author) _then)
      : super(_value, (v) => _then(v as _$_Author));

  @override
  _$_Author get _value => super._value as _$_Author;

  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? avatarUrl = freezed,
    Object? gravatarId = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? followersUrl = freezed,
    Object? followingUrl = freezed,
    Object? gistsUrl = freezed,
    Object? starredUrl = freezed,
    Object? subscriptionsUrl = freezed,
    Object? organizationsUrl = freezed,
    Object? reposUrl = freezed,
    Object? eventsUrl = freezed,
    Object? receivedEventsUrl = freezed,
    Object? type = freezed,
    Object? siteAdmin = freezed,
  }) {
    return _then(_$_Author(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gravatarId: gravatarId == freezed
          ? _value.gravatarId
          : gravatarId // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      followersUrl: followersUrl == freezed
          ? _value.followersUrl
          : followersUrl // ignore: cast_nullable_to_non_nullable
              as String,
      followingUrl: followingUrl == freezed
          ? _value.followingUrl
          : followingUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gistsUrl: gistsUrl == freezed
          ? _value.gistsUrl
          : gistsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      starredUrl: starredUrl == freezed
          ? _value.starredUrl
          : starredUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionsUrl: subscriptionsUrl == freezed
          ? _value.subscriptionsUrl
          : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      organizationsUrl: organizationsUrl == freezed
          ? _value.organizationsUrl
          : organizationsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reposUrl: reposUrl == freezed
          ? _value.reposUrl
          : reposUrl // ignore: cast_nullable_to_non_nullable
              as String,
      eventsUrl: eventsUrl == freezed
          ? _value.eventsUrl
          : eventsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      receivedEventsUrl: receivedEventsUrl == freezed
          ? _value.receivedEventsUrl
          : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      siteAdmin: siteAdmin == freezed
          ? _value.siteAdmin
          : siteAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_Author implements _Author {
  const _$_Author(
      {required this.login,
      required this.id,
      required this.nodeId,
      required this.avatarUrl,
      required this.gravatarId,
      required this.url,
      required this.htmlUrl,
      required this.followersUrl,
      required this.followingUrl,
      required this.gistsUrl,
      required this.starredUrl,
      required this.subscriptionsUrl,
      required this.organizationsUrl,
      required this.reposUrl,
      required this.eventsUrl,
      required this.receivedEventsUrl,
      required this.type,
      required this.siteAdmin});

  factory _$_Author.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorFromJson(json);

  @override
  final String login;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String avatarUrl;
  @override
  final String gravatarId;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String followersUrl;
  @override
  final String followingUrl;
  @override
  final String gistsUrl;
  @override
  final String starredUrl;
  @override
  final String subscriptionsUrl;
  @override
  final String organizationsUrl;
  @override
  final String reposUrl;
  @override
  final String eventsUrl;
  @override
  final String receivedEventsUrl;
  @override
  final String type;
  @override
  final bool siteAdmin;

  @override
  String toString() {
    return 'Author(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, siteAdmin: $siteAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Author &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nodeId, nodeId) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other.gravatarId, gravatarId) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl) &&
            const DeepCollectionEquality()
                .equals(other.followersUrl, followersUrl) &&
            const DeepCollectionEquality()
                .equals(other.followingUrl, followingUrl) &&
            const DeepCollectionEquality().equals(other.gistsUrl, gistsUrl) &&
            const DeepCollectionEquality()
                .equals(other.starredUrl, starredUrl) &&
            const DeepCollectionEquality()
                .equals(other.subscriptionsUrl, subscriptionsUrl) &&
            const DeepCollectionEquality()
                .equals(other.organizationsUrl, organizationsUrl) &&
            const DeepCollectionEquality().equals(other.reposUrl, reposUrl) &&
            const DeepCollectionEquality().equals(other.eventsUrl, eventsUrl) &&
            const DeepCollectionEquality()
                .equals(other.receivedEventsUrl, receivedEventsUrl) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.siteAdmin, siteAdmin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nodeId),
      const DeepCollectionEquality().hash(avatarUrl),
      const DeepCollectionEquality().hash(gravatarId),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(htmlUrl),
      const DeepCollectionEquality().hash(followersUrl),
      const DeepCollectionEquality().hash(followingUrl),
      const DeepCollectionEquality().hash(gistsUrl),
      const DeepCollectionEquality().hash(starredUrl),
      const DeepCollectionEquality().hash(subscriptionsUrl),
      const DeepCollectionEquality().hash(organizationsUrl),
      const DeepCollectionEquality().hash(reposUrl),
      const DeepCollectionEquality().hash(eventsUrl),
      const DeepCollectionEquality().hash(receivedEventsUrl),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(siteAdmin));

  @JsonKey(ignore: true)
  @override
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      __$$_AuthorCopyWithImpl<_$_Author>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorToJson(
      this,
    );
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {required final String login,
      required final int id,
      required final String nodeId,
      required final String avatarUrl,
      required final String gravatarId,
      required final String url,
      required final String htmlUrl,
      required final String followersUrl,
      required final String followingUrl,
      required final String gistsUrl,
      required final String starredUrl,
      required final String subscriptionsUrl,
      required final String organizationsUrl,
      required final String reposUrl,
      required final String eventsUrl,
      required final String receivedEventsUrl,
      required final String type,
      required final bool siteAdmin}) = _$_Author;

  factory _Author.fromJson(Map<String, dynamic> json) = _$_Author.fromJson;

  @override
  String get login;
  @override
  int get id;
  @override
  String get nodeId;
  @override
  String get avatarUrl;
  @override
  String get gravatarId;
  @override
  String get url;
  @override
  String get htmlUrl;
  @override
  String get followersUrl;
  @override
  String get followingUrl;
  @override
  String get gistsUrl;
  @override
  String get starredUrl;
  @override
  String get subscriptionsUrl;
  @override
  String get organizationsUrl;
  @override
  String get reposUrl;
  @override
  String get eventsUrl;
  @override
  String get receivedEventsUrl;
  @override
  String get type;
  @override
  bool get siteAdmin;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      throw _privateConstructorUsedError;
}
