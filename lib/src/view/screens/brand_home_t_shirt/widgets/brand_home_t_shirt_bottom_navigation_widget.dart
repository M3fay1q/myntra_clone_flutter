import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home_t_shirt/brand_home_t_shirt_controller.dart';

class BrandHomeTShirtBottomNavigationwidget extends StatelessWidget {
  BrandHomeTShirtBottomNavigationwidget({Key? key}) : super(key: key);
  final BrandHomeTShirtController brandHomeTShirtController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.062,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              const Icon(
                Icons.sort_outlined,
                size: 20,
                color: Color.fromARGB(255, 112, 112, 112),
              ),
              Text(
                '  SORT  ',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 109, 109, 109),
                ),
              ),
            ],
          ),
          const VerticalDivider(
            color: Color.fromARGB(255, 179, 179, 179),
            thickness: 1,
            width: 5,
            indent: 10,
            endIndent: 10,
          ),
          SizedBox(
            height: Get.height * 0.065,
            child: Row(
              children: [
                const Icon(
                  Icons.filter_alt,
                  size: 20,
                  color: Color.fromARGB(255, 108, 108, 108),
                ),
                Text(
                  '  FILTER',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 100, 100, 100),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
