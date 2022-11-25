import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/brand_home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BrandHomeCarousel2Widget extends StatelessWidget {
  BrandHomeCarousel2Widget({Key? key}) : super(key: key);
  final BrandHomeController brandHomeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(
          image: AssetImage(
              'assets/images/brand_home_images/c2_banner/banner3.png'),
          fit: BoxFit.cover,
        ),
        CarouselSlider.builder(
          itemCount: brandHomeController.brandHomeCarousel2MenuItem.length,
          options: CarouselOptions(
            height: Get.height * 0.17,
            autoPlay: true,
            onPageChanged: (index, reason) {
              brandHomeController.onPageChange2(index);
            },
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
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
          count: brandHomeController.brandHomeCarousel2MenuItem.length,
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
      ],
    );
  }
}
