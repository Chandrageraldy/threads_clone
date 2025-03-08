// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostRequestModelImpl _$$PostRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostRequestModelImpl(
      postContent: json['postContent'] as String?,
      imageUrl: json['imageUrl'] as String?,
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      commentCount: (json['commentCount'] as num?)?.toInt() ?? 0,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$PostRequestModelImplToJson(
        _$PostRequestModelImpl instance) =>
    <String, dynamic>{
      'postContent': instance.postContent,
      'imageUrl': instance.imageUrl,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'userId': instance.userId,
    };
