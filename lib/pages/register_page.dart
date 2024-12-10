import 'package:flutter/material.dart';
import 'package:shop_ui/widgets/custom_textfield.dart';
import 'package:shop_ui/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confrmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 150.0,
                ),
                Text(
                  'Register',
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  )),
                ),
                Text(
                  'Create your account fot Happy Shopping',
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  )),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                CustomTextfield(
                  controller: nameController,
                  name: 'Full Name',
                  prefixIcon: Icons.person_outlined,
                  inputType: TextInputType.name,
                  textCapitalization: TextCapitalization.words,
                ),
                CustomTextfield(
                  controller: emailController,
                  name: 'Email',
                  prefixIcon: Icons.email_outlined,
                  inputType: TextInputType.emailAddress,
                ),
                CustomTextfield(
                  controller: passController,
                  name: 'Password',
                  prefixIcon: Icons.lock_outlined,
                  inputType: TextInputType.text,
                  obscureText: true,
                ),
                CustomTextfield(
                  controller: passController,
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
                  child: Ink(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.green.shade900,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Text(
                      'Register',
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
                  onTap: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.green,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
