import '../repositories/auth_repositories.dart';

class GetPlansUseCase {
  final AuthRepositories _authRepositories;

  GetPlansUseCase(this._authRepositories);

  execute() async {
    return await _authRepositories.getPlans();
  }
}
