import 'package:fatto/features/profile/presentation/widgets/custom_shared_profile_app_bar.dart';
import 'package:fatto/features/profile/presentation/widgets/terms_and_conditions_body.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});
  static const routeName = 'terms_and_conditions_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSharedProfileAppBar(title: "Terms & Conditions"),
      body: TermsAndConditionsBody(),
    );
  }
}
