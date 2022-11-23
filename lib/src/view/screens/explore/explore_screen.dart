import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/view/screens/explore/explore_controller.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);
  final ExploreController exploreController = Get.put(ExploreController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: exploreController.exploreMenuItem.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            SizedBox(
              height: Get.height * 0.087,
              child: Center(
                child: ListTile(
                  leading: Icon(exploreController.exploreMenuItem[index].icons),
                  title: Text(exploreController.exploreMenuItem[index].texts,
                      style: GoogleFonts.roboto(
                          fontSize: 19,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromARGB(255, 54, 54, 54))),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 234, 234, 234),
              height: Get.height * 0.002,
            ),
          ],
        );
      }),
    );
  }
}
