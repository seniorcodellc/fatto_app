import 'dart:ui';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';

class ProductsModel {
  final String productImage;
  final int colorsNum;
  final Color bgColor1;
  final Color bgColor2;
  final Color bgColor3;
  final double productPrice;
  final double priceAfterDiscount;
  final String productName;

  ProductsModel({
    required this.productImage,
    required this.colorsNum,
    required this.bgColor1,
    required this.bgColor2,
    required this.bgColor3,
    required this.productPrice,
    required this.priceAfterDiscount,
    required this.productName,
  });
  static List<ProductsModel> productsList = [
    ProductsModel(
      productImage: AppAssets.fashion1,
      colorsNum: 5,
      bgColor1: AppColors.fontTitleColor,
      bgColor2: AppColors.primaryColor,
      bgColor3: AppColors.yellow,
      productPrice: 186.00,
      priceAfterDiscount: 126.00,
      productName: 'Nike air jordan fashion',
    ),
    ProductsModel(
      productImage: AppAssets.fashion2,
      colorsNum: 7,
      bgColor2: AppColors.dotsColor,
      bgColor3: AppColors.brown,
      productPrice: 186.00,
      priceAfterDiscount: 126.00,
      productName: 'Nike air jordan fashion',
      bgColor1: AppColors.fontTitleColor,
    ),
    ProductsModel(
      productImage: AppAssets.fashion2,
      colorsNum: 7,
      bgColor2: AppColors.dotsColor,
      bgColor3: AppColors.brown,
      productPrice: 186.00,
      priceAfterDiscount: 126.00,
      productName: 'Nike air jordan fashion',
      bgColor1: AppColors.fontTitleColor,
    ),
    ProductsModel(
      productImage: AppAssets.fashion2,
      colorsNum: 7,
      bgColor2: AppColors.dotsColor,
      bgColor3: AppColors.brown,
      productPrice: 186.00,
      priceAfterDiscount: 126.00,
      productName: 'Nike air jordan fashion',
      bgColor1: AppColors.fontTitleColor,
    ),
  ];
}
