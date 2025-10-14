import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/features/home/presentation/widgets/product_card.dart';
import 'package:fatto/features/home/presentation/widgets/shared_list_titles.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SharedListTitles(title: "Latest Products"),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProductCard(
              image: AppAssets.fashion1,
              num: 5,
              bgColor2: AppColors.primaryColor,
              bgColor3: AppColors.yellow,
              price: 186.00,
              priceAfterDiscount: 126.00,
              productName: 'Nike air jordan fashion',
            ),
            ProductCard(
              image: AppAssets.fashion2,
              num: 7,
              bgColor2: AppColors.dotsColor,
              bgColor3: AppColors.brown,
              price: 186.00,
              priceAfterDiscount: 126.00,
              productName: 'Nike air jordan fashion',
            ),
          ],
        ),
      ],
    );
  }
}
