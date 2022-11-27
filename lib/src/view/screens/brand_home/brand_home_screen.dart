import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/brand_home_controller.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/widgets/brand_home_carousel2_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/widgets/brand_home_carousel_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/widgets/brand_home_horizontal_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/widgets/brand_home_round_widget.dart';

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
                  BrandHomeCarouselWidget(),
                  BrandHomeCarousel2Widget(),
                  BrandHomeHorizontalWidget(),
                ],
              ),
            );
          }),
    );
  }
}
