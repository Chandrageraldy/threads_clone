import 'package:threads_clone/app/repositories/post_repo/post_repository.dart';
import 'package:threads_clone/app/viewmodels/base_view_model.dart';

class PostViewModel extends BaseViewModel {
  final PostRepository postRepository = PostRepository();

  Future<bool> createPost({required String postContent, String? imageUrl, required String userId}) async {
    final response = await postRepository.createPost(postContent: postContent, imageUrl: imageUrl, userId: userId);
    checkError(response);

    if (response.error == null) {
      return true;
    }

    return false;
  }

  Future<void> toggleLike({required int postId, required String userId, required bool isLikedByUser}) async {
    final response = await postRepository.toggleLike(postId: postId, userId: userId, isLikedByUser: isLikedByUser);
    checkError(response);
  }
}
