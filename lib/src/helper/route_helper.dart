import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/category/category_screen.dart';
import 'package:myntra_clone_flutter/src/view/screens/splash/splash_screen.dart';
import 'package:myntra_clone_flutter/src/view/screens/t_shirt_details/t_shirt_details_screen.dart';

import '../view/screens/brand_home/brand_home_screen.dart';
import '../view/screens/brand_home_t_shirt/brand_home_t_shirt_screen.dart';
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
      GetPage(
        name: AppRoutes.category,
        page: () => CategoryScreen(),
      ),
      GetPage(
        name: AppRoutes.brandHome,
        page: () => BrandMenHomeScreen(),
      ),
      GetPage(
        name: AppRoutes.brandHomeTShirt,
        page: () => BrandHomeTShirtScreen(),
      ),
      GetPage(
        name: AppRoutes.tShirtDetails,
        page: () => TShirtDetailsScreen(),
      ),
    ];
  }
}
