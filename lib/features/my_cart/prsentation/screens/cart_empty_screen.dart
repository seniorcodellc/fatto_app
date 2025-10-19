import 'package:fatto/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/cart_empty_widget.dart';

class CartEmptyScreen extends StatelessWidget {
  const CartEmptyScreen({super.key});

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
              title: 'Your cart is empty',
              subTitle:
              'Looks like you have not added anything in your cart. Go ahead and explore top categories.',
              imagePath: AppAssets.cartEmpty,
            ),
            CustomButton(buttonText: 'Explore Categories', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
