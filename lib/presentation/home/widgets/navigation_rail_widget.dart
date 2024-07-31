import 'package:admin_pannel/core/constants/app_color.dart';
import 'package:admin_pannel/presentation/home/widgets/dialog_container.dart';
import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class NavigationRailWidget extends StatefulWidget {
  const NavigationRailWidget({super.key});

  @override
  State<NavigationRailWidget> createState() => _NavigationRailWidgetState();
}

class _NavigationRailWidgetState extends State<NavigationRailWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      leading: Padding(
        padding:
            const EdgeInsets.only(right: 16, top: 16.0, left: 16, bottom: 32),
        child:
            SvgPicture.asset('assets/vectors/logo.svg', width: 50, height: 50),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: FloatingActionButton(
          backgroundColor: const Color(0xffd9f2e2),
          elevation: 0,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => FluidDialog(
                rootPage: FluidDialogPage(
                    alignment: Alignment.center,
                    builder: (context) => const DialogContainer()),
              ),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      minWidth: 72,
      indicatorColor: const Color(0xffd9f2e2),
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: AppColor.backgroundColor,
      unselectedIconTheme: const IconThemeData(color: Colors.white),
      useIndicator: true,
      elevation: 5,
      labelType: NavigationRailLabelType.all,
      selectedLabelTextStyle:
          const TextStyle(color: Colors.white, fontSize: 20),
      unselectedLabelTextStyle:
          const TextStyle(color: Colors.white, fontSize: 16),
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
          switch (index) {
            case 0:
              context.go('/');
              break;
            case 1:
              context.go('/settings');
              break;
          }
        });
      },
      selectedIndex: selectedIndex,
      destinations: const [
        NavigationRailDestination(
          icon: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Icon(
              Icons.home,
              size: 30,
            ),
          ),
          label: Text("Home"),
        ),
        NavigationRailDestination(
          icon: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Icon(
              Icons.settings,
              size: 30,
            ),
          ),
          label: Text("Settings"),
        ),
      ],
    );
  }
}
