import 'package:fatto/features/profile/data/static/policy_terms_conditions_faqs_static.dart';
import 'package:fatto/features/profile/presentation/widgets/shared_title_and_subtitle_widget.dart';
import 'package:fatto/features/profile/presentation/widgets/terms_and_conditions_list.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class TermsAndConditionsBody extends StatelessWidget {
  const TermsAndConditionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SharedTitleAndSubtitleWidget(
            title: 'Terms & Conditions',
            subtitle:
                'Welcome to QuickMart! These Terms and Conditions ("Terms") govern your use of our e-commerce app. By accessing or using QuickMart, you agree to be bound by these Terms. Please read them carefully before proceeding.',
          ),
          SizedBox(height: 20),
          TermsAndConditionsList(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              PolicyTermsConditionsStatic
                  .termsAndConditionsList[10]
                  .description!,
              style: AppStyles.font14Black.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.fontSubtitleColor,
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
    ;
  }
}
