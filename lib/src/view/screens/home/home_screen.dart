import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/helper/app_routes.dart';
import 'package:myntra_clone_flutter/src/view/screens/drawer/drawer_screen.dart';

import '../drawer/drawer_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: (() {
            Get.toNamed(AppRoutes.drawer);
          }),
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
  }
}
