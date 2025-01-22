import 'package:dartz/dartz.dart';
import 'package:gym_management/features/auth/data/data_sources/auth_service.dart';
import 'package:gym_management/features/auth/domain/repositories/auth_repositories.dart';

import '../models/sign_up_model.dart';

class AuthRepositoriesImp implements AuthRepositories {
  AuthFirebaseService _authFirebaseService;

  AuthRepositoriesImp(this._authFirebaseService);

  @override
  Future<Either> signup(GymUserModel user) async {
    final response = await _authFirebaseService.signup(user);

    return response.fold(
      (l) {
        return Left(false);
      },
      (r) {
        return Right(true);
      },
    );
  }

  @override
  Future<Either> choosePlan(String plan) async {
    final response = await _authFirebaseService.choosePlan(plan);

    return response.fold(
      (l) {
        return const Left(false);
      },
      (r) {
        return const Right(true);
      },
    );
  }
}
