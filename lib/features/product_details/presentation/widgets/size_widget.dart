import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/static/static.dart';
class SizeWidget extends StatelessWidget {
  const SizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical:12.h),
            child: Text(
              'Size ',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.fontTitleColor,
                letterSpacing: 0.5,
              ),
            ),
          ),
          SizedBox(
            height: 45.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ProductStatics.size.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 2.w),
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColors.bgColor,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: AppColors.borderColor),
                ),
                child: Center(
                  child: Text(
                    ProductStatics.size[index],
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.fontTitleColor,
                      letterSpacing: 0.5,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
