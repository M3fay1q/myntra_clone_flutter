import 'package:get/get.dart';

class LoginController extends GetxController {
  bool isRememberme = false;

  void onChanged(value) {
    isRememberme = value;
    update();
  }
}
