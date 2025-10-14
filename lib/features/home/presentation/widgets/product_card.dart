import 'package:fatto/features/home/data/models/products_model.dart';
import 'package:fatto/features/home/presentation/widgets/product_colors.dart';
import 'package:fatto/features/home/presentation/widgets/product_image.dart';
import 'package:fatto/features/home/presentation/widgets/product_name_and_price.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.productsModel});
  final ProductsModel productsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImage(image: productsModel.productImage),
        SizedBox(height: 8),
        ProductColors(
          bgColor2: productsModel.bgColor2,
          bgColor3: productsModel.bgColor3,
          num: productsModel.colorsNum,
          bgColor1: productsModel.bgColor1,
        ),
        SizedBox(height: 8),
        ProductNameAndPrice(
          price: productsModel.productPrice,
          priceAfterDiscount: productsModel.priceAfterDiscount,
          productName: productsModel.productName,
        ),
      ],
    );
  }
}
