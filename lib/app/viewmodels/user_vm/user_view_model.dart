import 'package:threads_clone/app/models/user_profile_model/user_profile_model.dart';
import 'package:threads_clone/app/repositories/user_repo/user_repository.dart';
import 'package:threads_clone/app/viewmodels/base_view_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserViewModel extends BaseViewModel {
  final UserRepository userRepository = UserRepository();

  bool get isLoggedIn => userRepository.isLoggedIn;

  UserProfileModel? get userProfile => userRepository.userProfile;

  Future<bool> loginWithEmailAndPassword({required String email, required String password}) async {
    final response = await userRepository.loginWithEmailAndPassword(email: email, password: password);
    checkError(response);

    if (response.data is User) {
      User user = response.data;
      await getUserProfile(userId: user.id);
    }

    return response.data is User;
  }

  Future<bool> signUpWithEmailAndPassword(
      {required String email, required String password, required String username, required String fullname}) async {
    final response = await userRepository.signUpWithEmailAndPassword(email: email, password: password);
    checkError(response);

    if (response.data is User) {
      User user = response.data;
      await createUserProfile(userId: user.id, email: user.email!, username: username, fullname: fullname);
    }

    return response.data is User;
  }

  Future<bool> logout() async {
    final response = await userRepository.logout();
    checkError(response);
    return response.data;
  }

  Future<void> createUserProfile(
      {required String userId, required String email, required String username, required String fullname}) async {
    final response =
        await userRepository.createUserProfile(userId: userId, email: email, username: username, fullname: fullname);
    checkError(response);
  }

  Future<void> getUserProfile({required String userId}) async {
    final response = await userRepository.getUserProfile(userId: userId);
    checkError(response);
  }

  Future<bool> checkUsernameAvailability({required String username}) async {
    final response = await userRepository.checkUsernameAvailability(username: username);
    checkError(response);

    List<Map<String, dynamic>> data = response.data;

    if (data.isEmpty) {
      return true;
    }

    return false;
  }

  Future<bool> updateBioAndLink({required String userId, required String bio, required String link}) async {
    final response = await userRepository.updateBioAndLink(userId: userId, bio: bio, link: link);
    checkError(response);

    if (response.error == null) {
      return true;
    }

    return false;
  }
}
