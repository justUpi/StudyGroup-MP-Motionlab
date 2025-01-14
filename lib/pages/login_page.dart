import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_ui/controller/login_controller.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ui/widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Lottie.asset('assets/lottie/lottie_login.json',
                      height: 300.0),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Welcome!',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                Text(
                  'Happy Shopping All',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 18.0,
                      letterSpacing: 0.5,
                      color: Color(0xFF707070),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomTextfield(
                  controller: controller.emailController,
                  name: 'Email',
                  prefixIcon: Icons.email_outlined,
                  inputType: TextInputType.emailAddress,
                ),
                CustomTextfield(
                  controller: controller.passController,
                  name: 'Password',
                  prefixIcon: Icons.lock_outlined,
                  inputType: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  splashColor: Colors.green.shade700,
                  onTap: controller.login,
                  child: Ink(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.green.shade900,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Text(
                      'Login',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: controller.goToRegister,
                      child: Text(
                        'Regist',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          color: Colors.green,
                          letterSpacing: 0.5,
                        )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
