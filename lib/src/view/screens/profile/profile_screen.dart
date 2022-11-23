import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone_flutter/src/view/screens/profile/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Image(
          image: AssetImage('assets/images/drawer.jpg'),
          fit: BoxFit.cover,
        ),
        Container(
          height: Get.height * 0.019,
          color: const Color.fromARGB(255, 234, 234, 234),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: profileController.profileMenuItem.length,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  const Padding(padding: EdgeInsets.all(4)),
                  SizedBox(
                    height: Get.height * 0.088,
                    child: ListTile(
                      leading:
                          Icon(profileController.profileMenuItem[index].icon),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.all(2)),
                          Text(profileController.profileMenuItem[index].texts1,
                              style: GoogleFonts.roboto(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 79, 79, 79))),
                          const Padding(padding: EdgeInsets.all(3)),
                          Text(profileController.profileMenuItem[index].texts2,
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromARGB(
                                      255, 125, 125, 125))),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 234, 234, 234),
                    height: Get.height * 0.002,
                  ),
                ],
              );
            })),
      ],
    );
  }
}
