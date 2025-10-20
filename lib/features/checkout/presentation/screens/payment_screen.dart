import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/h_line.dart';
import '../../../../core/widgets/verification_appBar.dart';
import '../widgets/shipping_icon_row.dart';
class ShippingScreen extends StatelessWidget {
  const ShippingScreen({super.key});
  static final route = "payment_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VerificationAppbar(title: ' Checkout ',),
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HLine(thickness: 3.0,),
            SizedBox(height: 12,),
            ShippingIconRow(),
          ],
        ),

      ),
    );
  }
}
