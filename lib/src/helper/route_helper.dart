import 'package:get/get.dart';

import '../view/screens/home/home_screen.dart';

class RouteHelper {
  static const String home = '/home';

  //List of created screens
  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => const HomeScreen(),
    ),
  ];
}
