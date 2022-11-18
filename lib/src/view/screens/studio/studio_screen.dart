import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/studio/studio_controller.dart';
import 'package:myntra_clone_flutter/src/view/screens/studio/widgets/studio_studio1_item_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/studio/widgets/studio_studio2_item_widget.dart';
import 'widgets/studio_rounded_item_widget.dart';

class StudioScreen extends StatelessWidget {
  StudioScreen({Key? key}) : super(key: key);
  final StudioController studioController = Get.put(StudioController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StudioRoundedItemWidget(),
          Container(
            height: Get.height * 0.019,
            color: const Color.fromARGB(255, 234, 234, 234),
          ),
          StudioStudio1ItemWidget(),
          Container(
            height: Get.height * 0.019,
            color: const Color.fromARGB(255, 234, 234, 234),
          ),
          StudioStudio2ItemWidget(),
        ],
      ),
    );
  }
}
