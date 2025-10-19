import 'package:flutter/material.dart';
import '../../../wishlist/data/static/statics.dart';
import '../../../wishlist/presentation/widgets/wishlist_item.dart';
import 'order_info.dart';
class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: List.generate(WishlistStatics.wishlistData.length, (index) {
            final model = WishlistStatics.wishlistData[index];
            return WishlistItem(wishlistModel: model, isLiked: true);
          }),
        ),
         SizedBox(height: 150,),
         OrderInfo(),
      ],
    );
  }
}
