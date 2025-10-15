import 'package:fatto/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/app_colors.dart';
class QuantityWidget extends StatelessWidget {
  const QuantityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 6.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Text(
              'Quantity: ',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.fontTitleColor,
                letterSpacing: 0.5,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                color: AppColors.borderColor,
                width: 2.0
              )
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 6.0.h,horizontal: 12.0.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(AppAssets.iconsMinus),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                    child: Text('0', style: GoogleFonts.plusJakartaSans(fontSize: 16.sp, fontWeight: FontWeight.w600, color: AppColors.fontTitleColor, letterSpacing: 0.25,),
                    ),
                  ),
                  SvgPicture.asset(AppAssets.iconsAdd,color: AppColors.fontTitleColor,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
