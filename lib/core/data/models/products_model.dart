import 'dart:ui';

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
}
