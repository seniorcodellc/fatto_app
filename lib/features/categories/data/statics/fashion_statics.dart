import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/features/categories/data/models/fashion_model.dart';

class FashionStatics{

  static List<FashionModel> fashionList = [
   FashionModel(productImage: AppAssets.clothing, productName: 'Clothing'),
   FashionModel(productImage: AppAssets.crochetKnitted, productName: 'Crochet & Knitted Wear'),
   FashionModel(productImage: AppAssets.embroideredClothing, productName: 'Embroidered Clothing'),
   FashionModel(productImage: AppAssets.handmadeDresses, productName: 'Handmade Dresses'),
   FashionModel(productImage: AppAssets.handmadeBags, productName: 'Handmade Bags'),
   FashionModel(productImage: AppAssets.beltsWallets, productName: 'Belts & Wallets'),
   FashionModel(productImage: AppAssets.belts, productName: 'Handmade Belts'),
   FashionModel(productImage: AppAssets.jewelery, productName: 'Jewelery'),
    FashionModel(productImage: AppAssets.belts, productName: 'Handmade Belts'),
    FashionModel(productImage: AppAssets.jewelery, productName: 'Jewelery'),
  ];

}