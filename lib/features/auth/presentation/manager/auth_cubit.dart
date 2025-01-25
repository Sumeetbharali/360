import 'package:bloc/bloc.dart';
import 'package:gym_management/features/auth/data/data_sources/auth_service.dart';
import 'package:gym_management/features/auth/data/models/sign_up_model.dart';
import 'package:gym_management/features/auth/data/repositories_imp/auth_repositories_imp.dart';
import 'package:gym_management/features/auth/domain/repositories/auth_repositories.dart';
import 'package:gym_management/features/auth/domain/use_cases/get_plans_use_case.dart';
import 'package:gym_management/features/auth/domain/use_cases/sign_up_use_case.dart';
import 'package:meta/meta.dart';

import '../../domain/use_cases/sign_in_use_case.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  GymUserModel user = GymUserModel();
  String email = '', password = '';
  late SignUpUseCase _signUpUseCase;
  late SignInUseCase _signInUseCase;
  late GetPlansUseCase _getPlansUseCase;
  late AuthRepositories _authRepositories;
  late AuthFirebaseService _authFirebaseService;

  Future<void> signUp() async {
    _authFirebaseService = AuthFirebaseServiceImp();
    _authRepositories = AuthRepositoriesImp(_authFirebaseService);
    _signUpUseCase = SignUpUseCase(_authRepositories);
    final result = await _signUpUseCase.execute(user);

    return result.fold(
      (l) {
        // Handle the Left case (failure)
        emit(AuthSignUpFail());
        // Return false for failure
      },
      (r) {
        // Handle the Right case (success)
        print("All good");
        emit(AuthSignUpSuccess());
        // Return true for success
      },
    );
  }

  Future<void> signIn() async {
    _authFirebaseService = AuthFirebaseServiceImp();
    _authRepositories = AuthRepositoriesImp(_authFirebaseService);
    _signInUseCase = SignInUseCase(_authRepositories);
    final result = await _signInUseCase.execute(email, password);

    return result.fold(
      (l) {
        // Handle the Left case (failure)
        emit(AuthSignInFail());
        // Return false for failure
      },
      (r) {
        // Handle the Right case (success)
        print("All good");
        emit(AuthSignInSuccess());
        // Return true for success
      },
    );
  }

  Future<void> getPlans() async {
    _authFirebaseService = AuthFirebaseServiceImp();
    _authRepositories = AuthRepositoriesImp(_authFirebaseService);
    _getPlansUseCase = GetPlansUseCase(_authRepositories);
    final result = await _getPlansUseCase.execute();
    result.fold(
      (message) {
        emit(AuthGetPlansFail());
      },
      (data) {
        emit(AuthGetPlansSuccess());
      },
    );
  }
}
