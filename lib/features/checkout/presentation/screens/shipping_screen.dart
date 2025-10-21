import 'package:fatto/core/widgets/shared_shipping_address_widget.dart';
import 'package:fatto/features/profile/presentation/widgets/custom_shared_profile_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/h_line.dart';
import '../widgets/shipping_icon_row.dart';
class ShippingScreen extends StatelessWidget {
  const ShippingScreen({super.key});
  static final route = "shipping_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSharedProfileAppBar(title: ' Checkout '),
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ShippingIconRow(),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: SharedShippingAddressWidget(),
            )
          ],
        ),
      ),
    );
  }
}
