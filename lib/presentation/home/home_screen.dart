import 'package:admin_pannel/presentation/home/widgets/dash_board_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          VerticalDivider(thickness: 1, width: 1, color: Colors.grey),
          Expanded(
            flex: 7,
            child: DashBoardWidget(),
          ),
        ],
      )),
    );
  }
}
