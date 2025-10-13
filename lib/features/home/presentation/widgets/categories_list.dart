import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/features/home/presentation/widgets/categories_list_titles.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CategoriesListTitles(),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("Fashion"),
            ),
          ),
        ],
      ),
    );
  }
}
