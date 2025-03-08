import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:threads_clone/app/models/user_profile_model/user_profile_model.dart';

part 'post_response_model.freezed.dart';
part 'post_response_model.g.dart';

@freezed
class PostResponseModel with _$PostResponseModel {
  factory PostResponseModel({
    int? postId,
    DateTime? createdAt,
    String? postContent,
    String? imageUrl,
    int? likeCount,
    int? commentCount,
    String? userId,
    UserProfileModel? users,
    bool? isLikedByUser,
  }) = _PostResponseModel;

  factory PostResponseModel.fromJson(Map<String, dynamic> json) => _$PostResponseModelFromJson(json);
}
