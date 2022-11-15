import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/home_controller.dart';

class HomeDrawerWidget extends StatelessWidget {
  HomeDrawerWidget({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage('assets/images/drawer.jpg'),
                    fit: BoxFit.cover)),
            child: Text(''),
          ),
          ListTile(
            leading: const Icon(Icons.grid_view_outlined),
            title: const Text(
              "Shop by Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: homeController.closeDrawer,
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_checkout_outlined),
            title: const Text("Orders"),
            onTap: homeController.closeDrawer,
          ),
        ],
      ),
    );
  }
}
