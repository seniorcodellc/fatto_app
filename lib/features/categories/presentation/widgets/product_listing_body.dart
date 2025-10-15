import 'package:fatto/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/data/static/model_products_list.dart';

class ProductListingBody extends StatelessWidget {
  const ProductListingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      crossAxisCount: 2,
      childAspectRatio: 0.7,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: List.generate(ModelProductsList.productsList.length, (index) {
        final productsModel = ModelProductsList.productsList[index];
        return ProductCard(productsModel: productsModel, isLiked: false);
      }),
    );
  }
}
