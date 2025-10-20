import 'package:fatto/features/profile/presentation/widgets/custom_shared_profile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/utils/app_colors.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});
  static const routeName = 'payment_method_screen';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.primaryColor),
    );
    return Scaffold(appBar: CustomSharedProfileAppBar(title: "Payment Method"));
  }
}
