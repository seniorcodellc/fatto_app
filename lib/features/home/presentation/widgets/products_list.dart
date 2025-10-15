import 'package:fatto/features/home/presentation/widgets/product_card.dart';
import 'package:fatto/features/home/presentation/widgets/shared_list_titles.dart';
import 'package:flutter/material.dart';

import '../../data/static/model_products_list.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SharedListTitles(title: "Latest Products"),
        const SizedBox(height: 14),
        Expanded(
          child: GridView.count(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.68,
            children: List.generate(ModelProductsList.productsList.length, (
              index,
            ) {
              final product = ModelProductsList.productsList[index];
              return ProductCard(productsModel: product, isLiked: true);
            }),
          ),
        ),
      ],
    );
  }
}
