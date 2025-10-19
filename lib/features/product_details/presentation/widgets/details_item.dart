import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/features/product_details/presentation/widgets/buy_now_button.dart';
import 'package:fatto/features/product_details/presentation/widgets/product_details_button.dart';
import 'package:fatto/features/product_details/presentation/widgets/product_details_description.dart';
import 'package:fatto/features/product_details/presentation/widgets/product_name_price.dart';
import 'package:fatto/features/product_details/presentation/widgets/rating_stars_widget.dart';
import 'package:flutter/material.dart';
import 'add_to_cart_buttons.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 24.0),
            child: Row(
              children: [
                ProductDetailsButton(buttonText: 'Top Rated',color: AppColors.blue),
                SizedBox(width: 6,),
                ProductDetailsButton(buttonText: 'Free Shipping',color: AppColors.primaryColor),
              ],
            ),
          ),
          ProductNamePrice(),
          RatingStarsWidget(),
          ProductDetailsDescription(),
          SizedBox(height: 45,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BuyNowButton(borderColor: AppColors.primaryColor, ),
                AddToCartButtons( ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
