import '../repositories/auth_repositories.dart';

class ChoosePlanUseCase {
  final AuthRepositories _authRepositories;

  ChoosePlanUseCase(this._authRepositories);

  excute(String plan) async {
    return await _authRepositories.choosePlan(plan);
  }
}
