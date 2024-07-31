import 'package:admin_pannel/core/configs/router/app_router.dart';
import 'package:flutter/material.dart';

class HrAdminPannelApp extends StatelessWidget {
  const HrAdminPannelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
