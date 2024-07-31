part of 'signup_bloc.dart';

sealed class SignupEvent {}

final class SignUpRequested extends SignupEvent {
  final String email;
  final String password;

  SignUpRequested({
    required this.email,
    required this.password,
  });
}
