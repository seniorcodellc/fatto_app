import 'package:fatto/features/home/presentation/widgets/product_colors.dart';
import 'package:fatto/features/home/presentation/widgets/product_image.dart';
import 'package:fatto/features/home/presentation/widgets/product_name_and_price.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.num,
    required this.bgColor2,
    required this.bgColor3,
    required this.price,
    required this.priceAfterDiscount,
    required this.productName,
  });
  final String image;
  final int num;
  final Color bgColor2;
  final Color bgColor3;
  final double price;
  final double priceAfterDiscount;
  final String productName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImage(image: image),
        SizedBox(height: 8),
        ProductColors(bgColor2: bgColor2, bgColor3: bgColor3, num: num),
        SizedBox(height: 8),
        ProductNameAndPrice(
          price: price,
          priceAfterDiscount: priceAfterDiscount,
          productName: productName,
        ),
      ],
    );
  }
}
