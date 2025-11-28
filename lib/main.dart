import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rebuy/views/auth_view/login_view.dart';
import 'package:rebuy/views/auth_view/signup_view.dart';
import 'package:rebuy/views/home_view/home_view.dart';
import 'package:rebuy/views/menu_view/menu_view.dart';
import 'package:rebuy/views/message_view/message_view.dart';
import 'package:rebuy/views/my_account_view/my_account_view.dart';
import 'package:rebuy/views/splish_view/splish_view.dart';

void main() {
  runApp(
    DevicePreview(
           // optional, you can set true if needed
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splish',
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      
      getPages: [
        GetPage(name: '/splish', page: () => SplishView()),
        GetPage(name: '/login', page: () => LoginView()),
        GetPage(name: '/signup', page: () => SignupView()),
        GetPage(name: '/home', page: () => HomeView()),

        /// Menu & My Account Routes
        GetPage(name: '/menu', page: () => MenuView()),
        GetPage(name: '/message', page: () => MessagesView()),
        GetPage(name: '/my-account', page: () => MyAccountView()),
      ],
    );
  }
}
