import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PaymentButtons extends StatelessWidget {
  const PaymentButtons({super.key, required this.path});
 final String path;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 65,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 24.0.h,horizontal: 50.0.w),
          child: SvgPicture.asset(path,),
        ),
      ),
    );
  }
}
