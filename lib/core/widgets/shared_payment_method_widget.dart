import 'package:fatto/core/widgets/custom_button.dart';
import 'package:fatto/core/widgets/payment_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/profile/presentation/widgets/shared_text_star.dart';
import 'custom_textfield.dart';

class SharedPaymentMethodWidget extends StatelessWidget {
  const SharedPaymentMethodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
           PaymentButtonWidget(),
           SharedTextStar(text: "Card Holder Name"),
           CustomTextField(hintText: "Enter card holder name"),
           SharedTextStar(text: "Card Number"),
           CustomTextField(hintText: "4111 1111 1111 1111"),
          Row(
            children: [
              Expanded(child: Column(
                  children: [
                    SharedTextStar(text: "Expiration"),
                    CustomTextField(hintText: "MM/YY",),
                  ],
                ),),
              SizedBox(width: 8.w),
              Expanded(child: Column(
                children: [
                  SharedTextStar(text: "CVV"),
                  CustomTextField(hintText: "123",),
                ],
              ),),
            ],
          ),

        ],
      ),
    );
  }
}