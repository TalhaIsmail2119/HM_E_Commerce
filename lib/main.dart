import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hm_e_commerce/features/authentication/screens/login/login_page.dart';
import 'package:hm_e_commerce/utils/theme/theme.dart';

void main() {

  // Todo : Add Widgets Binding
  // Todo : Init Local Storage
  // Todo : Await Native Splash
  // Todo : Initialize Firebase
  // Todo : Initialize Authentication
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HM E_Commerce',
      themeMode: ThemeMode.system,
      theme: HMAppTheme.lighttheme,

      home: const LogInPage()
    );
  }
}

