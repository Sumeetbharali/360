part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSignUpSuccess extends AuthState {}

final class AuthSignUpFail extends AuthState {}

final class AuthGetPlansSuccess extends AuthState {
  List<PlanModel> plans;

  AuthGetPlansSuccess(this.plans);
}

final class AuthGetPlansFail extends AuthState {
  String message;

  AuthGetPlansFail(this.message);
}

final class AuthGetPlansLoading extends AuthState {}
