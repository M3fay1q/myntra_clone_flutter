import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('assets/images/welcome.jpg'),
                          fit: BoxFit.cover)),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.grid_view_outlined),
                  title: const Text(
                    "Shop by Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: controller.closeDrawer,
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart_checkout_outlined),
                  title: const Text("Orders"),
                  onTap: controller.closeDrawer,
                ),
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
          //Rounded widget
          body: Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.roundedMenuItems.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.orangeAccent,
                        radius: 35,
                        backgroundImage: NetworkImage(
                            controller.roundedMenuItems[index].image),
                      ),
                      Text(controller.roundedMenuItems[index].name),
                    ],
                  ),
                );
              }),
            ),
          ),

          bottomNavigationBar: BottomNavigationBar(
            // onTap: ,
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
          ),
        );
      },
    );
  }
}
