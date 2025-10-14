import 'package:fatto/features/home/presentation/widgets/shared_list_titles.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/static/model_categories_list.dart';
import 'category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SharedListTitles(
          title: "Categories",
          onTap: () {
            Navigator.pushNamed(context, "categories_screen");
          },
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) {
            final categoryModel = ModelCategoriesList.categoryList[index];
            return CategoryCard(
              width: 50,
              height: 25,
              categoryModel: categoryModel,
              textStyle: AppStyles.font10PrimaryColor.copyWith(
                color: AppColors.fontTitleColor,
              ),
            );
          }),
        ),
      ],
    );
  }
}
