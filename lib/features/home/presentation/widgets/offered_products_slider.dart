import 'package:fatto/features/home/presentation/widgets/offered_products_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import '../../data/static/model_offered_products_list.dart';
import '../screens/exclusive_sales_screen.dart';

class OfferedProductsSlider extends StatelessWidget {
  const OfferedProductsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 180,
        enlargeCenterPage: true,
        autoPlay: true,
        viewportFraction: 0.9,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
      ),
      items: List.generate(ModelOfferedProductsList.products.length, (index) {
        final model = ModelOfferedProductsList.products[index];
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: (){Get.to(ExclusiveSalesScreen());},
            child: OfferedProductsItem(model: model));
      }),
    );
  }
}
