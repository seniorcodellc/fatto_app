import '../../../../core/utils/app_assets.dart';
import '../models/category_model.dart';

class ModelCategoriesList {
  static List<CategoryModel> categoryList = [
    CategoryModel(
      categoryImage: AppAssets.fashion,
      categoryName: 'Fashion',
      routeName: 'fashion',
    ),
    CategoryModel(
      categoryImage: AppAssets.electronics,
      categoryName: 'Electronics',
      routeName: 'Electronics',
    ),
    CategoryModel(
      categoryImage: AppAssets.furniture,
      categoryName: 'Furniture',
      routeName: 'furniture',
    ),
    CategoryModel(
      categoryImage: AppAssets.toys,
      categoryName: 'Toys',
      routeName: 'toys',
    ),
    CategoryModel(
      categoryImage: AppAssets.homeDecor,
      categoryName: 'Home Decor',
      routeName: 'home decor',
    ),
    CategoryModel(
      categoryImage: AppAssets.macrameWeaving,
      categoryName: 'Macrame & Weaving',
      routeName: 'macrame&weaving',
    ),
    CategoryModel(
      categoryImage: AppAssets.handmadeSkincare,
      categoryName: 'Handmade Skincare',
      routeName: 'handmade skincare',
    ),
    CategoryModel(
      categoryImage: AppAssets.handmadeGifts,
      categoryName: 'Handmade Gifts',
      routeName: 'handmade gifts',
    ),
    CategoryModel(
      categoryImage: AppAssets.potteryCeramics,
      categoryName: 'Pottery Ceramics',
      routeName: 'pottery ceramics',
    ),
    CategoryModel(
      categoryImage: AppAssets.artPaintings,
      categoryName: 'Art Paintings',
      routeName: 'art paintings',
    ),
  ];
}
