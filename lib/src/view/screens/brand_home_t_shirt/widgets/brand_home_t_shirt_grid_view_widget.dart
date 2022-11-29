import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/helper/app_routes.dart';

import '../brand_home_t_shirt_controller.dart';

class BrandHomeTShirtGridViewWidget extends StatelessWidget {
  BrandHomeTShirtGridViewWidget({Key? key}) : super(key: key);
  final BrandHomeTShirtController brandHomeTShirtController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 223, 223, 223),
      child: GridView.builder(
          itemCount: brandHomeTShirtController.brandHomeTShirtMenuItem.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            crossAxisSpacing: 2,
            mainAxisSpacing: 0,
          ),
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.tShirtDetails);
              },
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.32,
                      child: Image(
                        image: AssetImage(brandHomeTShirtController
                            .brandHomeTShirtMenuItem[index].images),
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 6, 0, 2),
                          child: Text(
                            brandHomeTShirtController
                                .brandHomeTShirtMenuItem[index].name,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w800,
                                fontSize: 15,
                                color: const Color.fromARGB(255, 93, 93, 93)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 4),
                          child: Text(
                            brandHomeTShirtController
                                .brandHomeTShirtMenuItem[index].name2,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.5,
                                color:
                                    const Color.fromARGB(255, 147, 147, 147)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 4),
                          child: Row(
                            children: [
                              Text(
                                brandHomeTShirtController
                                    .brandHomeTShirtMenuItem[index].price2,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  decoration: TextDecoration.lineThrough,
                                  color:
                                      const Color.fromARGB(255, 147, 147, 147),
                                ),
                              ),
                              Text(
                                brandHomeTShirtController
                                    .brandHomeTShirtMenuItem[index].price,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13,
                                  color: const Color.fromARGB(255, 79, 79, 79),
                                ),
                              ),
                              Text(
                                brandHomeTShirtController
                                    .brandHomeTShirtMenuItem[index].off,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color:
                                      const Color.fromARGB(255, 235, 100, 32),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
