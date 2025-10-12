import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class CategoriesListTitles extends StatelessWidget {
  const CategoriesListTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Categories", style: AppStyles.font18Black),
        Text("SEE ALL", style: AppStyles.font10PrimaryColor),
      ],
    );
  }
}
