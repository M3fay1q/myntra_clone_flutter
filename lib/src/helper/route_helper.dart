import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/splash/splash_screen.dart';

import '../view/screens/home/home_screen.dart';
import 'app_routes.dart';

class RouteHelper {
  static List<GetPage> getAllPages() {
    return [
      GetPage(
        name: AppRoutes.splash,
        page: () => SplashScreen(),
      ),
      GetPage(
        name: AppRoutes.home,
        page: () => HomeScreen(),
      ),
    ];
  }
}
