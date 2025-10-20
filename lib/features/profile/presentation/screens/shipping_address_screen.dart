import 'package:fatto/features/profile/presentation/widgets/custom_shared_profile_app_bar.dart';
import 'package:fatto/features/profile/presentation/widgets/shipping_address_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/utils/app_colors.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});
  static String routeName = 'shipping_address_screen';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.fontWhiteColor),
    );
    return Scaffold(
      appBar: CustomSharedProfileAppBar(title: "Shipping Address"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: CustomScrollView(
          slivers: [SliverToBoxAdapter(child: ShippingAddressBody())],
        ),
      ),
    );
  }
}
