import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/studio/studio_controller.dart';

class StudioStudio1ItemWidget extends StatelessWidget {
  StudioStudio1ItemWidget({Key? key}) : super(key: key);
  final StudioController studioController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Get.height * 0.076,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/studio/studio1_images/studio1_image.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: Get.height * 0.38,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: studioController.studioStudio1MenuItem.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 4, 3, 15),
                  child: Image(
                      image: AssetImage(studioController
                          .studioStudio1MenuItem[index].images)),
                );
              })),
        ),
      ],
    );
  }
}
