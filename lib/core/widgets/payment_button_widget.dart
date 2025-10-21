import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/checkout/presentation/widgets/payment_buttons.dart';
import '../utils/app_assets.dart';

class PaymentButtonWidget extends StatelessWidget {
  const PaymentButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 8.0.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentButtons(path: AppAssets.iconsPaypal),
          SizedBox(width: 8),
          PaymentButtons(path: AppAssets.iconsGPay),
        ],
      ),
    );
  }
}
