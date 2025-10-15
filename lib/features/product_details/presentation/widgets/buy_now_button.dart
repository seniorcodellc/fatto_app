import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/app_colors.dart';
class BuyNowButton extends StatelessWidget {
  const BuyNowButton({super.key, this.onTap});

  final VoidCallbackAction? onTap ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){},
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.primaryColor,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 52.w),
          child: Text(
            'Buy Now',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14.sp,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
