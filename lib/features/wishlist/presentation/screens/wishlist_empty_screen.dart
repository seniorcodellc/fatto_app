import 'package:fatto/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../my_cart/prsentation/widgets/cart_empty_widget.dart';

class WishlistEmptyScreen extends StatelessWidget {
  const WishlistEmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            CartEmptyWidget(
              title: 'Your wishlist is empty',
              subTitle:
              'Tap heart button to start saving your favorite items.',
              imagePath: AppAssets.wishlistEmpty,
            ),
            CustomButton(buttonText: 'Explore Categories', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
