import 'package:fatto/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/app_colors.dart';
class SetPasswordSuccessfullyWidget extends StatelessWidget {
  const SetPasswordSuccessfullyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(32.r),
          ),
          child:
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 44.0.w, vertical: 55.0.h),
                child: Center(child: Image.asset(AppAssets.successfully)),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 44.w),
          child: Text('New password set successfully', textAlign: TextAlign.center, style: GoogleFonts.plusJakartaSans(fontSize: 24.sp, fontWeight: FontWeight.bold, color: AppColors.fontTitleColor,),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 26.w, top: 16.h,bottom: 28.h,right: 26.w),
          child: Text('Congratulations! Your password has been set successfully. Please proceed to the login screen to verify your account.', textAlign: TextAlign.center, style: GoogleFonts.plusJakartaSans(fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.fontSubtitleColor,
          ),
          ),
        ),
      ],
    );
  }
}
