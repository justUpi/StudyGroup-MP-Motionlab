import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  void register() {
    if (nameController.text.isEmpty) {
      Get.snackbar('Error', 'Email is required',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
      return;
    }

    if (emailController.text.isEmpty) {
      Get.snackbar('Error', 'Email is required',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
      return;
    }
    if (passController.text.isEmpty || passController.text.length < 6) {
      Get.snackbar('Error', 'Password must be at least 6 characters',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
      return;
    }
    if (passController.text != confirmPassController.text) {
      Get.snackbar('Error', 'Passwords do not match',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
      return;
    }
    Get.snackbar('Success', 'Registration successful!',
        snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green);

    // Navigasi ke halaman login setelah registrasi berhasil
    Get.offNamed('/login');
  }

  // Fungsi untuk navigasi ke halaman login
  void goToLogin() {
    Get.toNamed('/login');
  }

  @override
  void onClose() {
    // Membersihkan controller saat tidak digunakan lagi
    nameController.dispose();
    emailController.dispose();
    passController.dispose();
    confirmPassController.dispose();
    super.onClose();
  }
}
