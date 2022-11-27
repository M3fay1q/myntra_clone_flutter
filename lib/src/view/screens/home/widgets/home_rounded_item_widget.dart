import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/helper/app_routes.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/home_controller.dart';

class HomeRoundedItemWidget extends StatelessWidget {
  HomeRoundedItemWidget({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: Get.height * 0.135,
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homeController.roundedMenuItems.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                children: [
                  InkWell(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: Get.height * 0.046,
                      backgroundImage: AssetImage(
                          homeController.roundedMenuItems[index].image),
                    ),
                    onTap: () {
                      Get.toNamed(AppRoutes.brandHome);
                    },
                  ),
                  Text(
                    homeController.roundedMenuItems[index].name,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
