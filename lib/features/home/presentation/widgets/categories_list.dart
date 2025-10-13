import 'package:fatto/features/home/data/models/category_model.dart';
import 'package:fatto/features/home/presentation/widgets/shared_list_titles.dart';
import 'package:flutter/material.dart';

import 'category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SharedListTitles(title: "Categories"),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(CategoryModel.categoryList.length, (index) {
            final categoryModel = CategoryModel.categoryList[index];
            return CategoryCard(categoryModel: categoryModel);
          }),
        ),
      ],
    );
  }
}
