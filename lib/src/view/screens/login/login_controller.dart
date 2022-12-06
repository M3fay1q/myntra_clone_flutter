import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/helper/app_routes.dart';

class LoginController extends GetxController {
  bool isRememberme = false;
  final formkey = GlobalKey<FormState>();

  void onChanged(value) {
    isRememberme = value;
    update();
  }

  void validator() {
    if (formkey.currentState!.validate()) {
      Get.toNamed(AppRoutes.home);
    } else {
      return;
    }
  }

  String? emailValidate(String? value) {
    if (value == null || value.isEmpty) {
      return "    Enter a email address";
    } else {
      return null;
    }
  }

  String? passwordValidate(String? value) {
    if (value == null || value.isEmpty) {
      return "    Enter a password";
    } else {
      return null;
    }
  }
}
