import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/helper/app_routes.dart';

class BuildLoginButtonWidget extends StatelessWidget {
  const BuildLoginButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 255, 255, 255),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            padding: const EdgeInsets.all(15)),
        onPressed: (() {
          Get.toNamed(AppRoutes.home);
        }),
        child: Text(
          'LOGIN',
          style: GoogleFonts.roboto(
              color: Colors.pink, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
