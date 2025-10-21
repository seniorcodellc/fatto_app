import 'package:fatto/features/profile/presentation/widgets/custom_shared_profile_app_bar.dart';
import 'package:fatto/features/profile/presentation/widgets/privacy_policy_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/utils/app_colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});
  static const routeName = 'privacy_policy_screen';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.fontWhiteColor),
    );
    return Scaffold(
      appBar: CustomSharedProfileAppBar(title: "Privacy Policy"),
      body: PrivacyPolicyBody(),
    );
  }
}
