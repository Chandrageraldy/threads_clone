import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/models/auth_model.dart/email_auth_request_model.dart';
import 'package:threads_clone/app/models/user_profile_model/user_profile_model.dart';
import 'package:threads_clone/app/services/supabase_base_service.dart';

class UserService extends SupabaseBaseService {
  Future<Response> loginWithEmailAndPassword(EmailAuthRequestModel model) {
    return authenticate(authType: AuthType.EMAILLOGIN, requestBody: model.toJson());
  }

  Future<Response> signUpWithEmailAndPassword(EmailAuthRequestModel model) {
    return authenticate(authType: AuthType.EMAILSIGNUP, requestBody: model.toJson());
  }

  Future<Response> logout() {
    return authenticate(authType: AuthType.LOGOUT);
  }

  Future<Response> createUserProfile({required UserProfileModel model}) {
    return callSupabaseDB(
      requestType: RequestType.POST,
      table: TableName.users,
      requestBody: model.toJson(),
    );
  }

  Future<Response> getUserProfile({required String userId}) {
    return callSupabaseDB(
      requestType: RequestType.GET,
      table: TableName.users,
      filters: {TableCol.userId: userId},
    );
  }

  Future<Response> checkUsernameAvailability({required String username}) {
    return callSupabaseDB(requestType: RequestType.GET, table: TableName.users, filters: {TableCol.username: username});
  }

  Future<Response> updateBioAndLink({required String userId, required String bio, required String link}) {
    return callSupabaseDB(
      requestType: RequestType.PUT,
      table: TableName.users,
      filters: {TableCol.userId: userId},
      requestBody: {TableCol.bio: bio, TableCol.link: link},
    );
  }
}
