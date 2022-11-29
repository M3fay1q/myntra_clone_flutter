import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/t_shirt_details/t_shirt_details_controller.dart';
import 'package:myntra_clone_flutter/src/view/screens/t_shirt_details/widgets/t_shirt_details_carousel_slider_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/t_shirt_details/widgets/t_shirt_details_description_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/t_shirt_details/widgets/t_shirt_details_size_widget.dart';

class TShirtDetailsScreen extends StatelessWidget {
  TShirtDetailsScreen({Key? key}) : super(key: key);
  final TShirtDetailsController tShirtDetailsController =
      Get.put(TShirtDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: (() {}),
                icon: const Icon(
                  Icons.share,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: (() {}),
                icon: const Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: (() {}),
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                )),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                TShirtDetailsCarouselSliderWidget(),
                const TShirtDetailsDescriptionWidget(),
                const TShirtDetailsSizeWidget(),
              ],
            ),
          ),
        ));
  }
}
