import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/brand_home_controller.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/widgets/brand_home_carousel2_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/widgets/brand_home_carousel_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/widgets/brand_home_round_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BrandMenHomeScreen extends StatelessWidget {
  BrandMenHomeScreen({Key? key}) : super(key: key);
  final BrandHomeController brandHomeController =
      Get.put(BrandHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0.8,
        actions: [
          IconButton(
              onPressed: (() {}), icon: const Icon(Icons.search_outlined)),
          IconButton(
              onPressed: (() {}), icon: const Icon(Icons.favorite_outline)),
          IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.shopping_bag_outlined)),
        ],
      ),
      body: GetBuilder<BrandHomeController>(
          init: brandHomeController,
          builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  BrandHomeRoundWidget(),
                  // BrandHomeCarouselWidget(),
                  BrandHomeCarouselWidget(),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Container(
                    color: Colors.black,
                    height: Get.height * 0.0004,
                  ),
                  const Image(
                    image: AssetImage(
                        'assets/images/brand_home_images/c_banner/banner2.png'),
                  ),

                  // ==================================
                  // BrandHomeCarousel2Widget(),
                  const Image(
                    image: AssetImage(
                        'assets/images/brand_home_images/c2_banner/banner3.png'),
                    fit: BoxFit.cover,
                  ),
                  CarouselSlider.builder(
                    itemCount:
                        brandHomeController.brandHomeCarousel2MenuItem.length,
                    options: CarouselOptions(
                      height: Get.height * 0.17,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        brandHomeController.onPageChange2(index);
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
                            image: AssetImage(brandHomeController
                                .brandHomeCarousel2MenuItem[index].images),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: brandHomeController.activeIndex_,
                    count:
                        brandHomeController.brandHomeCarousel2MenuItem.length,
                    effect: const SlideEffect(
                      dotWidth: 6,
                      dotHeight: 6,
                      activeDotColor: Color.fromARGB(255, 91, 172, 239),
                      dotColor: Color.fromARGB(255, 207, 207, 207),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),

                  // =========================
                  const Image(
                    image: AssetImage(
                        'assets/images/brand_home_images/h_banner/banner4.png'),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 247, 247, 247),
                    height: Get.height * 0.4,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: brandHomeController
                            .brandHomeHorizontalMenuItem.length,
                        itemBuilder: ((context, index) {
                          return Container(
                            padding: const EdgeInsets.all(5),
                            color: const Color.fromARGB(255, 247, 247, 247),
                            child: Image(
                              image: AssetImage(brandHomeController
                                  .brandHomeHorizontalMenuItem[index].images),
                            ),
                          );
                        })),
                  )
                ],
              ),
            );
          }),
    );
  }
}
