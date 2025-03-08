// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostRequestModel _$PostRequestModelFromJson(Map<String, dynamic> json) {
  return _PostRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PostRequestModel {
  String? get postContent => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this PostRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostRequestModelCopyWith<PostRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRequestModelCopyWith<$Res> {
  factory $PostRequestModelCopyWith(
          PostRequestModel value, $Res Function(PostRequestModel) then) =
      _$PostRequestModelCopyWithImpl<$Res, PostRequestModel>;
  @useResult
  $Res call(
      {String? postContent,
      String? imageUrl,
      int likeCount,
      int commentCount,
      String? userId});
}

/// @nodoc
class _$PostRequestModelCopyWithImpl<$Res, $Val extends PostRequestModel>
    implements $PostRequestModelCopyWith<$Res> {
  _$PostRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postContent = freezed,
    Object? imageUrl = freezed,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      postContent: freezed == postContent
          ? _value.postContent
          : postContent // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostRequestModelImplCopyWith<$Res>
    implements $PostRequestModelCopyWith<$Res> {
  factory _$$PostRequestModelImplCopyWith(_$PostRequestModelImpl value,
          $Res Function(_$PostRequestModelImpl) then) =
      __$$PostRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? postContent,
      String? imageUrl,
      int likeCount,
      int commentCount,
      String? userId});
}

/// @nodoc
class __$$PostRequestModelImplCopyWithImpl<$Res>
    extends _$PostRequestModelCopyWithImpl<$Res, _$PostRequestModelImpl>
    implements _$$PostRequestModelImplCopyWith<$Res> {
  __$$PostRequestModelImplCopyWithImpl(_$PostRequestModelImpl _value,
      $Res Function(_$PostRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postContent = freezed,
    Object? imageUrl = freezed,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? userId = freezed,
  }) {
    return _then(_$PostRequestModelImpl(
      postContent: freezed == postContent
          ? _value.postContent
          : postContent // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostRequestModelImpl implements _PostRequestModel {
  _$PostRequestModelImpl(
      {this.postContent,
      this.imageUrl,
      this.likeCount = 0,
      this.commentCount = 0,
      this.userId});

  factory _$PostRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostRequestModelImplFromJson(json);

  @override
  final String? postContent;
  @override
  final String? imageUrl;
  @override
  @JsonKey()
  final int likeCount;
  @override
  @JsonKey()
  final int commentCount;
  @override
  final String? userId;

  @override
  String toString() {
    return 'PostRequestModel(postContent: $postContent, imageUrl: $imageUrl, likeCount: $likeCount, commentCount: $commentCount, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostRequestModelImpl &&
            (identical(other.postContent, postContent) ||
                other.postContent == postContent) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, postContent, imageUrl, likeCount, commentCount, userId);

  /// Create a copy of PostRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostRequestModelImplCopyWith<_$PostRequestModelImpl> get copyWith =>
      __$$PostRequestModelImplCopyWithImpl<_$PostRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostRequestModelImplToJson(
      this,
    );
  }
}

abstract class _PostRequestModel implements PostRequestModel {
  factory _PostRequestModel(
      {final String? postContent,
      final String? imageUrl,
      final int likeCount,
      final int commentCount,
      final String? userId}) = _$PostRequestModelImpl;

  factory _PostRequestModel.fromJson(Map<String, dynamic> json) =
      _$PostRequestModelImpl.fromJson;

  @override
  String? get postContent;
  @override
  String? get imageUrl;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  String? get userId;

  /// Create a copy of PostRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostRequestModelImplCopyWith<_$PostRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
