import 'package:fatto/features/home/presentation/widgets/offered_products_dots.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/models/offered_product_model.dart';

class OfferedProductsItem extends StatelessWidget {
  const OfferedProductsItem({super.key, required this.model});
  final OfferedProductsModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(model.imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 155),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 59,
                height: 24,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    model.salePercentage,
                    style: AppStyles.font10PrimaryColor.copyWith(
                      color: AppColors.fontWhiteColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text('On Handmade', style: AppStyles.font12White),
              Text('Exclusive Sales', style: AppStyles.font24White),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 265, bottom: 12),
          child: OfferedProductsDots(),
        ),
      ],
    );
  }
}
