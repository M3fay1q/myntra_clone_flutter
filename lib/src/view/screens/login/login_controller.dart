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
}
