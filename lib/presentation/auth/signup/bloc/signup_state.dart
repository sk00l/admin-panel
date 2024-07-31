// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'signup_bloc.dart';

class SignupFailed extends SignupState {
  final String failureMessage;
  SignupFailed({
    required this.failureMessage,
  });

  @override
  List<Object> get props => [failureMessage];
}

final class SignupInitial extends SignupState {}

class SignupProcess extends SignupState {}

sealed class SignupState extends Equatable {
  @override
  List<Object> get props => [];
}

class SignupSuccess extends SignupState {
  final String successMessage;
  SignupSuccess({
    required this.successMessage,
  });

  @override
  List<Object> get props => [successMessage];
}
