part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignupLoadingState extends AuthState {}

final class SignupSuccessState extends AuthState {}

final class SignupErrorState extends AuthState {
  final String errorMessage;

  SignupErrorState({required this.errorMessage});
}

final class SignInLoadingState extends AuthState {}

final class SignInSuccessState extends AuthState {}

final class SignInErrorState extends AuthState {
  final String errorMessage;

  SignInErrorState({required this.errorMessage});
}

final class ResetPasswordLoadingState extends AuthState {}

final class ResetPasswordSuccessState extends AuthState {}

final class ResetPasswordErrorState extends AuthState {
  final String errorMessage;

  ResetPasswordErrorState({required this.errorMessage});
}

final class TermsAndConditionUpdateState extends AuthState {}

final class ObscurePasswordTextUpdateState extends AuthState {}
