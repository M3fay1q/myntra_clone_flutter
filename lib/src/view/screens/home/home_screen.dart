import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/helper/app_routes.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/home_controller.dart';

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
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const [
                  DrawerHeader(
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Text('Drawer Header'),
                  )
                ],
              ),
            ),
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 1,
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ), //icon
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
            bottomNavigationBar: BottomNavigationBar(
              fixedColor: Colors.black,
              unselectedItemColor: Colors.black,
              backgroundColor: Colors.white,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    label: 'Home', icon: Icon(Icons.home_outlined)),
                BottomNavigationBarItem(
                    label: 'Categories', icon: Icon(Icons.grid_view_outlined)),
                BottomNavigationBarItem(
                    label: 'Studio', icon: Icon(Icons.tv_outlined)),
                BottomNavigationBarItem(
                    label: 'Explore', icon: Icon(Icons.explore_outlined)),
                BottomNavigationBarItem(
                    label: 'Profile', icon: Icon(Icons.person_outline)),
              ],
            ),
          );
        });
  }
}
