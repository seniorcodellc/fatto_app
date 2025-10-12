import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
class OnboardingMainWidget extends StatelessWidget {
  const OnboardingMainWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.path,
  });

  final String title;
  final String subTitle;
  final String path;

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
                padding: const EdgeInsets.only(right: 18.0, top: 25.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text('Skip for now', style: GoogleFonts.plusJakartaSans(color: AppColors.primaryColor, fontWeight: FontWeight.w500, fontSize: 14.sp, letterSpacing: 0.5,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44.0, vertical: 70.0),
                child: Image.asset(path),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 44.w),
          child: Text(title, textAlign: TextAlign.center, style: GoogleFonts.plusJakartaSans(fontSize: 24.sp, fontWeight: FontWeight.bold, color: AppColors.fontTitleColor,),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 26.w, top: 16.h,bottom: 24.h,right: 26.w),
          child: Text(subTitle, textAlign: TextAlign.center, style: GoogleFonts.plusJakartaSans(fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.fontSubtitleColor,
            ),
          ),
        ),
      ],
    );
  }
}