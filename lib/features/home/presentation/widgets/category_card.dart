import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderColor, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(categoryModel.categoryImage),
          Text(
            categoryModel.categoryName,
            style: AppStyles.font10PrimaryColor.copyWith(
              color: AppColors.fontTitleColor,
            ),
          ),
        ],
      ),
    );
  }
}
