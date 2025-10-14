import '../../../../core/utils/app_assets.dart';
import '../models/category_model.dart';

class ModelCategoriesList {
  static List<CategoryModel> categoryList = [
    CategoryModel(categoryImage: AppAssets.fashion, categoryName: 'Fashion'),
    CategoryModel(
      categoryImage: AppAssets.electronics,
      categoryName: 'Electronics',
    ),
    CategoryModel(
      categoryImage: AppAssets.furniture,
      categoryName: 'Furniture',
    ),
    CategoryModel(categoryImage: AppAssets.toys, categoryName: 'Toys'),
    CategoryModel(
      categoryImage: AppAssets.homeDecor,
      categoryName: 'Home Decor',
    ),
    CategoryModel(
      categoryImage: AppAssets.macrameWeaving,
      categoryName: 'Macrame & Weaving',
    ),
    CategoryModel(
      categoryImage: AppAssets.handmadeSkincare,
      categoryName: 'Handmade Skincare',
    ),
    CategoryModel(
      categoryImage: AppAssets.handmadeGifts,
      categoryName: 'Handmade Gifts',
    ),
    CategoryModel(
      categoryImage: AppAssets.potteryCeramics,
      categoryName: 'Pottery Ceramics',
    ),
    CategoryModel(
      categoryImage: AppAssets.artPaintings,
      categoryName: 'Art Paintings',
    ),
  ];
}
