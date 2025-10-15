import 'package:fatto/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../home/data/static/model_categories_list.dart';
import '../../../home/presentation/widgets/category_card.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      childAspectRatio: 1.5,
      children: List.generate(ModelCategoriesList.categoryList.length, (index) {
        final model = ModelCategoriesList.categoryList[index];
        return CategoryCard(
          categoryModel: model,
          textStyle: AppStyles.font14Black,
          width: 150,
          height: 38,
        );
      }),
    );
  }
}
