import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/models/likes_model.dart/likes_model.dart';
import 'package:threads_clone/app/models/post_request_model/post_request_model.dart';

import 'package:threads_clone/app/services/supabase_base_service.dart';

class PostService extends SupabaseBaseService {
  Future<Response> createPost({required PostRequestModel model}) {
    return callSupabaseDB(requestType: RequestType.POST, table: TableName.posts, requestBody: model.toJson());
  }

  Future<Response> getAllPosts({required String userId}) {
    return callSupabaseDB(
      requestType: RequestType.GET,
      table: TableName.posts,
      column: '*, likes!left(userId), users(username, profileImageUrl)',
    );
  }

  Future<Response> toggleLike({required LikesModel model, required bool isLikedByUser}) {
    final json = model.toJson();
    json.remove('likeId');

    if (!isLikedByUser) {
      return callSupabaseDB(requestType: RequestType.POST, table: TableName.likes, requestBody: json);
    } else {
      return callSupabaseDB(requestType: RequestType.DELETE, table: TableName.likes, filters: json);
    }
  }
}
