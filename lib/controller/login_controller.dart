import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  void login() {
    Get.offNamed('/home');
  }

  void goToRegister() {
    Get.toNamed('/register');
  }
}
