// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updater.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

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

  /// Serializes this Release to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Release
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReleaseCopyWith<Release> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseCopyWith<$Res> {
  factory $ReleaseCopyWith(Release value, $Res Function(Release) then) =
      _$ReleaseCopyWithImpl<$Res, Release>;
  @useResult
  $Res call({
    String url,
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
    String body,
  });

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$ReleaseCopyWithImpl<$Res, $Val extends Release>
    implements $ReleaseCopyWith<$Res> {
  _$ReleaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Release
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? assetsUrl = null,
    Object? uploadUrl = null,
    Object? htmlUrl = null,
    Object? id = null,
    Object? author = null,
    Object? nodeId = null,
    Object? tagName = null,
    Object? targetCommitish = null,
    Object? name = null,
    Object? draft = null,
    Object? prerelease = null,
    Object? createdAt = null,
    Object? publishedAt = null,
    Object? assets = null,
    Object? tarballUrl = null,
    Object? zipballUrl = null,
    Object? body = null,
  }) {
    return _then(
      _value.copyWith(
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
            assetsUrl:
                null == assetsUrl
                    ? _value.assetsUrl
                    : assetsUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            uploadUrl:
                null == uploadUrl
                    ? _value.uploadUrl
                    : uploadUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            htmlUrl:
                null == htmlUrl
                    ? _value.htmlUrl
                    : htmlUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as Author,
            nodeId:
                null == nodeId
                    ? _value.nodeId
                    : nodeId // ignore: cast_nullable_to_non_nullable
                        as String,
            tagName:
                null == tagName
                    ? _value.tagName
                    : tagName // ignore: cast_nullable_to_non_nullable
                        as String,
            targetCommitish:
                null == targetCommitish
                    ? _value.targetCommitish
                    : targetCommitish // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            draft:
                null == draft
                    ? _value.draft
                    : draft // ignore: cast_nullable_to_non_nullable
                        as bool,
            prerelease:
                null == prerelease
                    ? _value.prerelease
                    : prerelease // ignore: cast_nullable_to_non_nullable
                        as bool,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            publishedAt:
                null == publishedAt
                    ? _value.publishedAt
                    : publishedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            assets:
                null == assets
                    ? _value.assets
                    : assets // ignore: cast_nullable_to_non_nullable
                        as List<Asset>,
            tarballUrl:
                null == tarballUrl
                    ? _value.tarballUrl
                    : tarballUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            zipballUrl:
                null == zipballUrl
                    ? _value.zipballUrl
                    : zipballUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            body:
                null == body
                    ? _value.body
                    : body // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of Release
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReleaseImplCopyWith<$Res> implements $ReleaseCopyWith<$Res> {
  factory _$$ReleaseImplCopyWith(
    _$ReleaseImpl value,
    $Res Function(_$ReleaseImpl) then,
  ) = __$$ReleaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String url,
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
    String body,
  });

  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$ReleaseImplCopyWithImpl<$Res>
    extends _$ReleaseCopyWithImpl<$Res, _$ReleaseImpl>
    implements _$$ReleaseImplCopyWith<$Res> {
  __$$ReleaseImplCopyWithImpl(
    _$ReleaseImpl _value,
    $Res Function(_$ReleaseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Release
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? assetsUrl = null,
    Object? uploadUrl = null,
    Object? htmlUrl = null,
    Object? id = null,
    Object? author = null,
    Object? nodeId = null,
    Object? tagName = null,
    Object? targetCommitish = null,
    Object? name = null,
    Object? draft = null,
    Object? prerelease = null,
    Object? createdAt = null,
    Object? publishedAt = null,
    Object? assets = null,
    Object? tarballUrl = null,
    Object? zipballUrl = null,
    Object? body = null,
  }) {
    return _then(
      _$ReleaseImpl(
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
        assetsUrl:
            null == assetsUrl
                ? _value.assetsUrl
                : assetsUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        uploadUrl:
            null == uploadUrl
                ? _value.uploadUrl
                : uploadUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        htmlUrl:
            null == htmlUrl
                ? _value.htmlUrl
                : htmlUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        author:
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as Author,
        nodeId:
            null == nodeId
                ? _value.nodeId
                : nodeId // ignore: cast_nullable_to_non_nullable
                    as String,
        tagName:
            null == tagName
                ? _value.tagName
                : tagName // ignore: cast_nullable_to_non_nullable
                    as String,
        targetCommitish:
            null == targetCommitish
                ? _value.targetCommitish
                : targetCommitish // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        draft:
            null == draft
                ? _value.draft
                : draft // ignore: cast_nullable_to_non_nullable
                    as bool,
        prerelease:
            null == prerelease
                ? _value.prerelease
                : prerelease // ignore: cast_nullable_to_non_nullable
                    as bool,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        publishedAt:
            null == publishedAt
                ? _value.publishedAt
                : publishedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        assets:
            null == assets
                ? _value._assets
                : assets // ignore: cast_nullable_to_non_nullable
                    as List<Asset>,
        tarballUrl:
            null == tarballUrl
                ? _value.tarballUrl
                : tarballUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        zipballUrl:
            null == zipballUrl
                ? _value.zipballUrl
                : zipballUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        body:
            null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ReleaseImpl implements _Release {
  const _$ReleaseImpl({
    required this.url,
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
    required this.body,
  }) : _assets = assets;

  factory _$ReleaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReleaseImplFromJson(json);

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
    if (_assets is EqualUnmodifiableListView) return _assets;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReleaseImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.assetsUrl, assetsUrl) ||
                other.assetsUrl == assetsUrl) &&
            (identical(other.uploadUrl, uploadUrl) ||
                other.uploadUrl == uploadUrl) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.tagName, tagName) || other.tagName == tagName) &&
            (identical(other.targetCommitish, targetCommitish) ||
                other.targetCommitish == targetCommitish) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.draft, draft) || other.draft == draft) &&
            (identical(other.prerelease, prerelease) ||
                other.prerelease == prerelease) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            (identical(other.tarballUrl, tarballUrl) ||
                other.tarballUrl == tarballUrl) &&
            (identical(other.zipballUrl, zipballUrl) ||
                other.zipballUrl == zipballUrl) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    url,
    assetsUrl,
    uploadUrl,
    htmlUrl,
    id,
    author,
    nodeId,
    tagName,
    targetCommitish,
    name,
    draft,
    prerelease,
    createdAt,
    publishedAt,
    const DeepCollectionEquality().hash(_assets),
    tarballUrl,
    zipballUrl,
    body,
  );

  /// Create a copy of Release
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReleaseImplCopyWith<_$ReleaseImpl> get copyWith =>
      __$$ReleaseImplCopyWithImpl<_$ReleaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReleaseImplToJson(this);
  }
}

abstract class _Release implements Release {
  const factory _Release({
    required final String url,
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
    required final String body,
  }) = _$ReleaseImpl;

  factory _Release.fromJson(Map<String, dynamic> json) = _$ReleaseImpl.fromJson;

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

  /// Create a copy of Release
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReleaseImplCopyWith<_$ReleaseImpl> get copyWith =>
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

  /// Serializes this Asset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Asset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssetCopyWith<Asset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetCopyWith<$Res> {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) then) =
      _$AssetCopyWithImpl<$Res, Asset>;
  @useResult
  $Res call({
    String url,
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
    String browserDownloadUrl,
  });

  $AuthorCopyWith<$Res> get uploader;
}

/// @nodoc
class _$AssetCopyWithImpl<$Res, $Val extends Asset>
    implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Asset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? id = null,
    Object? nodeId = null,
    Object? name = null,
    Object? label = freezed,
    Object? uploader = null,
    Object? contentType = null,
    Object? state = null,
    Object? size = null,
    Object? downloadCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? browserDownloadUrl = null,
  }) {
    return _then(
      _value.copyWith(
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            nodeId:
                null == nodeId
                    ? _value.nodeId
                    : nodeId // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            label:
                freezed == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            uploader:
                null == uploader
                    ? _value.uploader
                    : uploader // ignore: cast_nullable_to_non_nullable
                        as Author,
            contentType:
                null == contentType
                    ? _value.contentType
                    : contentType // ignore: cast_nullable_to_non_nullable
                        as String,
            state:
                null == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String,
            size:
                null == size
                    ? _value.size
                    : size // ignore: cast_nullable_to_non_nullable
                        as int,
            downloadCount:
                null == downloadCount
                    ? _value.downloadCount
                    : downloadCount // ignore: cast_nullable_to_non_nullable
                        as int,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            browserDownloadUrl:
                null == browserDownloadUrl
                    ? _value.browserDownloadUrl
                    : browserDownloadUrl // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of Asset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get uploader {
    return $AuthorCopyWith<$Res>(_value.uploader, (value) {
      return _then(_value.copyWith(uploader: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssetImplCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$$AssetImplCopyWith(
    _$AssetImpl value,
    $Res Function(_$AssetImpl) then,
  ) = __$$AssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String url,
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
    String browserDownloadUrl,
  });

  @override
  $AuthorCopyWith<$Res> get uploader;
}

/// @nodoc
class __$$AssetImplCopyWithImpl<$Res>
    extends _$AssetCopyWithImpl<$Res, _$AssetImpl>
    implements _$$AssetImplCopyWith<$Res> {
  __$$AssetImplCopyWithImpl(
    _$AssetImpl _value,
    $Res Function(_$AssetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Asset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? id = null,
    Object? nodeId = null,
    Object? name = null,
    Object? label = freezed,
    Object? uploader = null,
    Object? contentType = null,
    Object? state = null,
    Object? size = null,
    Object? downloadCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? browserDownloadUrl = null,
  }) {
    return _then(
      _$AssetImpl(
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        nodeId:
            null == nodeId
                ? _value.nodeId
                : nodeId // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        label:
            freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        uploader:
            null == uploader
                ? _value.uploader
                : uploader // ignore: cast_nullable_to_non_nullable
                    as Author,
        contentType:
            null == contentType
                ? _value.contentType
                : contentType // ignore: cast_nullable_to_non_nullable
                    as String,
        state:
            null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String,
        size:
            null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                    as int,
        downloadCount:
            null == downloadCount
                ? _value.downloadCount
                : downloadCount // ignore: cast_nullable_to_non_nullable
                    as int,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        browserDownloadUrl:
            null == browserDownloadUrl
                ? _value.browserDownloadUrl
                : browserDownloadUrl // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$AssetImpl implements _Asset {
  const _$AssetImpl({
    required this.url,
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
    required this.browserDownloadUrl,
  });

  factory _$AssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            (identical(other.uploader, uploader) ||
                other.uploader == uploader) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.downloadCount, downloadCount) ||
                other.downloadCount == downloadCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.browserDownloadUrl, browserDownloadUrl) ||
                other.browserDownloadUrl == browserDownloadUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    url,
    id,
    nodeId,
    name,
    const DeepCollectionEquality().hash(label),
    uploader,
    contentType,
    state,
    size,
    downloadCount,
    createdAt,
    updatedAt,
    browserDownloadUrl,
  );

  /// Create a copy of Asset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetImplCopyWith<_$AssetImpl> get copyWith =>
      __$$AssetImplCopyWithImpl<_$AssetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetImplToJson(this);
  }
}

abstract class _Asset implements Asset {
  const factory _Asset({
    required final String url,
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
    required final String browserDownloadUrl,
  }) = _$AssetImpl;

  factory _Asset.fromJson(Map<String, dynamic> json) = _$AssetImpl.fromJson;

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

  /// Create a copy of Asset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetImplCopyWith<_$AssetImpl> get copyWith =>
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

  /// Serializes this Author to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({
    String login,
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
    bool siteAdmin,
  });
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? id = null,
    Object? nodeId = null,
    Object? avatarUrl = null,
    Object? gravatarId = null,
    Object? url = null,
    Object? htmlUrl = null,
    Object? followersUrl = null,
    Object? followingUrl = null,
    Object? gistsUrl = null,
    Object? starredUrl = null,
    Object? subscriptionsUrl = null,
    Object? organizationsUrl = null,
    Object? reposUrl = null,
    Object? eventsUrl = null,
    Object? receivedEventsUrl = null,
    Object? type = null,
    Object? siteAdmin = null,
  }) {
    return _then(
      _value.copyWith(
            login:
                null == login
                    ? _value.login
                    : login // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            nodeId:
                null == nodeId
                    ? _value.nodeId
                    : nodeId // ignore: cast_nullable_to_non_nullable
                        as String,
            avatarUrl:
                null == avatarUrl
                    ? _value.avatarUrl
                    : avatarUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            gravatarId:
                null == gravatarId
                    ? _value.gravatarId
                    : gravatarId // ignore: cast_nullable_to_non_nullable
                        as String,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
            htmlUrl:
                null == htmlUrl
                    ? _value.htmlUrl
                    : htmlUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            followersUrl:
                null == followersUrl
                    ? _value.followersUrl
                    : followersUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            followingUrl:
                null == followingUrl
                    ? _value.followingUrl
                    : followingUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            gistsUrl:
                null == gistsUrl
                    ? _value.gistsUrl
                    : gistsUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            starredUrl:
                null == starredUrl
                    ? _value.starredUrl
                    : starredUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            subscriptionsUrl:
                null == subscriptionsUrl
                    ? _value.subscriptionsUrl
                    : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            organizationsUrl:
                null == organizationsUrl
                    ? _value.organizationsUrl
                    : organizationsUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            reposUrl:
                null == reposUrl
                    ? _value.reposUrl
                    : reposUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            eventsUrl:
                null == eventsUrl
                    ? _value.eventsUrl
                    : eventsUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            receivedEventsUrl:
                null == receivedEventsUrl
                    ? _value.receivedEventsUrl
                    : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            siteAdmin:
                null == siteAdmin
                    ? _value.siteAdmin
                    : siteAdmin // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
    _$AuthorImpl value,
    $Res Function(_$AuthorImpl) then,
  ) = __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String login,
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
    bool siteAdmin,
  });
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
    _$AuthorImpl _value,
    $Res Function(_$AuthorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? id = null,
    Object? nodeId = null,
    Object? avatarUrl = null,
    Object? gravatarId = null,
    Object? url = null,
    Object? htmlUrl = null,
    Object? followersUrl = null,
    Object? followingUrl = null,
    Object? gistsUrl = null,
    Object? starredUrl = null,
    Object? subscriptionsUrl = null,
    Object? organizationsUrl = null,
    Object? reposUrl = null,
    Object? eventsUrl = null,
    Object? receivedEventsUrl = null,
    Object? type = null,
    Object? siteAdmin = null,
  }) {
    return _then(
      _$AuthorImpl(
        login:
            null == login
                ? _value.login
                : login // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        nodeId:
            null == nodeId
                ? _value.nodeId
                : nodeId // ignore: cast_nullable_to_non_nullable
                    as String,
        avatarUrl:
            null == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        gravatarId:
            null == gravatarId
                ? _value.gravatarId
                : gravatarId // ignore: cast_nullable_to_non_nullable
                    as String,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
        htmlUrl:
            null == htmlUrl
                ? _value.htmlUrl
                : htmlUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        followersUrl:
            null == followersUrl
                ? _value.followersUrl
                : followersUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        followingUrl:
            null == followingUrl
                ? _value.followingUrl
                : followingUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        gistsUrl:
            null == gistsUrl
                ? _value.gistsUrl
                : gistsUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        starredUrl:
            null == starredUrl
                ? _value.starredUrl
                : starredUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        subscriptionsUrl:
            null == subscriptionsUrl
                ? _value.subscriptionsUrl
                : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        organizationsUrl:
            null == organizationsUrl
                ? _value.organizationsUrl
                : organizationsUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        reposUrl:
            null == reposUrl
                ? _value.reposUrl
                : reposUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        eventsUrl:
            null == eventsUrl
                ? _value.eventsUrl
                : eventsUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        receivedEventsUrl:
            null == receivedEventsUrl
                ? _value.receivedEventsUrl
                : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        siteAdmin:
            null == siteAdmin
                ? _value.siteAdmin
                : siteAdmin // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$AuthorImpl implements _Author {
  const _$AuthorImpl({
    required this.login,
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
    required this.siteAdmin,
  });

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.gravatarId, gravatarId) ||
                other.gravatarId == gravatarId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.followersUrl, followersUrl) ||
                other.followersUrl == followersUrl) &&
            (identical(other.followingUrl, followingUrl) ||
                other.followingUrl == followingUrl) &&
            (identical(other.gistsUrl, gistsUrl) ||
                other.gistsUrl == gistsUrl) &&
            (identical(other.starredUrl, starredUrl) ||
                other.starredUrl == starredUrl) &&
            (identical(other.subscriptionsUrl, subscriptionsUrl) ||
                other.subscriptionsUrl == subscriptionsUrl) &&
            (identical(other.organizationsUrl, organizationsUrl) ||
                other.organizationsUrl == organizationsUrl) &&
            (identical(other.reposUrl, reposUrl) ||
                other.reposUrl == reposUrl) &&
            (identical(other.eventsUrl, eventsUrl) ||
                other.eventsUrl == eventsUrl) &&
            (identical(other.receivedEventsUrl, receivedEventsUrl) ||
                other.receivedEventsUrl == receivedEventsUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.siteAdmin, siteAdmin) ||
                other.siteAdmin == siteAdmin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    login,
    id,
    nodeId,
    avatarUrl,
    gravatarId,
    url,
    htmlUrl,
    followersUrl,
    followingUrl,
    gistsUrl,
    starredUrl,
    subscriptionsUrl,
    organizationsUrl,
    reposUrl,
    eventsUrl,
    receivedEventsUrl,
    type,
    siteAdmin,
  );

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(this);
  }
}

abstract class _Author implements Author {
  const factory _Author({
    required final String login,
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
    required final bool siteAdmin,
  }) = _$AuthorImpl;

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

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

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
