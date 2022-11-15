import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/helper/app_routes.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AnimationController? animationController;
  @override
  void onInit() {
    super.onInit();
    animationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this)
          ..forward()
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                Get.offNamed(AppRoutes.home);
              }
            },
          );
  }
}
