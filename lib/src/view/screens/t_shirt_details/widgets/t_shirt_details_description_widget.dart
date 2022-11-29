import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TShirtDetailsDescriptionWidget extends StatelessWidget {
  const TShirtDetailsDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // height: Get.height * 0.17,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  Text(
                    'Get additional offer       ',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                        color: const Color.fromARGB(255, 33, 33, 33)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(90, 0, 10, 0),
                    child: Text(
                      'Eligible products',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 20),
              child: Row(
                children: [
                  Text(
                    'Buy this style and get additional 15% off upto ₹300',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromARGB(255, 112, 112, 112)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  Text(
                    'EMI option available      ',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                        color: const Color.fromARGB(255, 33, 33, 33)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(130, 0, 10, 0),
                    child: Text(
                      'View Plan',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 8),
              child: Row(
                children: [
                  Text(
                    'EMI starting from ₹14/month',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromARGB(255, 112, 112, 112)),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Container(
          height: Get.height * 0.017,
          color: const Color.fromARGB(255, 239, 239, 239),
        ),
      ],
    );
  }
}
