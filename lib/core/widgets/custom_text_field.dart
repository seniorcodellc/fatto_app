import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
  });

  final TextEditingController controller = TextEditingController();
  final String hintText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        style: GoogleFonts.plusJakartaSans(
          color: AppColors.fontTitleColor,
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.plusJakartaSans(
            color: AppColors.fontHintColor,
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 24.0.h, horizontal: 16.0.w,),
          suffixIcon: isPassword
              ? Padding(
            padding: EdgeInsets.only(right: 18.0.w),
            child: SvgPicture.asset(
              'assets/icons/password_eye_icon.svg',
            ),
          )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 1.0.w,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 1.0.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 1.0.w,
            ),
          ),
        ),
      ),
    );
  }
}