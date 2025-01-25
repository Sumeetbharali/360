import 'package:gym_management/features/auth/domain/repositories/auth_repositories.dart';

class SignInUseCase {
  final AuthRepositories _authRepositories;

  SignInUseCase(this._authRepositories);

  execute(String email, String password) async {
    return await _authRepositories.signIn(email, password);
  }
}
