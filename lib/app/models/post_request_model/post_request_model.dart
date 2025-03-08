import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_request_model.freezed.dart';
part 'post_request_model.g.dart';

@freezed
class PostRequestModel with _$PostRequestModel {
  factory PostRequestModel({
    String? postContent,
    String? imageUrl,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    String? userId,
  }) = _PostRequestModel;

  factory PostRequestModel.fromJson(Map<String, dynamic> json) => _$PostRequestModelFromJson(json);
}
