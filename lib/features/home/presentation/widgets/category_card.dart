import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryModel,
    required this.textStyle,
    required this.width,
    required this.height,
  });
  final CategoryModel categoryModel;
  final TextStyle textStyle;
  final double width;
  final double height;
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Image.asset(
              categoryModel.categoryImage,
              width: width,
              height: height,
            ),
          ),
          Text(categoryModel.categoryName, style: textStyle),
        ],
      ),
    );
  }
}
