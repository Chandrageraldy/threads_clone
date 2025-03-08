import 'package:freezed_annotation/freezed_annotation.dart';

part 'likes_model.freezed.dart';
part 'likes_model.g.dart';

@freezed
class LikesModel with _$LikesModel {
  const factory LikesModel({
    int? likeId,
    String? userId,
    int? postId,
  }) = _LikesModel;

  factory LikesModel.fromJson(Map<String, Object?> json) => _$LikesModelFromJson(json);
}
