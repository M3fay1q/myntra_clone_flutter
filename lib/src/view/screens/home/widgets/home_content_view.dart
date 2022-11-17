import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_carousel_slider_widget.dart';
import 'home_horizontal_banner_widget.dart';
import 'home_rounded_item_widget.dart';

class HomeContentView extends StatelessWidget {
  const HomeContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeRoundedItemWidget(),
          Container(
            color: const Color.fromARGB(255, 234, 234, 234),
            height: 6,
          ),
          HomeCarouselSliderWidget(),
          const SizedBox(height: 5),
          Container(
            color: const Color.fromARGB(255, 234, 234, 234),
            height: 6,
          ),
          HomeHorizontalBannerWidget(),
        ],
      ),
    );
  }
}
