import 'package:fatto/features/my_cart/prsentation/screens/cart_empty_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_textfield.dart';

class MyCartBottomSheet extends StatelessWidget {
  const MyCartBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w),
              child: Text('Voucher Code', style: AppStyles.font16Black),
            ),
            SizedBox(height: 28.0.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: CustomTextField(
                hintText: 'Enter Voucher Code',
                isPassword: false,
              ),
            ),
            SizedBox(height: 10.0.h),
            CustomButton(buttonText: "Apply", onTap: () {Get.to(CartEmptyScreen());}),
          ],
        ),
      ),
    );
  }
}
