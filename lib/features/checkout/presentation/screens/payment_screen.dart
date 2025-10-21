import 'package:fatto/core/widgets/shared_payment_method_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../profile/presentation/widgets/custom_shared_profile_app_bar.dart';
import '../widgets/shipping_icon_row.dart';
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});
  static final route = "payment_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSharedProfileAppBar(title: ' Checkout '),
      backgroundColor: AppColors.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ShippingIconRow(),
                SharedPaymentMethodWidget(),
                SizedBox(height: 200,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomButton(buttonText: 'Continue', onTap: () {}),
                ),
              ],
            ),
          )
        ],

      ),
    );
  }
}
