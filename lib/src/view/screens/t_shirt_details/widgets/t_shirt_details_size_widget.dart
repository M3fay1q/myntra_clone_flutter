import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TShirtDetailsSizeWidget extends StatelessWidget {
  const TShirtDetailsSizeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  children: [
                    Text(
                      'Size: L     ',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: const Color.fromARGB(255, 33, 33, 33)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(215, 0, 10, 0),
                      child: Text(
                        'Size Chart',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              const Image(
                image: AssetImage('assets/images/t_shirt/t_details/size.png'),
                fit: BoxFit.fill,
              )
            ],
          ),
        ),
        Container(
          height: Get.height * 0.017,
          color: const Color.fromARGB(255, 239, 239, 239),
        ),
        SizedBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      'Check Delivery',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: const Color.fromARGB(255, 30, 30, 30)),
                    ),
                  ],
                ),
              ),
              const Image(
                image:
                    AssetImage('assets/images/t_shirt/t_details/delivery.png'),
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 10),
                child: Row(
                  children: [
                    Text(
                      'Pay on delivery might be available',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromARGB(255, 77, 77, 77)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 10),
                child: Row(
                  children: [
                    Text(
                      'Try & Buy might be available',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromARGB(255, 77, 77, 77)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: Get.height * 0.017,
          color: const Color.fromARGB(255, 239, 239, 239),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: const Image(
            image: AssetImage('assets/images/t_shirt/t_details/ratings.png'),
            fit: BoxFit.fill,
          ),
        ),
        const Image(
          image: AssetImage('assets/images/t_shirt/t_details/ratings2.png'),
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
