import 'package:gym_management/features/auth/domain/repositories/auth_repositories.dart';

class SignOutUseCase {
  final AuthRepositories _authRepositories;

  SignOutUseCase(this._authRepositories);

  execute() async {
    return await _authRepositories.signOut();
  }
}
