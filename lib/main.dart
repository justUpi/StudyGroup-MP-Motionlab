import 'package:flutter/material.dart';
import 'package:shop_ui/pages/home_page.dart';
import 'package:shop_ui/pages/login_page.dart';
import 'package:shop_ui/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (contex) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
