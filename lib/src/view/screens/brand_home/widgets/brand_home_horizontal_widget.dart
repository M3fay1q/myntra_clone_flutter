import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/brand_home_controller.dart';

class BrandHomeHorizontalWidget extends StatelessWidget {
  BrandHomeHorizontalWidget({Key? key}) : super(key: key);
  final BrandHomeController brandHomeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              itemCount: brandHomeController.brandHomeHorizontalMenuItem.length,
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
    );
  }
}
