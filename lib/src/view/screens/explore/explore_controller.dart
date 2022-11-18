import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/explore/models/explore_item_model.dart';

class ExploreController extends GetxController {
  var exploreMenuItem = [];

  @override
  void onInit() {
    itemModel();
    super.onInit();
  }

  itemModel() {
    exploreMenuItem = [
      ExploreItemModel(icons: Icons.stream_outlined, texts: 'Myntra Insider'),
      ExploreItemModel(icons: Icons.tv_outlined, texts: 'Myntra Live'),
      ExploreItemModel(icons: Icons.diamond_outlined, texts: 'Myntra Luxe'),
      ExploreItemModel(
          icons: Icons.radio_button_checked_outlined, texts: 'Challenges'),
      ExploreItemModel(
          icons: Icons.card_giftcard_outlined, texts: 'Gift Cards'),
      ExploreItemModel(
          icons: Icons.shopping_bag_outlined, texts: 'Myntra Mall'),
      ExploreItemModel(icons: Icons.attach_money_outlined, texts: 'My Prizes'),
      ExploreItemModel(icons: Icons.local_play_outlined, texts: 'Play & Earn'),
      ExploreItemModel(
          icons: Icons.qr_code_scanner_outlined, texts: 'Scan for Coupon'),
      ExploreItemModel(
          icons: Icons.auto_awesome_outlined,
          texts: 'Myntra Fashion Superstar'),
      ExploreItemModel(
          icons: Icons.store_mall_directory_outlined,
          texts: 'Myntra Masterclass'),
    ];
  }
}
