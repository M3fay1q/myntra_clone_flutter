import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/home_controller.dart';

class HomeDrawerWidget extends StatelessWidget {
  HomeDrawerWidget({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage('assets/images/drawer.jpg'),
                    fit: BoxFit.cover)),
            child: Text(''),
          ),
          ListTile(
            leading: const Icon(Icons.grid_view_outlined),
            title: Text("Shop by Categories",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700, fontSize: 16)),
            onTap: (() {}),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_checkout_outlined),
            title: Text(
              "Orders",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
            ),
            onTap: homeController.closeDrawer,
          ),
        ],
      ),
    );
  }
}
