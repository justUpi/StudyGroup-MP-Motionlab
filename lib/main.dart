import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_ui/pages/detail_page.dart';
import 'package:shop_ui/pages/login_page.dart';
import 'package:shop_ui/pages/main_screen.dart';
import 'package:shop_ui/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop UI',
      initialRoute: '/login',
      getPages: [
        GetPage(name: ('/login'), page: () => LoginPage()),
        GetPage(name: ('/register'), page: () => RegisterPage()),
        GetPage(name: ('/home'), page: () => MainScreen()),
        GetPage(name: ('/detail'), page: () => DetailPage()),
      ],
    );
  }
}
