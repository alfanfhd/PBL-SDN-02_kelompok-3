import '../../models/app_user.dart';

class AuthService {
  Future<AppUser?> login({
    required String email,
    required String password,
  }) async {
    // TODO: Implement authentication logic
    return null;
  }

  Future<void> logout() async {
    // TODO: Implement logout logic
  }

  Future<AppUser?> getCurrentUser() async {
    // TODO: Implement get current user logic
    return null;
  }
}
