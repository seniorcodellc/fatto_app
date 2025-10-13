import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class PrivacyPolicyText extends StatelessWidget {
  const PrivacyPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.0),
        child: RichText(
          text: TextSpan(
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.fontTitleColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            children: [
              const TextSpan(
                text: 'By login , you agree to our ',
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColors.primaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextSpan(
                text: ' and ',
              ),
              TextSpan(
                text: 'Terms & \n''                                                      Conditions.',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColors.primaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}