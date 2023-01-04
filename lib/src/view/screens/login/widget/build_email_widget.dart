import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../login_controller.dart';

class BuildEmailWidget extends StatelessWidget {
  BuildEmailWidget({Key? key}) : super(key: key);
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: GoogleFonts.roboto(
              color: const Color.fromARGB(255, 192, 61, 104),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 192, 61, 104), width: 1.0),
                borderRadius: BorderRadius.circular(0.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 192, 61, 104), width: 1.0),
                borderRadius: BorderRadius.circular(0.0),
              ),
              prefixIcon: const Icon(
                Icons.email,
                color: Color.fromARGB(255, 192, 61, 104),
              ),
              hintText: 'Enter an Email id',
              hintStyle: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 178, 109, 132))),
          validator: MultiValidator(
            [
              RequiredValidator(errorText: "Please enter email id"),
              EmailValidator(errorText: "Enter valid email id"),
            ],
          ),
        ),
      ],
    );
  }
}
