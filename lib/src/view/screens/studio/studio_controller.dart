import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/studio/models/studio_rounded_item_model.dart';
import 'package:myntra_clone_flutter/src/view/screens/studio/models/studio_studio1_item_model.dart';

import 'models/studio_studio2_item_model.dart';

class StudioController extends GetxController {
  var studioRoundedMenuItem = [];
  var studioStudio1MenuItem = [];
  var studioStudio2MenuItem = [];

  @override
  void onInit() {
    roundedItemModel();
    studio1ItemModel();
    studio2ItemModel();
    super.onInit();
  }

  studio1ItemModel() {
    studioStudio1MenuItem = [
      StudioStudio1ItemModel(
          images: 'assets/images/studio/studio1_images/studio1_image1.png'),
      StudioStudio1ItemModel(
          images: 'assets/images/studio/studio1_images/studio1_image2.png'),
      StudioStudio1ItemModel(
          images: 'assets/images/studio/studio1_images/studio1_image3.png'),
      StudioStudio1ItemModel(
          images: 'assets/images/studio/studio1_images/studio1_image4.png'),
      StudioStudio1ItemModel(
          images: 'assets/images/studio/studio1_images/studio1_image5.png'),
      StudioStudio1ItemModel(
          images: 'assets/images/studio/studio1_images/studio1_image6.png'),
      StudioStudio1ItemModel(
          images: 'assets/images/studio/studio1_images/studio1_image7.png'),
      StudioStudio1ItemModel(
          images: 'assets/images/studio/studio1_images/studio1_image8.png'),
    ];
  }

  studio2ItemModel() {
    studioStudio2MenuItem = [
      StudioStudio2ItemModel(
          images: 'assets/images/studio/studio2_images/studio2_image1.png'),
      StudioStudio2ItemModel(
          images: 'assets/images/studio/studio2_images/studio2_image2.png'),
      StudioStudio2ItemModel(
          images: 'assets/images/studio/studio2_images/studio2_image3.png'),
      StudioStudio2ItemModel(
          images: 'assets/images/studio/studio2_images/studio2_image4.png'),
    ];
  }

  roundedItemModel() {
    studioRoundedMenuItem = [
      StudioRoundedItemModel(
          images: 'assets/images/studio/rounded_images/rounded_image1.png',
          text: '50-80% OFF'),
      StudioRoundedItemModel(
          images: 'assets/images/studio/rounded_images/rounded_image2.png',
          text: 'PARTY WEAR'),
      StudioRoundedItemModel(
          images: 'assets/images/studio/rounded_images/rounded_image3.png',
          text: 'WINTER WEAR'),
      StudioRoundedItemModel(
          images: 'assets/images/studio/rounded_images/rounded_image4.png',
          text: 'CASUAL WEAR'),
      StudioRoundedItemModel(
          images: 'assets/images/studio/rounded_images/rounded_image5.png',
          text: 'INDIAN WEAR')
    ];
  }
}
