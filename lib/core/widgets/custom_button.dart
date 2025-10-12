import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onTap;
  final Color color ;

  const CustomButton(  {
    super.key,
    required this.buttonText,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0.w),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18.0.h),
            child: Center(
              child: Text(
                buttonText,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
    );
  }
}
