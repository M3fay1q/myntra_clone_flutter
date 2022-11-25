import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/brand_home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BrandHomeCarouselWidget extends StatelessWidget {
  BrandHomeCarouselWidget({Key? key}) : super(key: key);
  final BrandHomeController brandHomeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: brandHomeController.brandHomeCarouselMenuItem.length,
          options: CarouselOptions(
            height: Get.height * 0.38,
            autoPlay: true,
            onPageChanged: (index, reason) {
              brandHomeController.onPageChange(index);
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
                      .brandHomeCarouselMenuItem[index].images),
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
          activeIndex: brandHomeController.activeIndex,
          count: brandHomeController.brandHomeCarouselMenuItem.length,
          effect: const SlideEffect(
            dotWidth: 6,
            dotHeight: 6,
            activeDotColor: Color.fromARGB(255, 91, 172, 239),
            dotColor: Color.fromARGB(255, 207, 207, 207),
          ),
        ),
      ],
    );
  }
}
