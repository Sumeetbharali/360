import 'package:dartz/dartz.dart';
import 'package:gym_management/features/auth/data/models/sign_up_model.dart';

abstract class AuthRepositories {
  Future<Either> signup(GymUserModel user);

  Future<Either> getPlans();
}
