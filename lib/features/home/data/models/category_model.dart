import '../../../../core/utils/app_assets.dart';

class CategoryModel {
  final String categoryImage;
  final String categoryName;

  CategoryModel({required this.categoryImage, required this.categoryName});
  static List<CategoryModel> categoryList = [
    CategoryModel(categoryImage: AppAssets.fashion, categoryName: 'Fashion'),
    CategoryModel(
      categoryImage: AppAssets.furniture,
      categoryName: 'Furniture',
    ),
    CategoryModel(categoryImage: AppAssets.toys, categoryName: 'Toys'),
    CategoryModel(
      categoryImage: AppAssets.electronics,
      categoryName: 'Electronics',
    ),
  ];
}
