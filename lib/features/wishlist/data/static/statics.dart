import 'package:fatto/core/utils/app_assets.dart';

import '../models/wishlist_item_model.dart';

class WishlistStatics {
  static const List<WishlistModel> wishlistData = [
    WishlistModel(
      imagePath: AppAssets.handmadeDresses,
      name: 'Loop Silicone Strong Magnetic Watch',
      price: '\$15.25',
      salePrice: '\$20.00',
      icon: AppAssets.tickFilled,
    ),
    WishlistModel(
      imagePath: AppAssets.beltsWallets,
      name: 'M6 Smart watch IP67 Waterproof',
      price: '\$15.25',
      salePrice: '\$20.00',
      icon: AppAssets.tickFilled,
    ),

  ];
}
