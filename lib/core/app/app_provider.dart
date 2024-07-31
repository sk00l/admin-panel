import 'package:admin_pannel/core/app/app.dart';
import 'package:admin_pannel/core/service_locator/service_locator.dart';
import 'package:admin_pannel/presentation/auth/signup/bloc/signup_bloc.dart';
import 'package:admin_pannel/presentation/home/bloc/user_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt.get<UserDetailsBloc>()..add(GetUserEvent()),
        ),
        BlocProvider(
          create: (context) => getIt.get<SignupBloc>(),
        )
      ],
      child: const HrAdminPannelApp(),
    );
  }
}
