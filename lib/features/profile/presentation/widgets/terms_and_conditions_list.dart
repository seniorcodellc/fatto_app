import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/static/policy_terms_conditions_faqs_static.dart';

class TermsAndConditionsList extends StatelessWidget {
  const TermsAndConditionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: List.generate(
          PolicyTermsConditionsStatic.termsAndConditionsList.length - 1,
          (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    PolicyTermsConditionsStatic
                        .termsAndConditionsList[index]
                        .title!,
                    style: AppStyles.font14Black,
                  ),
                  SizedBox(height: 8),
                  Text(
                    PolicyTermsConditionsStatic
                        .termsAndConditionsList[index]
                        .description!,
                    style: AppStyles.font14Black.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.fontSubtitleColor,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
