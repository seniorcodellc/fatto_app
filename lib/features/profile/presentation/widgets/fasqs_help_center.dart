import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/static/policy_terms_conditions_faqs_static.dart';

class FAQsHelpCenter extends StatelessWidget {
  const FAQsHelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              PolicyTermsConditionsStatic.fagsList[5].description!,
              style: AppStyles.font12Black.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.fontSubtitleColor,
              ),
            ),
            Text(
              PolicyTermsConditionsStatic.fagsList[6].description!,
              style: AppStyles.font12Black.copyWith(
                fontWeight: FontWeight.w400,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Text(
          PolicyTermsConditionsStatic.fagsList[7].description!,
          style: AppStyles.font12Black.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.fontSubtitleColor,
          ),
        ),
      ],
    );
  }
}
