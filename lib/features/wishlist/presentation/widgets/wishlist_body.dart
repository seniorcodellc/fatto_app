import 'package:fatto/features/wishlist/presentation/widgets/wishlist_item.dart';
import 'package:flutter/material.dart';

import '../../data/static/statics.dart';
class WishlistBody extends StatelessWidget {
  const WishlistBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(WishlistStatics.wishlistData.length, (index) {
        final model = WishlistStatics.wishlistData[index];
        return WishlistItem(wishlistModel: model, isLiked: false);
      }),
    );
  }
}