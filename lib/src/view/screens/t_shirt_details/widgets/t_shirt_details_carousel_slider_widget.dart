import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/view/screens/t_shirt_details/t_shirt_details_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TShirtDetailsCarouselSliderWidget extends StatelessWidget {
  TShirtDetailsCarouselSliderWidget({Key? key}) : super(key: key);
  final TShirtDetailsController tShirtDetailsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: tShirtDetailsController
              .tShirtDetailsCarouselSliderMenuItem.length,
          options: CarouselOptions(
            height: Get.height * 0.83,
            autoPlay: false,
            onPageChanged: (index, reason) {
              tShirtDetailsController.onPageChange(index);
            },
            viewportFraction: 1,
            initialPage: 0,
          ),
          itemBuilder: ((context, index, realIndex) {
            return Image(
              image: AssetImage(tShirtDetailsController
                  .tShirtDetailsCarouselSliderMenuItem[index].images),
              fit: BoxFit.cover,
            );
          }),
        ),
        const SizedBox(
          height: 8,
        ),
        AnimatedSmoothIndicator(
          activeIndex: tShirtDetailsController.activeIndex,
          count: tShirtDetailsController
              .tShirtDetailsCarouselSliderMenuItem.length,
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
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 9),
          child: Row(
            children: [
              Text(
                'Roadster ',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: const Color.fromARGB(255, 33, 33, 33)),
              ),
              Text(
                'Men White Pure Cotton T-shirt',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color.fromARGB(255, 98, 98, 98)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 6),
          child: Row(
            children: [
              Text(
                'MRP ',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: const Color.fromARGB(255, 98, 98, 98)),
              ),
              Text(
                '₹499 ',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                    color: const Color.fromARGB(255, 126, 126, 126)),
              ),
              Text(
                '₹299 ',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: const Color.fromARGB(255, 44, 44, 44)),
              ),
              Text(
                '(40% OFF)',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color.fromARGB(255, 235, 100, 32),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
          child: Row(
            children: [
              Text(
                'inclusive of all taxes',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color.fromARGB(255, 85, 85, 85)),
              ),
            ],
          ),
        ),
        Container(
          height: Get.height * 0.017,
          color: const Color.fromARGB(255, 239, 239, 239),
        ),
      ],
    );
  }
}
