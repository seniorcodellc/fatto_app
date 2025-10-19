import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';
import 'custom_textfield.dart';
class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({
    super.key,
    required this.name,
    required this.hintText,
    this.isPassword = false,
  });

  final String name;
  final String hintText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: AppColors.fontTitleColor,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 8.0.h),
          CustomTextField(
            hintText: hintText,
            isPassword: isPassword,
          ),
        ],
      ),
    );
  }
}