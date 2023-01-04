import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login_controller.dart';

class BuildRememberWidget extends StatelessWidget {
  BuildRememberWidget({Key? key}) : super(key: key);
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          Theme(
            data: ThemeData(
                unselectedWidgetColor: const Color.fromARGB(255, 192, 61, 104)),
            child: Checkbox(
                value: loginController.isRememberme,
                checkColor: const Color.fromARGB(255, 192, 61, 104),
                activeColor: const Color.fromARGB(255, 192, 61, 104),
                onChanged: (value) {
                  loginController.onChanged(value);
                }),
          ),
          Text(
            'Remember me',
            style: GoogleFonts.roboto(
              color: const Color.fromARGB(255, 192, 61, 104),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
