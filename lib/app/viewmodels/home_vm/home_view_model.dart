import 'package:threads_clone/app/models/post_response_model/post_response_model.dart';
import 'package:threads_clone/app/repositories/post_repo/post_repository.dart';
import 'package:threads_clone/app/viewmodels/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  final PostRepository postRepository = PostRepository();

  List<PostResponseModel> posts = [];

  Future<void> getAllPosts({required String userId}) async {
    final response = await postRepository.getAllPosts(userId: userId);
    checkError(response);
    posts = response.data;
    notifyListeners();
  }
}
