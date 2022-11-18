import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../studio_controller.dart';

class StudioRoundedItemWidget extends StatelessWidget {
  StudioRoundedItemWidget({Key? key}) : super(key: key);
  final StudioController studioController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.162,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: studioController.studioRoundedMenuItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(6.5),
            child: Column(
              children: [
                CircleAvatar(
                  radius: Get.height * 0.056,
                  backgroundImage: AssetImage(
                      studioController.studioRoundedMenuItem[index].images),
                ),
                const Padding(padding: EdgeInsets.all(2)),
                Text(
                  studioController.studioRoundedMenuItem[index].text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10.2,
                      color: Color.fromARGB(255, 101, 101, 101)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
