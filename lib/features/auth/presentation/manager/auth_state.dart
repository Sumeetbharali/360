part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSignUpSuccess extends AuthState {}
final class AuthSignUpFail extends AuthState {}

final class AuthPlanSuccess extends AuthState {}

final class AuthPlanFail extends AuthState {}
