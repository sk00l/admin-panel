import 'package:admin_pannel/core/app/app_provider.dart';
import 'package:admin_pannel/core/service_locator/service_locator.dart';
import 'package:admin_pannel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setup();
  runApp(const AppProvider());
}
