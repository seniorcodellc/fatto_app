import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ProductNameAndPrice extends StatelessWidget {
  const ProductNameAndPrice({
    super.key,
    required this.price,
    required this.priceAfterDiscount,
    required this.productName,
  });
  final double price;
  final double priceAfterDiscount;
  final String productName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(productName, style: AppStyles.font18Black.copyWith(fontSize: 14)),
        SizedBox(height: 6),
        Row(
          children: [
            Text(
              "\$$price",
              style: AppStyles.font10PrimaryColor.copyWith(
                color: AppColors.fontGrey,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "\$$priceAfterDiscount",
              style: AppStyles.font10PrimaryColor.copyWith(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
