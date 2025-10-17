import 'package:fatto/core/utils/app_colors.dart';
import 'package:fatto/features/categories/presentation/widgets/recent_search_list.dart';
import 'package:fatto/features/categories/presentation/widgets/search_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextfield(),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
            bottom: 12,
          ),
          child: Text(
            "RECENT SEARCH",
            style: AppStyles.font12White.copyWith(
              color: AppColors.fontTitleColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        RecentSearchList(),
      ],
    );
  }
}
