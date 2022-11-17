import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/models/home_banner_item_model.dart';
import 'package:myntra_clone_flutter/src/view/screens/home/models/home_horizontal_banner_item_model.dart';

import 'models/home_rounded_item_model.dart';

class HomeController extends GetxController {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var roundedMenuItems = [];
  var bannerMenuItems = [];
  int activeIndex_ = 0;
  var horizontalBannerMenuItem = [];
  int currentIndex = 0;

  @override
  void onInit() {
    prepareRoundedItemModel();
    bannerItemModel();
    horizontalBannerItemModel();
    super.onInit();
  }

  //Preparing rounde item menu model
  prepareRoundedItemModel() {
    roundedMenuItems = [
      HomeRoundedItemModel(
          name: 'Men', image: 'assets/images/rounded_images/MEN.png'),
      HomeRoundedItemModel(
          name: 'WOMEN', image: 'assets/images/rounded_images/WOMEN.png'),
      HomeRoundedItemModel(
          name: 'KIDS', image: 'assets/images/rounded_images/KID.png'),
      HomeRoundedItemModel(
          name: 'BEAUTY', image: 'assets/images/rounded_images/BEAUTY.png'),
      HomeRoundedItemModel(
          name: 'HOME', image: 'assets/images/rounded_images/HOME.png'),
      HomeRoundedItemModel(
          name: 'JEWELLERY',
          image: 'assets/images/rounded_images/JEWELLERY.png'),
      HomeRoundedItemModel(
          name: 'ESSENTIALS',
          image: 'assets/images/rounded_images/ESSENTIALS.png'),
      HomeRoundedItemModel(
          name: 'GADGETS', image: 'assets/images/rounded_images/GADGETS.png')
    ];
  }

  // preparing banner item model
  bannerItemModel() {
    bannerMenuItems = [
      HomeBannerItemModel(images: 'assets/images/banner_images/banner1.png'),
      HomeBannerItemModel(images: 'assets/images/banner_images/banner2.png'),
      HomeBannerItemModel(images: 'assets/images/banner_images/banner3.webp'),
      HomeBannerItemModel(images: 'assets/images/banner_images/banner4.jpg'),
      HomeBannerItemModel(images: 'assets/images/banner_images/banner5.jpg'),
    ];
  }

  horizontalBannerItemModel() {
    horizontalBannerMenuItem = [
      HomeHorizontalBannerItemModel(image: 'assets/images/h_banner1.png'),
      HomeHorizontalBannerItemModel(image: 'assets/images/h_banner2.png'),
      HomeHorizontalBannerItemModel(image: 'assets/images/h_banner3.png'),
      HomeHorizontalBannerItemModel(image: 'assets/images/h_banner4.png'),
      HomeHorizontalBannerItemModel(image: 'assets/images/h_banner5.png'),
      HomeHorizontalBannerItemModel(image: 'assets/images/h_banner6.png'),
      HomeHorizontalBannerItemModel(image: 'assets/images/h_banner7.png'),
      HomeHorizontalBannerItemModel(image: 'assets/images/h_banner8.png'),
    ];
  }

  // drawer on tap functions
  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  // animatedsmoothindicator(carousel slider)
  void onPageChange(index) {
    activeIndex_ = index;
    update();
  }

  //Bottom Navigation bar onTap
  void onItemTapped(int index) {
    currentIndex = index;
    update();
  }
}
