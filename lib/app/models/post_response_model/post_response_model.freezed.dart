// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostResponseModel _$PostResponseModelFromJson(Map<String, dynamic> json) {
  return _PostResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PostResponseModel {
  int? get postId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get postContent => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get likeCount => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  UserProfileModel? get users => throw _privateConstructorUsedError;
  bool? get isLikedByUser => throw _privateConstructorUsedError;

  /// Serializes this PostResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostResponseModelCopyWith<PostResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostResponseModelCopyWith<$Res> {
  factory $PostResponseModelCopyWith(
          PostResponseModel value, $Res Function(PostResponseModel) then) =
      _$PostResponseModelCopyWithImpl<$Res, PostResponseModel>;
  @useResult
  $Res call(
      {int? postId,
      DateTime? createdAt,
      String? postContent,
      String? imageUrl,
      int? likeCount,
      int? commentCount,
      String? userId,
      UserProfileModel? users,
      bool? isLikedByUser});

  $UserProfileModelCopyWith<$Res>? get users;
}

/// @nodoc
class _$PostResponseModelCopyWithImpl<$Res, $Val extends PostResponseModel>
    implements $PostResponseModelCopyWith<$Res> {
  _$PostResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? createdAt = freezed,
    Object? postContent = freezed,
    Object? imageUrl = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? userId = freezed,
    Object? users = freezed,
    Object? isLikedByUser = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postContent: freezed == postContent
          ? _value.postContent
          : postContent // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      isLikedByUser: freezed == isLikedByUser
          ? _value.isLikedByUser
          : isLikedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of PostResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res>? get users {
    if (_value.users == null) {
      return null;
    }

    return $UserProfileModelCopyWith<$Res>(_value.users!, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostResponseModelImplCopyWith<$Res>
    implements $PostResponseModelCopyWith<$Res> {
  factory _$$PostResponseModelImplCopyWith(_$PostResponseModelImpl value,
          $Res Function(_$PostResponseModelImpl) then) =
      __$$PostResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? postId,
      DateTime? createdAt,
      String? postContent,
      String? imageUrl,
      int? likeCount,
      int? commentCount,
      String? userId,
      UserProfileModel? users,
      bool? isLikedByUser});

  @override
  $UserProfileModelCopyWith<$Res>? get users;
}

/// @nodoc
class __$$PostResponseModelImplCopyWithImpl<$Res>
    extends _$PostResponseModelCopyWithImpl<$Res, _$PostResponseModelImpl>
    implements _$$PostResponseModelImplCopyWith<$Res> {
  __$$PostResponseModelImplCopyWithImpl(_$PostResponseModelImpl _value,
      $Res Function(_$PostResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? createdAt = freezed,
    Object? postContent = freezed,
    Object? imageUrl = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? userId = freezed,
    Object? users = freezed,
    Object? isLikedByUser = freezed,
  }) {
    return _then(_$PostResponseModelImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postContent: freezed == postContent
          ? _value.postContent
          : postContent // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      isLikedByUser: freezed == isLikedByUser
          ? _value.isLikedByUser
          : isLikedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostResponseModelImpl implements _PostResponseModel {
  _$PostResponseModelImpl(
      {this.postId,
      this.createdAt,
      this.postContent,
      this.imageUrl,
      this.likeCount,
      this.commentCount,
      this.userId,
      this.users,
      this.isLikedByUser});

  factory _$PostResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostResponseModelImplFromJson(json);

  @override
  final int? postId;
  @override
  final DateTime? createdAt;
  @override
  final String? postContent;
  @override
  final String? imageUrl;
  @override
  final int? likeCount;
  @override
  final int? commentCount;
  @override
  final String? userId;
  @override
  final UserProfileModel? users;
  @override
  final bool? isLikedByUser;

  @override
  String toString() {
    return 'PostResponseModel(postId: $postId, createdAt: $createdAt, postContent: $postContent, imageUrl: $imageUrl, likeCount: $likeCount, commentCount: $commentCount, userId: $userId, users: $users, isLikedByUser: $isLikedByUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostResponseModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.postContent, postContent) ||
                other.postContent == postContent) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.isLikedByUser, isLikedByUser) ||
                other.isLikedByUser == isLikedByUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postId, createdAt, postContent,
      imageUrl, likeCount, commentCount, userId, users, isLikedByUser);

  /// Create a copy of PostResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostResponseModelImplCopyWith<_$PostResponseModelImpl> get copyWith =>
      __$$PostResponseModelImplCopyWithImpl<_$PostResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PostResponseModel implements PostResponseModel {
  factory _PostResponseModel(
      {final int? postId,
      final DateTime? createdAt,
      final String? postContent,
      final String? imageUrl,
      final int? likeCount,
      final int? commentCount,
      final String? userId,
      final UserProfileModel? users,
      final bool? isLikedByUser}) = _$PostResponseModelImpl;

  factory _PostResponseModel.fromJson(Map<String, dynamic> json) =
      _$PostResponseModelImpl.fromJson;

  @override
  int? get postId;
  @override
  DateTime? get createdAt;
  @override
  String? get postContent;
  @override
  String? get imageUrl;
  @override
  int? get likeCount;
  @override
  int? get commentCount;
  @override
  String? get userId;
  @override
  UserProfileModel? get users;
  @override
  bool? get isLikedByUser;

  /// Create a copy of PostResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostResponseModelImplCopyWith<_$PostResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
