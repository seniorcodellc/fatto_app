import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../models/products_model.dart';

class ModelProductsList {
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
