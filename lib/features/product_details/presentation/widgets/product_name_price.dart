import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/app_colors.dart';
class ProductNamePrice extends StatelessWidget {
  const ProductNamePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.0.w,vertical:12.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Loop Silicone Strong\nMagnetic Watch',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.fontTitleColor,
              letterSpacing: 0.25,
            ),
          ),
          Column(
            children: [
              Text(
                '\$15.25',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.fontTitleColor,
                  letterSpacing: 0.25,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                '\$ 20.00',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.fontSubtitleColor,
                  letterSpacing: 0.25,
                ),
              ),

            ],
          )
        ],
      ),
    )
    ;
  }
}
