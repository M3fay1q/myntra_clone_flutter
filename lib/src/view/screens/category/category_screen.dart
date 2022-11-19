import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/category/category_controller.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categoryController.categoryMenuItem.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            Image.asset(
              categoryController.categoryMenuItem[index].images,
              fit: BoxFit.cover,
            )
          ],
        );
      }),
    );
  }
}
