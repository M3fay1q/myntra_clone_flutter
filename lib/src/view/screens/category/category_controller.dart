import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/category/models/category_categories_item_models.dart';

class CategoryController extends GetxController {
  var categoryMenuItem = [];

  @override
  void onInit() {
    categoriesItemModel();
    super.onInit();
  }

  categoriesItemModel() {
    categoryMenuItem = [
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category1.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category2.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category3.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category4.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category5.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category6.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category7.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category8.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category9.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category10.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category11.png'),
      CategoryCategoriesItemModel(
          images: 'assets/images/categories/category12.png'),
    ];
  }
}
