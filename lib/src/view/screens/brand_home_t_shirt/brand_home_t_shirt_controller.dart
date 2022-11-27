import 'package:get/get.dart';
import 'package:myntra_clone_flutter/src/view/screens/brand_home_t_shirt/models/brand_home_t_shirt_item_model.dart';

class BrandHomeTShirtController extends GetxController {
  var brandHomeTShirtMenuItem = [];

  @override
  void onInit() {
    homeTShirtItemModel();
    super.onInit();
  }

  homeTShirtItemModel() {
    brandHomeTShirtMenuItem = [
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt1.png',
          name: 'Roadster',
          name2: 'Pure Cotton T-Shirt',
          off: '53% OFF',
          price: ' ₹234 ',
          price2: '₹499'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt2.png',
          name: 'U.S. Polo Assn.',
          name2: 'Men Cotton Slim Fit T-Shirt',
          off: '40% OFF',
          price: ' ₹1052 ',
          price2: '₹1568'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt3.png',
          name: 'Huetrap',
          name2: 'Typography Print T-Shirt',
          off: '60% OFF',
          price: ' ₹549 ',
          price2: '₹853'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt4.png',
          name: 'Belliskey',
          name2: 'Men T-Shirt',
          off: '45% OFF',
          price: ' ₹289 ',
          price2: '₹585'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt5.png',
          name: 'U.S. Polo Assn.',
          name2: 'Men Slim Fit T-Shirt',
          off: '43% OFF',
          price: ' ₹499 ',
          price2: '₹800'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt6.png',
          name: 'Huetrap',
          name2: 'Typography Print T-Shirt',
          off: '35% OFF',
          price: ' ₹549 ',
          price2: '₹900'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt7.png',
          name: 'Roadster',
          name2: 'Pure Cotton T-Shirt',
          off: '32% OFF',
          price: ' ₹234 ',
          price2: '₹499'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt8.png',
          name: 'Belliskey',
          name2: 'Men T-Shirt',
          off: '25% OFF',
          price: ' ₹289 ',
          price2: '₹585'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt9.png',
          name: 'Urbano Fashion',
          name2: 'Men Cotton T-Shirt',
          off: '45% OFF',
          price: ' ₹899 ',
          price2: '₹1299'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt10.png',
          name: 'THREADCURRY',
          name2: 'Men solid T-Shirt',
          off: '63% OFF',
          price: ' ₹595 ',
          price2: '₹822'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt11.png',
          name: 'Roadster',
          name2: 'Pure Cotton T-Shirt',
          off: '53% OFF',
          price: ' ₹999 ',
          price2: '₹1299'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt12.png',
          name: 'Urbano Fashion',
          name2: 'Typography Print T-Shirt',
          off: '45% OFF',
          price: ' ₹899 ',
          price2: '₹1199'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt13.png',
          name: 'U.S. Polo Assn.',
          name2: 'Men Cotton Slim Fit T-Shirt',
          off: '40% ',
          price: ' ₹1052 ',
          price2: '₹1568'),
      BrandHomeTShirtItemModel(
          images: 'assets/images/t_shirt/tshirt14.png',
          name: 'Huetrap',
          name2: 'Typography Print T-Shirt',
          off: '35% OFF',
          price: ' ₹549 ',
          price2: '₹900'),
    ];
  }
}
