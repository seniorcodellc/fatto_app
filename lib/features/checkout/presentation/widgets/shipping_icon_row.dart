import 'package:fatto/core/utils/app_assets.dart';
import 'package:fatto/core/widgets/h_line.dart';
import 'package:flutter/material.dart';

import 'icon_item.dart';
class ShippingIconRow extends StatelessWidget {
  const ShippingIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconItem(icon: AppAssets.iconsShippingFilled, name: 'Shipping', isEnabled: true,),
        HLine(width: 48,),
        IconItem(icon: AppAssets.iconsPaymentFilled, name: 'Payment', isEnabled: true,),
        HLine(width: 48,),
        IconItem(icon: AppAssets.iconsReview, name: 'Review', isEnabled: false,),
      ],
    );
  }
}
