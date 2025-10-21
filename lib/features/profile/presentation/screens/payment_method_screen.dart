import 'package:fatto/core/widgets/custom_button.dart';
import 'package:fatto/core/widgets/shared_payment_method_widget.dart';
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
      const SystemUiOverlayStyle(statusBarColor: AppColors.fontWhiteColor),
    );
    return Scaffold(
      appBar: CustomSharedProfileAppBar(title: "Payment Method"),
      body: Column(
        children: [
          SharedPaymentMethodWidget(),
          SizedBox(height: 220),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(buttonText: "Save", onTap: () {}),
          ),
        ],
      ),
    );
  }
}
