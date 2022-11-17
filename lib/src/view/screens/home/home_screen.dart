import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/category/category_screen.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/home_controller.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/widgets/home_bottom_navigation_bar_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/widgets/home_content_view.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/widgets/home_drawer_widget.dart';

import '../studio/studio_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: homeController,
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          key: controller.scaffoldKey,
          drawer: HomeDrawerWidget(),
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Image.asset('assets/images/myntra_insider.jpg',
                fit: BoxFit.cover),
            elevation: 1,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                controller.openDrawer();
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: IndexedStack(
            index: homeController.currentIndex > 0 ? 1 : 0,
            children: [
              const HomeContentView(),
              tabBody(homeController.currentIndex),
            ],
          ),
          bottomNavigationBar: HomeBottomNavigationBarWidget(),
        );
      },
    );
  }

  Widget tabBody(int currentPage) {
    switch (currentPage) {
      case -1:
        return Container(color: Colors.white);
      case 0:
        return const HomeContentView();
      case 1:
        return CategoryScreen();
      case 2:
        return const StudioScreen();
      case 3:
        return CategoryScreen();
      case 4:
        return CategoryScreen();
    }

    return const HomeContentView();
  }
}
