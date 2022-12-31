import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/home_controller.dart';

class HomeHorizontalBannerWidget extends StatelessWidget {
  HomeHorizontalBannerWidget({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Get.height * 0.15,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/home_image/horizontal_banner_images/horizontal_banner.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 247, 247, 247),
          height: Get.height * 0.33,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeController.horizontalBannerMenuItem.length,
              itemBuilder: ((context, index) {
                return Container(
                  padding: const EdgeInsets.all(5),
                  color: const Color.fromARGB(255, 247, 247, 247),
                  child: Image(
                    image: AssetImage(
                        homeController.horizontalBannerMenuItem[index].image),
                  ),
                );
              })),
        )
      ],
    );
  }
}
