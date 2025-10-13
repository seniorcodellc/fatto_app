import '../../../../core/utils/app_assets.dart';

class OfferedProductsModel {
  final String imagePath;
  final String salePercentage;

  const OfferedProductsModel({
    required this.imagePath,
    required this.salePercentage,
  });

  static const List<OfferedProductsModel> products = [
    OfferedProductsModel(
      imagePath: AppAssets.productOfferImage,
      salePercentage: '30% OFF',
    ),
    OfferedProductsModel(
      imagePath: AppAssets.productOfferImage,
      salePercentage: '40% OFF',
    ),
    OfferedProductsModel(
      imagePath: AppAssets.productOfferImage,
      salePercentage: '50% OFF',
    ),
    OfferedProductsModel(
      imagePath: AppAssets.productOfferImage,
      salePercentage: '60% OFF',
    ),
    OfferedProductsModel(
      imagePath: AppAssets.productOfferImage,
      salePercentage: '70% OFF',
    ),
  ];
}
