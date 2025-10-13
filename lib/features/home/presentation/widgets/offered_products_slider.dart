import 'package:fatto/features/home/presentation/widgets/offered_products_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../data/models/offered_product_model.dart';

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
      items: List.generate(OfferedProductsModel.products.length, (index) {
        final model = OfferedProductsModel.products[index];
        return OfferedProductsItem(model: model);
      }),
    );
  }
}
