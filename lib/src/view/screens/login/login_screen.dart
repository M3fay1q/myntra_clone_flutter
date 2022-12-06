import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/view/screens/login/login_controller.dart';
import 'package:myntra_clone_flutter/src/view/screens/login/widget/build_email_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/login/widget/build_forget_password_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/login/widget/build_login_button_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/login/widget/build_password_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/login/widget/build_remember_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/login/widget/build_signup_button_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 218, 112, 147),
                  Color.fromARGB(255, 235, 79, 131),
                  Color.fromARGB(255, 215, 27, 90),
                  Color.fromARGB(255, 187, 7, 67),
                ],
              ),
            ),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 120,
              ),
              child: Form(
                // autovalidateMode: AutovalidateMode.always,
                key: loginController.formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    BuildEmailWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    BuildPasswordWidget(),
                    const BuildForgetPasswordWidget(),
                    BuildRememberWidget(),
                    BuildLoginButtonWidget(),
                    const BuildSignupButtonWidget(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
