import 'package:admin_pannel/core/constants/app_color.dart';
import 'package:admin_pannel/data/model/menu/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Padding(
      padding: const EdgeInsets.only(top: 80.0, left: 20),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:
                    isSelected ? AppColor.selectionColor : Colors.transparent,
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  context.push(data.menu[index].route);
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: Icon(
                        data.menu[index].icon,
                        color: isSelected ? Colors.black : AppColor.greyColor,
                      ),
                    ),
                    Text(
                      data.menu[index].title,
                      style: TextStyle(
                        fontSize: 16,
                        color: isSelected ? Colors.black : AppColor.greyColor,
                        fontWeight:
                            isSelected ? FontWeight.w600 : FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SideMenuData {
  final menu = <MenuModel>[
    MenuModel(
      icon: Icons.home,
      title: 'Home',
      route: '/',
    ),
    MenuModel(icon: Icons.person, title: 'Profile', route: '/adduser'),
    MenuModel(icon: Icons.settings, title: 'Settings', route: ''),
    MenuModel(icon: Icons.logout, title: 'Logout', route: ''),
  ];
}
