import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/models/brand_home_carousel2_item_model.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/models/brand_home_carousel_item_model.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/models/brand_home_horizontal_item_model.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/models/brand_home_round_item_model.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home/models/brand_home_round_item_model2.dart';

class BrandHomeController extends GetxController {
  var brandHomeRoundMenuItem = [];
  var brandHomeRoundMenuItem2 = [];
  var brandHomeCarouselMenuItem = [];
  var brandHomeCarousel2MenuItem = [];
  var brandHomeHorizontalMenuItem = [];
  var activeIndex = 0;
  var activeIndex_ = 0;

  @override
  void onInit() {
    homeRoundItemModel();
    homeRoundItemModel2();
    homeCarouselItemMOdel();
    homeCarousel2ItemMOdel();
    homeHorizontalItemMOdel();
    super.onInit();
  }

  homeRoundItemModel() {
    brandHomeRoundMenuItem = [
      BrandHomeRoundItemModel(
          images:
              'assets/images/brand_home_images/round_image/round_image1.png',
          texts: 'T-Shirt'),
      BrandHomeRoundItemModel(
          images:
              'assets/images/brand_home_images/round_image/round_image2.png',
          texts: 'Shirt'),
      BrandHomeRoundItemModel(
          images:
              'assets/images/brand_home_images/round_image/round_image3.png',
          texts: 'Jeans'),
      BrandHomeRoundItemModel(
          images:
              'assets/images/brand_home_images/round_image/round_image4.png',
          texts: 'Trousers'),
      BrandHomeRoundItemModel(
          images:
              'assets/images/brand_home_images/round_image/round_image5.png',
          texts: 'Footwear'),
    ];
  }

  homeRoundItemModel2() {
    brandHomeRoundMenuItem2 = [
      BrandHomeRoundItemModel2(
          images:
              'assets/images/brand_home_images/round_image/round_image6.png',
          texts: 'Kurtas & Sets'),
      BrandHomeRoundItemModel2(
          images:
              'assets/images/brand_home_images/round_image/round_image7.png',
          texts: 'Watches'),
      BrandHomeRoundItemModel2(
          images:
              'assets/images/brand_home_images/round_image/round_image8.png',
          texts: 'Sports'),
      BrandHomeRoundItemModel2(
          images:
              'assets/images/brand_home_images/round_image/round_image9.png',
          texts: 'Grooming'),
      BrandHomeRoundItemModel2(
          images:
              'assets/images/brand_home_images/round_image/round_image10.png',
          texts: 'Winterwear'),
    ];
  }

  homeCarouselItemMOdel() {
    brandHomeCarouselMenuItem = [
      BrandHomeCarouselItemModel(
          images: 'assets/images/brand_home_images/c_banner/c_banner1.png'),
      BrandHomeCarouselItemModel(
          images: 'assets/images/brand_home_images/c_banner/c_banner2.png'),
      BrandHomeCarouselItemModel(
          images: 'assets/images/brand_home_images/c_banner/c_banner3.png'),
      BrandHomeCarouselItemModel(
          images: 'assets/images/brand_home_images/c_banner/c_banner4.png'),
      BrandHomeCarouselItemModel(
          images: 'assets/images/brand_home_images/c_banner/c_banner5.png'),
    ];
  }

  homeCarousel2ItemMOdel() {
    brandHomeCarousel2MenuItem = [
      BrandHomeCarousel2ItemModel(
          images: 'assets/images/brand_home_images/c2_banner/c2_banner1.png'),
      BrandHomeCarousel2ItemModel(
          images: 'assets/images/brand_home_images/c2_banner/c2_banner2.png'),
      BrandHomeCarousel2ItemModel(
          images: 'assets/images/brand_home_images/c2_banner/c2_banner3.png'),
      BrandHomeCarousel2ItemModel(
          images: 'assets/images/brand_home_images/c2_banner/c2_banner4.png'),
    ];
  }

  homeHorizontalItemMOdel() {
    brandHomeHorizontalMenuItem = [
      BrandHomeHorizontalItemModel(
          images: 'assets/images/brand_home_images/h_banner/h_banner1.png'),
      BrandHomeHorizontalItemModel(
          images: 'assets/images/brand_home_images/h_banner/h_banner2.png'),
      BrandHomeHorizontalItemModel(
          images: 'assets/images/brand_home_images/h_banner/h_banner3.png'),
      BrandHomeHorizontalItemModel(
          images: 'assets/images/brand_home_images/h_banner/h_banner4.png'),
      BrandHomeHorizontalItemModel(
          images: 'assets/images/brand_home_images/h_banner/h_banner5.png'),
      BrandHomeHorizontalItemModel(
          images: 'assets/images/brand_home_images/h_banner/h_banner6.png'),
    ];
  }

  void onPageChange(index) {
    activeIndex = index;
    update();
  }

  void onPageChange2(index) {
    activeIndex_ = index;
    update();
  }
}
