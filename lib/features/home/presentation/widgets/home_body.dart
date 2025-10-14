import 'package:fatto/features/home/presentation/widgets/offered_products_slider.dart';
import 'package:fatto/features/home/presentation/widgets/products_list.dart';
import 'package:fatto/features/home/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

import 'categories_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        SearchTextField(),
        SizedBox(height: 20),
        OfferedProductsSlider(),
        SizedBox(height: 20),
        CategoriesList(),
        SizedBox(height: 18),
        ProductsList(),
      ],
    );
  }
}
