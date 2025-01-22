import 'package:gym_management/features/auth/data/models/sign_up_model.dart';
import 'package:gym_management/features/auth/domain/repositories/auth_repositories.dart';

class SignUpUseCase {
  final AuthRepositories _authRepositories;

  SignUpUseCase(this._authRepositories);

  excute(SignUpModel user) async {
    return await _authRepositories.signup(user);
  }
}
