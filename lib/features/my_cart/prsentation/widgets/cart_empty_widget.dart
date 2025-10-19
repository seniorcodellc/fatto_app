import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/app_colors.dart';
class CartEmptyWidget extends StatelessWidget {
  const CartEmptyWidget({super.key, required this.title, required this.subTitle, required this.imagePath});
  final String title ;
  final String subTitle;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(imagePath),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.w),
          child: Text(title, textAlign: TextAlign.center, style: GoogleFonts.plusJakartaSans(fontSize: 24.sp, fontWeight: FontWeight.bold, color: AppColors.fontTitleColor,),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 26.w,bottom: 28.h,right: 26.w),
          child: Text(subTitle, textAlign: TextAlign.center, style: GoogleFonts.plusJakartaSans(fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.fontSubtitleColor,
          ),
          ),
        ),
      ],
    );
  }
}
