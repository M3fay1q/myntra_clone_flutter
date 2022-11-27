import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home_t_shirt/brand_home_t_shirt_controller.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home_t_shirt/widgets/brand_home_t_shirt_bottom_navigation_widget.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home_t_shirt/widgets/brand_home_t_shirt_grid_view_widget.dart';

class BrandHomeTShirtScreen extends StatelessWidget {
  BrandHomeTShirtScreen({Key? key}) : super(key: key);
  final BrandHomeTShirtController brandHomeTShirtController =
      Get.put(BrandHomeTShirtController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0.8,
        titleSpacing: 1,
        title: Column(
          children: [
            Text(
              'MEN APPAREL',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                  color: const Color.fromARGB(255, 93, 93, 93)),
            ),
            Text(
              '${brandHomeTShirtController.brandHomeTShirtMenuItem.length} Items',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: const Color.fromARGB(255, 144, 144, 144)),
            ),
          ],
        ),
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
      body: BrandHomeTShirtGridViewWidget(),
      bottomNavigationBar: BrandHomeTShirtBottomNavigationwidget(),
    );
  }
}
