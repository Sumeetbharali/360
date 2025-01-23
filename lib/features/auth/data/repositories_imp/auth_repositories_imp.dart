import 'package:dartz/dartz.dart';
import 'package:gym_management/features/auth/data/data_sources/auth_service.dart';
import 'package:gym_management/features/auth/domain/repositories/auth_repositories.dart';

import '../models/plan_model.dart';
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
  Future<Either> getPlans() async {
    // TODO: implement choosePlan

    final result = await _authFirebaseService.getPlans();

    List<PlanModel> plans = result.docs.map((doc) => doc.data()).toList();

    if (plans.isNotEmpty) {
      return Right(plans);
    } else {
      return const Left("Something Wrong");
    }
  }
}
