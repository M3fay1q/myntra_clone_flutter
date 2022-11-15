import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          //Rounded widget
          body: Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.roundedMenuItems.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 35,
                              backgroundImage: AssetImage(
                                  controller.roundedMenuItems[index].image),
                            ),
                            Text(
                              controller.roundedMenuItems[index].name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 108, 108, 108)),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 234, 234, 234),
                height: 6,
              ),
              Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: controller.bannerMenuItems.length,
                    options: CarouselOptions(
                      height: 300.0,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        controller.activeIndex_ = index;
                      },

                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayInterval: const Duration(seconds: 4),
                      // enableInfiniteScroll: true,
                      viewportFraction: 1,
                      initialPage: 0,
                      pauseAutoPlayOnTouch: true,
                    ),
                    itemBuilder: ((context, index, realIndex) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                controller.bannerMenuItems[index].images),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: controller.activeIndex_,
                    count: controller.bannerMenuItems.length,
                    effect: const SlideEffect(
                      dotWidth: 6,
                      dotHeight: 6,
                      activeDotColor: Color.fromARGB(255, 91, 172, 239),
                      dotColor: Color.fromARGB(255, 207, 207, 207),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Container(
                color: const Color.fromARGB(255, 234, 234, 234),
                height: 6,
              ),
            ],
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
