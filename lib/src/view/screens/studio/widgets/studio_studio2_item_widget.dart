import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../studio_controller.dart';

class StudioStudio2ItemWidget extends StatelessWidget {
  StudioStudio2ItemWidget({Key? key}) : super(key: key);
  final StudioController studioController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Get.height * 0.075,
          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
          child: const Image(
            image: AssetImage(
                'assets/images/studio/studio2_images/studio2_image.png'),
          ),
        ),
        CarouselSlider.builder(
          itemCount: studioController.studioStudio2MenuItem.length,
          options: CarouselOptions(
            height: Get.height * 0.4,
            viewportFraction: 0.62,
            enableInfiniteScroll: false,
            padEnds: false,
          ),
          itemBuilder: ((context, index, realIndex) {
            return Image(
                image: AssetImage(
                    studioController.studioStudio2MenuItem[index].images));
          }),
        ),
      ],
    );
  }
}
