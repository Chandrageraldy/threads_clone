// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'likes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LikesModel _$LikesModelFromJson(Map<String, dynamic> json) {
  return _LikesModel.fromJson(json);
}

/// @nodoc
mixin _$LikesModel {
  int? get likeId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  int? get postId => throw _privateConstructorUsedError;

  /// Serializes this LikesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LikesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LikesModelCopyWith<LikesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesModelCopyWith<$Res> {
  factory $LikesModelCopyWith(
          LikesModel value, $Res Function(LikesModel) then) =
      _$LikesModelCopyWithImpl<$Res, LikesModel>;
  @useResult
  $Res call({int? likeId, String? userId, int? postId});
}

/// @nodoc
class _$LikesModelCopyWithImpl<$Res, $Val extends LikesModel>
    implements $LikesModelCopyWith<$Res> {
  _$LikesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LikesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeId = freezed,
    Object? userId = freezed,
    Object? postId = freezed,
  }) {
    return _then(_value.copyWith(
      likeId: freezed == likeId
          ? _value.likeId
          : likeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikesModelImplCopyWith<$Res>
    implements $LikesModelCopyWith<$Res> {
  factory _$$LikesModelImplCopyWith(
          _$LikesModelImpl value, $Res Function(_$LikesModelImpl) then) =
      __$$LikesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? likeId, String? userId, int? postId});
}

/// @nodoc
class __$$LikesModelImplCopyWithImpl<$Res>
    extends _$LikesModelCopyWithImpl<$Res, _$LikesModelImpl>
    implements _$$LikesModelImplCopyWith<$Res> {
  __$$LikesModelImplCopyWithImpl(
      _$LikesModelImpl _value, $Res Function(_$LikesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LikesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeId = freezed,
    Object? userId = freezed,
    Object? postId = freezed,
  }) {
    return _then(_$LikesModelImpl(
      likeId: freezed == likeId
          ? _value.likeId
          : likeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikesModelImpl implements _LikesModel {
  const _$LikesModelImpl({this.likeId, this.userId, this.postId});

  factory _$LikesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikesModelImplFromJson(json);

  @override
  final int? likeId;
  @override
  final String? userId;
  @override
  final int? postId;

  @override
  String toString() {
    return 'LikesModel(likeId: $likeId, userId: $userId, postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikesModelImpl &&
            (identical(other.likeId, likeId) || other.likeId == likeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, likeId, userId, postId);

  /// Create a copy of LikesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikesModelImplCopyWith<_$LikesModelImpl> get copyWith =>
      __$$LikesModelImplCopyWithImpl<_$LikesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikesModelImplToJson(
      this,
    );
  }
}

abstract class _LikesModel implements LikesModel {
  const factory _LikesModel(
      {final int? likeId,
      final String? userId,
      final int? postId}) = _$LikesModelImpl;

  factory _LikesModel.fromJson(Map<String, dynamic> json) =
      _$LikesModelImpl.fromJson;

  @override
  int? get likeId;
  @override
  String? get userId;
  @override
  int? get postId;

  /// Create a copy of LikesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikesModelImplCopyWith<_$LikesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
