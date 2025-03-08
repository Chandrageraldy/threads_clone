// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'likes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikesModelImpl _$$LikesModelImplFromJson(Map<String, dynamic> json) =>
    _$LikesModelImpl(
      likeId: (json['likeId'] as num?)?.toInt(),
      userId: json['userId'] as String?,
      postId: (json['postId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LikesModelImplToJson(_$LikesModelImpl instance) =>
    <String, dynamic>{
      'likeId': instance.likeId,
      'userId': instance.userId,
      'postId': instance.postId,
    };
