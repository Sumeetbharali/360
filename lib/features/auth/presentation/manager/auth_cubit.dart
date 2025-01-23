import 'package:bloc/bloc.dart';
import 'package:gym_management/features/auth/data/data_sources/auth_service.dart';
import 'package:gym_management/features/auth/data/models/plan_model.dart';
import 'package:gym_management/features/auth/data/models/sign_up_model.dart';
import 'package:gym_management/features/auth/data/repositories_imp/auth_repositories_imp.dart';
import 'package:gym_management/features/auth/domain/repositories/auth_repositories.dart';
import 'package:gym_management/features/auth/domain/use_cases/get_plans_use_case.dart';
import 'package:gym_management/features/auth/domain/use_cases/sign_in_use_case.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  GymUserModel user = GymUserModel();
  late SignUpUseCase _signUpUseCase;
  late GetPlansUseCase _getPlansUseCase;
  late AuthRepositories _authRepositories;
  late AuthFirebaseService _authFirebaseService;
  List<PlanModel> plans = [];

  Future<bool> signUp() async {
    _authFirebaseService = AuthFirebaseServiceImp();
    _authRepositories = AuthRepositoriesImp(_authFirebaseService);
    _signUpUseCase = SignUpUseCase(_authRepositories);
    final result = await _signUpUseCase.execute(user);

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

  Future<void> getPlans() async {
    _authFirebaseService = AuthFirebaseServiceImp();
    _authRepositories = AuthRepositoriesImp(_authFirebaseService);
    _getPlansUseCase = GetPlansUseCase(_authRepositories);
    emit(AuthGetPlansLoading());
    final result = await _getPlansUseCase.execute();
    return result.fold(
      (message) {
        emit(AuthGetPlansFail(message));
      },
      (data) {
        plans = data;
        emit(AuthGetPlansSuccess(plans));
      },
    );
  }
}
