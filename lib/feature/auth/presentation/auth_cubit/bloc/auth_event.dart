part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class SignUpEvent extends AuthEvent {}

class SignInEvent extends AuthEvent {}

final class ResetPasswordEvent extends AuthEvent {}

final class TermsAndConditionUpdateEvent extends AuthEvent {
  final bool newValueOfConditionUpdate;
  TermsAndConditionUpdateEvent({required this.newValueOfConditionUpdate});
}

final class ObscurePasswordTextUpdateEvent extends AuthEvent {}
