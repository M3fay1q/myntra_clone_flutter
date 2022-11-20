import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:myntra_clone_flutter/src/view/screens/profile/models/profile_item_model.dart';

class ProfileController extends GetxController {
  var profileMenuItem = [];

  @override
  void onInit() {
    itemModel();
    super.onInit();
  }

  itemModel() {
    profileMenuItem = [
      ProfileItemModel(
          icon: Icons.check_box_outlined,
          texts1: 'Orders',
          texts2: 'Check your order status'),
      ProfileItemModel(
          icon: Icons.stars_outlined,
          texts1: 'Myntra Suggests',
          texts2:
              '100% personalized feed for you based on your shopping histroy on Myntra'),
      ProfileItemModel(
          icon: Icons.help_center_outlined,
          texts1: 'Help Center',
          texts2: 'Help regarding your recent purchases'),
      ProfileItemModel(
          icon: Icons.stream_outlined,
          texts1: 'Myntra Insider',
          texts2: 'Coupons, offers & rewards await you'),
      ProfileItemModel(
          icon: Icons.vertical_align_center_outlined,
          texts1: 'Manage Size Profiles',
          texts2: 'Add or update your size profile and pereferences'),
      ProfileItemModel(
          icon: Icons.radio_button_checked_outlined,
          texts1: 'Challenges',
          texts2: 'Daily prizes for completing fun challenges'),
      ProfileItemModel(
          icon: Icons.favorite_outline,
          texts1: 'Wishlist',
          texts2: 'Your most loved styles'),
      ProfileItemModel(
          icon: Icons.attach_money_outlined,
          texts1: 'Myntra Credit',
          texts2: 'Manage all your refunds & gift cards'),
      ProfileItemModel(
          icon: Icons.monetization_on_outlined,
          texts1: 'MynCash',
          texts2: 'Earn MynCash as you shop and use them in checkout '),
      ProfileItemModel(
          icon: Icons.credit_card_outlined,
          texts1: 'Saved Cards',
          texts2: 'Save your cards for fastest checkout'),
      ProfileItemModel(
          icon: Icons.save_alt_outlined,
          texts1: 'Saved VPA',
          texts2: 'View your saved VPA'),
      ProfileItemModel(
          icon: Icons.location_on_outlined,
          texts1: 'Address',
          texts2: 'Save address for a hassle-free checkout'),
      ProfileItemModel(
          icon: Icons.settings_outlined,
          texts1: 'Settings',
          texts2: 'Manage notification & app settings'),
    ];
  }
}
