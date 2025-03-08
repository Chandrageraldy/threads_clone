import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/models/likes_model.dart/likes_model.dart';

import 'package:threads_clone/app/models/post_request_model/post_request_model.dart';
import 'package:threads_clone/app/models/post_response_model/post_response_model.dart';
import 'package:threads_clone/app/services/post_service/post_service.dart';

class PostRepository {
  final PostService postService = PostService();

  Future<Response> createPost({required String postContent, String? imageUrl, required String userId}) async {
    PostRequestModel model = PostRequestModel(
      postContent: postContent,
      imageUrl: imageUrl,
      userId: userId,
    );

    final response = postService.createPost(model: model);

    return response;
  }

  Future<Response> getAllPosts({required String userId}) async {
    final response = await postService.getAllPosts(userId: userId);

    if (response.error == null) {
      List<PostResponseModel> posts = response.data.map<PostResponseModel>((post) {
        final List likesList = post['likes'] as List;
        return PostResponseModel.fromJson({
          ...post,
          'isLikedByUser': likesList.any((like) => like['userId'] == userId),
          'likeCount': likesList.length,
        });
      }).toList();

      return Response.complete(posts);
    }

    return response;
  }

  Future<Response> toggleLike({required int postId, required String userId, required bool isLikedByUser}) async {
    LikesModel model = LikesModel(postId: postId, userId: userId);

    final response = await postService.toggleLike(model: model, isLikedByUser: isLikedByUser);

    return response;
  }
}
