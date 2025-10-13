import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/utils/app_colors.dart';
class SignupText extends StatelessWidget {
  const SignupText({super.key, required this.title, required this.subTitle, required this.coloredText});

  final String title;
  final String subTitle;
  final String coloredText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.bold,
              fontSize: 24.sp,
              color: AppColors.fontTitleColor,
            ),
          ),
          SizedBox(height: 8.h,),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: subTitle,
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: AppColors.fontSubtitleColor,
                  ),
                ),
                TextSpan(
                  text: coloredText,
                  style:  GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}