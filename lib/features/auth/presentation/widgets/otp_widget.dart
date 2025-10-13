import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class OtpWidget extends StatelessWidget {
  final Function(String) onCompleted;
  final Function(String)? onChanged;

  const OtpWidget({
    super.key,
    required this.onCompleted,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.0.w),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PinCodeTextField(
          appContext: context,
          length: 6,
          autoFocus: true,
          obscureText: false,
          animationType: AnimationType.fade,
          keyboardType: TextInputType.number,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(12.r),
            fieldHeight:54.h,
            fieldWidth: 52.w,
            fieldOuterPadding: EdgeInsets.symmetric(horizontal: 6.w),
            activeFillColor: Colors.white,
            selectedFillColor: AppColors.fontWhiteColor,
            inactiveFillColor: Colors.white,
            activeColor: AppColors.primaryColor,
            selectedColor: AppColors.primaryColor,
            inactiveColor: AppColors.primaryColor,
          ),
          animationDuration: const Duration(milliseconds: 300),
          enableActiveFill: true,
          onChanged: onChanged ?? (value) {},
          onCompleted: onCompleted,
        ),
      ),
    );
  }
}