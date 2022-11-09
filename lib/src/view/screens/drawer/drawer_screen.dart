import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/drawer/drawer_controller.dart';

class DrawerScreen extends StatelessWidget {
  final DrwrController drwrController = Get.put(DrwrController());

  DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrwrController>(
      builder: ((controller) {
        return Scaffold(
          appBar: AppBar(),
          key: controller.scaffoldKey,
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Text('Drawer Header'),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
