import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/category/category_controller.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categoryController.categoryMenuItem.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            Container(
              height: Get.height * 0.18,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      categoryController.categoryMenuItem[index].images),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.003,
            )
          ],
        );
      }),
    );
  }
}
