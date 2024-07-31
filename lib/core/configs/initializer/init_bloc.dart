import 'package:admin_pannel/core/service_locator/service_locator.dart';
import 'package:admin_pannel/presentation/auth/signup/bloc/signup_bloc.dart';
import 'package:admin_pannel/presentation/home/bloc/user_details_bloc.dart';

abstract class InitBloc {
  static void init() {
    getIt.registerSingleton<UserDetailsBloc>(UserDetailsBloc());
    getIt.registerSingleton<SignupBloc>(SignupBloc());
  }
}
