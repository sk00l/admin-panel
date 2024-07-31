import 'package:admin_pannel/presentation/home/bloc/user_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Text(
              "NOTHINGE HERE",
              style: TextStyle(fontSize: 200),
            ),
          ),
        );
      },
    );
  }
}
