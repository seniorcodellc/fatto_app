import 'package:fatto/features/profile/presentation/widgets/shared_title_and_subtitle_widget.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyBody extends StatelessWidget {
  const PrivacyPolicyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SharedTitleAndSubtitleWidget(
          title: 'Our Policy',
          subtitle:
              'At QuickMart, we are committed to protecting \' the privacy and security of our users \' personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard the information obtained through our e-commerce app. By using QuickMart, you consent to the practices described in this policy.',
        ),
      ],
    );
  }
}
