import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/home_controller.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/widgets/home_bottom_navigation_bar_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/widgets/home_carousel_slider_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/widgets/home_drawer_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/widgets/home_horizontal_banner_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/widgets/home_rounded_item_widget.dart';

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
          body: Column(
            children: [
              HomeRoundedItemWidget(),
              Container(
                color: const Color.fromARGB(255, 234, 234, 234),
                height: 6,
              ),
              HomeCarouselSliderWidget(),
              const SizedBox(height: 5),
              Container(
                color: const Color.fromARGB(255, 234, 234, 234),
                height: 6,
              ),
              HomeHorizontalBannerWidget(),
            ],
          ),
          bottomNavigationBar: HomeBottomNavigationBarWidget(),
        );
      },
    );
  }
}
