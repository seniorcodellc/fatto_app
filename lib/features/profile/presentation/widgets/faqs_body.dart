import 'package:fatto/features/profile/presentation/widgets/fasqs_help_center.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/static/policy_terms_conditions_faqs_static.dart';
import 'faqs_list.dart';

class FAQsBody extends StatelessWidget {
  const FAQsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FAQsList(),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(height: 45, child: FAQsHelpCenter()),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
