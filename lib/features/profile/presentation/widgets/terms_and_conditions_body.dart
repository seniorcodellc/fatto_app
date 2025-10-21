import 'package:fatto/features/profile/presentation/widgets/shared_title_and_subtitle_widget.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsBody extends StatelessWidget {
  const TermsAndConditionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SharedTitleAndSubtitleWidget(
          title: 'Terms & Conditions',
          subtitle:
              'Welcome to QuickMart! These Terms and Conditions ("Terms") govern your use of our e-commerce app. By accessing or using QuickMart, you agree to be bound by these Terms. Please read them carefully before proceeding.',
        ),
      ],
    );
    ;
  }
}
