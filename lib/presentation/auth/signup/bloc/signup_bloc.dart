import 'package:admin_pannel/core/service_locator/service_locator.dart';
import 'package:admin_pannel/domain/repository/iuser_auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final IUserAuthRepository _iUserRegisterRepository =
      getIt.get<IUserAuthRepository>();

  SignupBloc() : super(SignupInitial()) {
    on<SignUpRequested>((event, emit) async {
      emit(SignupProcess());
      try {
        await _iUserRegisterRepository.registerUser(
          event.email,
          event.password,
        );
        emit(SignupSuccess(successMessage: 'Sign up success'));
      } catch (e) {
        emit(SignupFailed(failureMessage: e.toString()));
      }
    });
  }
}
