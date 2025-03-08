// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileModelImpl(
      userId: json['userId'] as String?,
      email: json['email'] as String?,
      fullname: json['fullname'] as String?,
      username: json['username'] as String?,
      bio: json['bio'] as String?,
      link: json['link'] as String?,
      profileImageUrl: json['profileImageUrl'] as String?,
    );

Map<String, dynamic> _$$UserProfileModelImplToJson(
        _$UserProfileModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'fullname': instance.fullname,
      'username': instance.username,
      'bio': instance.bio,
      'link': instance.link,
      'profileImageUrl': instance.profileImageUrl,
    };
