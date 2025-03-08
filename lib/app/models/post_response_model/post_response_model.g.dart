// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostResponseModelImpl _$$PostResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostResponseModelImpl(
      postId: (json['postId'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      postContent: json['postContent'] as String?,
      imageUrl: json['imageUrl'] as String?,
      likeCount: (json['likeCount'] as num?)?.toInt(),
      commentCount: (json['commentCount'] as num?)?.toInt(),
      userId: json['userId'] as String?,
      users: json['users'] == null
          ? null
          : UserProfileModel.fromJson(json['users'] as Map<String, dynamic>),
      isLikedByUser: json['isLikedByUser'] as bool?,
    );

Map<String, dynamic> _$$PostResponseModelImplToJson(
        _$PostResponseModelImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'postContent': instance.postContent,
      'imageUrl': instance.imageUrl,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'userId': instance.userId,
      'users': instance.users,
      'isLikedByUser': instance.isLikedByUser,
    };
