import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/t_shirt_details/models/t_shirt_details_carousel_slider_item_model.dart';

class TShirtDetailsController extends GetxController {
  var tShirtDetailsCarouselSliderMenuItem = [];
  var activeIndex = 0;

  @override
  void onInit() {
    detailsCarouselSliderItemModel();
    super.onInit();
  }

  detailsCarouselSliderItemModel() {
    tShirtDetailsCarouselSliderMenuItem = [
      TShirtDetailsCarouselSliderItemModel(
          images: 'assets/images/t_shirt/t_details/t_detail1.png'),
      TShirtDetailsCarouselSliderItemModel(
          images: 'assets/images/t_shirt/t_details/t_detail2.png'),
      TShirtDetailsCarouselSliderItemModel(
          images: 'assets/images/t_shirt/t_details/t_detail3.png'),
      TShirtDetailsCarouselSliderItemModel(
          images: 'assets/images/t_shirt/t_details/t_detail4.png'),
      TShirtDetailsCarouselSliderItemModel(
          images: 'assets/images/t_shirt/t_details/t_detail5.png'),
    ];
  }

  void onPageChange(index) {
    activeIndex = index;
    update();
  }
}
