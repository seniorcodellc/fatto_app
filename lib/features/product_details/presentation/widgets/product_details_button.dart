import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ProductDetailsButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  const ProductDetailsButton(  {
    super.key,
    required this.buttonText,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 6.0.h,horizontal: 6.0.w),
          child: Text(
            buttonText,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 10.sp,
              color: AppColors.fontWhiteColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );

  }
}
