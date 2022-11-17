import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/home_controller.dart';

class HomeBottomNavigationBarWidget extends StatelessWidget {
  HomeBottomNavigationBarWidget({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => homeController.onItemTapped(index),
      currentIndex: homeController.currentIndex,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
      // currentIndex: ,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.grid_view_outlined),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.tv_outlined),
          label: 'Studio',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.explore_outlined),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
