part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSignUpSuccess extends AuthState {}

final class AuthSignUpFail extends AuthState {}

final class AuthSignInSuccess extends AuthState {}

final class AuthSignInFail extends AuthState {}

final class AuthSignOutSuccess extends AuthState {}

final class AuthSignOutFail extends AuthState {}

final class AuthGetPlansSuccess extends AuthState {}

final class AuthGetPlansFail extends AuthState {

}

final class AuthGetPlansLoading extends AuthState {}
