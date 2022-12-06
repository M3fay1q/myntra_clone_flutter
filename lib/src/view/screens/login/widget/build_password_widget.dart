import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login_controller.dart';

class BuildPasswordWidget extends StatelessWidget {
  BuildPasswordWidget({Key? key}) : super(key: key);
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: GoogleFonts.roboto(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 65,
          child: TextFormField(
            obscureText: true,
            style: GoogleFonts.roboto(
              color: Colors.black87,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "    Enter a password";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 16),
              prefixIcon: const Icon(
                Icons.lock,
                color: Color.fromARGB(255, 192, 61, 104),
              ),
              hintText: 'Password',
              hintStyle: GoogleFonts.roboto(color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }
}
