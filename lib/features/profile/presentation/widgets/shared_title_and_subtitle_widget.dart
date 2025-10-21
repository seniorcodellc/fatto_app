import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class SharedTitleAndSubtitleWidget extends StatelessWidget {
  const SharedTitleAndSubtitleWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.font24White.copyWith(
              color: AppColors.fontTitleColor,
            ),
          ),
          SizedBox(height: 6),
          Text(
            subtitle,
            style: AppStyles.font14Black.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.fontSubtitleColor,
            ),
          ),
        ],
      ),
    );
  }
}
