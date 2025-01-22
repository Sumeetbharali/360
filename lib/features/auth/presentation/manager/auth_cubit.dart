import 'package:bloc/bloc.dart';
import 'package:gym_management/features/auth/data/data_sources/auth_service.dart';
import 'package:gym_management/features/auth/data/models/sign_up_model.dart';
import 'package:gym_management/features/auth/data/repositories_imp/auth_repositories_imp.dart';
import 'package:gym_management/features/auth/domain/repositories/auth_repositories.dart';
import 'package:gym_management/features/auth/domain/use_cases/sign_in_use_case.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  GymUserModel user = GymUserModel();
  late SignUpUseCase _signUpUseCase;
  late AuthRepositories _authRepositories;
  late AuthFirebaseService _authFirebaseService;

  Future<bool> signUp() async {
    _authFirebaseService = AuthFirebaseServiceImp();
    _authRepositories = AuthRepositoriesImp(_authFirebaseService);
    _signUpUseCase = SignUpUseCase(_authRepositories);
    final result = await _signUpUseCase.excute(user);

    return result.fold(
      (l) {
        // Handle the Left case (failure)
        emit(AuthSignUpFail());
        return false; // Return false for failure
      },
      (r) {
        // Handle the Right case (success)
        print("All good");
        emit(AuthSignUpSuccess());
        return true; // Return true for success
      },
    );
  }

  Future<bool> choosePlan() async {
    _authFirebaseService = AuthFirebaseServiceImp();
    _authRepositories = AuthRepositoriesImp(_authFirebaseService);
    _signUpUseCase = SignUpUseCase(_authRepositories);
    final result = await _signUpUseCase.excute(user);

    return result.fold(
      (l) {
        // Handle the Left case (failure)
        emit(AuthSignUpFail());
        return false; // Return false for failure
      },
      (r) {
        // Handle the Right case (success)
        print("All good");
        emit(AuthSignUpSuccess());
        return true; // Return true for success
      },
    );
  }
}
