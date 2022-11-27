import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/brand_home_controller.dart';

import '../../../../helper/app_routes.dart';

class BrandHomeRoundWidget extends StatelessWidget {
  BrandHomeRoundWidget({Key? key}) : super(key: key);
  final BrandHomeController brandHomeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: Get.height * 0.125,
          child: Center(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brandHomeController.brandHomeRoundMenuItem.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(4, 2, 3, 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: Get.height * 0.048,
                          backgroundImage: AssetImage(brandHomeController
                              .brandHomeRoundMenuItem[index].images),
                        ),
                        onTap: () {
                          Get.toNamed(AppRoutes.brandHomeTShirt);
                        },
                      ),
                      Text(
                        brandHomeController.brandHomeRoundMenuItem[index].texts,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          height: Get.height * 0.125,
          child: Center(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brandHomeController.brandHomeRoundMenuItem2.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(4, 2, 3, 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: Get.height * 0.048,
                        backgroundImage: AssetImage(brandHomeController
                            .brandHomeRoundMenuItem2[index].images),
                      ),
                      Text(
                        brandHomeController
                            .brandHomeRoundMenuItem2[index].texts,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
        SizedBox(
          height: Get.height * 0.078,
          child: const Image(
            image: AssetImage(
                'assets/images/brand_home_images/round_image/banner.png'),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
